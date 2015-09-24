#include "fmt/fc01/mrg_archive.h"
#include "test_support/archive_support.h"
#include "test_support/catch.hh"
#include "test_support/file_support.h"

using namespace au;
using namespace au::fmt::fc01;

static void do_test(const std::string &input_path)
{
    std::vector<std::shared_ptr<File>> expected_files
    {
        tests::stub_file("123.txt", "123123123 123123123 321"_b),
        tests::stub_file("abc.txt", "abcdefghijklmnopqrstuvwxyz"_b),
    };

    MrgArchive archive;
    auto actual_files = tests::unpack_to_memory(input_path, archive);
    tests::compare_files(expected_files, actual_files, true);
}

TEST_CASE("FC01 MRG plain archives", "[fmt]")
{
    do_test("tests/fmt/fc01/files/mrg/plain.mrg");
}

TEST_CASE("FC01 MRG compressed archives", "[fmt]")
{
    do_test("tests/fmt/fc01/files/mrg/compressed.mrg");
}
