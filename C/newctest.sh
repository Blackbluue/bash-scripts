#!/bin/bash
lib_name="${1// /_}"
test_all="test/test-all.c"
test_suite_file="test/test-${lib_name}.c"

mkdir "test"
touch $test_all
suite_name="${lib_name}_test_suite"
cat > $test_all << EOM
#include <check.h>

Suite *${suite_name}(void);

int main(void)
{
	SRunner *sr = srunner_create(NULL);

	srunner_add_suite(sr, ${suite_name}());

	srunner_run_all(sr, CK_NORMAL);

	srunner_free(sr);
}
EOM

touch $test_suite_file
example_case="test_${lib_name}_example"
profile_case="test_${lib_name}_profile"
cat > $test_suite_file << EOM
#include <check.h>

#include "../${lib_name}.h"

START_TEST(${example_case})
{
	/* example test code here */
}
END_TEST

START_TEST(${profile_case})
{
	/* profile dependant test code here */
}
END_TEST

Suite *${suite_name}(void)
{
	Suite *s1 = suite_create("${lib_name^}");

	TCase *tc1 = tcase_create("TC 1");

	tcase_add_test(tc1, ${example_case});

	TCase *profile = tcase_create("TC Profile");
	tcase_set_tags(profile, "profile");
	tcase_set_timeout(profile, 10);
	tcase_add_test(profile, ${profile_case});

	suite_add_tcase(s1, tc1);
	suite_add_tcase(s1, profile);

	return s1;
}
EOM
