DROP TABLE IF EXISTS searchIndex;
CREATE TABLE searchIndex(id INTEGER PRIMARY KEY, name TEXT, type TEXT, path TEXT);
CREATE UNIQUE INDEX anchor ON searchIndex (name, type, path);

-- API
INSERT INTO searchIndex(name, type, path) VALUES ('accept', 'Function', 'api/basic_json/accept/index.html');
INSERT INTO searchIndex(name, type, path) VALUES ('adl_serializer', 'Class', 'api/adl_serializer/index.html');
INSERT INTO searchIndex(name, type, path) VALUES ('array', 'Function', 'api/basic_json/array/index.html');
INSERT INTO searchIndex(name, type, path) VALUES ('array_t', 'Type', 'api/basic_json/array_t/index.html');
INSERT INTO searchIndex(name, type, path) VALUES ('at', 'Method', 'api/basic_json/at/index.html');
INSERT INTO searchIndex(name, type, path) VALUES ('back', 'Method', 'api/basic_json/back/index.html');
INSERT INTO searchIndex(name, type, path) VALUES ('basic_json', 'Class', 'api/basic_json/index.html');
INSERT INTO searchIndex(name, type, path) VALUES ('basic_json', 'Constructor', 'api/basic_json/basic_json/index.html');
INSERT INTO searchIndex(name, type, path) VALUES ('begin', 'Method', 'api/basic_json/begin/index.html');
INSERT INTO searchIndex(name, type, path) VALUES ('binary', 'Function', 'api/basic_json/binary/index.html');
INSERT INTO searchIndex(name, type, path) VALUES ('binary_t', 'Type', 'api/basic_json/binary_t/index.html');
INSERT INTO searchIndex(name, type, path) VALUES ('boolean_t', 'Type', 'api/basic_json/boolean_t/index.html');
INSERT INTO searchIndex(name, type, path) VALUES ('cbegin', 'Method', 'api/basic_json/cbegin/index.html');
INSERT INTO searchIndex(name, type, path) VALUES ('cbor_tag_handler_t', 'Enum', 'api/basic_json/cbor_tag_handler_t/index.html');
INSERT INTO searchIndex(name, type, path) VALUES ('cend', 'Method', 'api/basic_json/cend/index.html');
INSERT INTO searchIndex(name, type, path) VALUES ('clear', 'Method', 'api/basic_json/clear/index.html');
INSERT INTO searchIndex(name, type, path) VALUES ('contains', 'Method', 'api/basic_json/contains/index.html');
INSERT INTO searchIndex(name, type, path) VALUES ('count', 'Method', 'api/basic_json/count/index.html');
INSERT INTO searchIndex(name, type, path) VALUES ('crbegin', 'Method', 'api/basic_json/crbegin/index.html');
INSERT INTO searchIndex(name, type, path) VALUES ('crend', 'Method', 'api/basic_json/crend/index.html');
INSERT INTO searchIndex(name, type, path) VALUES ('diff', 'Function', 'api/basic_json/diff/index.html');
INSERT INTO searchIndex(name, type, path) VALUES ('dump', 'Method', 'api/basic_json/dump/index.html');
INSERT INTO searchIndex(name, type, path) VALUES ('emplace', 'Method', 'api/basic_json/emplace/index.html');
INSERT INTO searchIndex(name, type, path) VALUES ('emplace_back', 'Method', 'api/basic_json/emplace_back/index.html');
INSERT INTO searchIndex(name, type, path) VALUES ('empty', 'Method', 'api/basic_json/empty/index.html');
INSERT INTO searchIndex(name, type, path) VALUES ('end', 'Method', 'api/basic_json/end/index.html');
INSERT INTO searchIndex(name, type, path) VALUES ('erase', 'Method', 'api/basic_json/erase/index.html');
INSERT INTO searchIndex(name, type, path) VALUES ('error_handler_t', 'Enum', 'api/basic_json/error_handler_t/index.html');
INSERT INTO searchIndex(name, type, path) VALUES ('exception', 'Class', 'api/basic_json/exception/index.html');
INSERT INTO searchIndex(name, type, path) VALUES ('find', 'Method', 'api/basic_json/find/index.html');
INSERT INTO searchIndex(name, type, path) VALUES ('flatten', 'Method', 'api/basic_json/flatten/index.html');
INSERT INTO searchIndex(name, type, path) VALUES ('from_bson', 'Function', 'api/basic_json/from_bson/index.html');
INSERT INTO searchIndex(name, type, path) VALUES ('from_cbor', 'Function', 'api/basic_json/from_cbor/index.html');
INSERT INTO searchIndex(name, type, path) VALUES ('from_msgpack', 'Function', 'api/basic_json/from_msgpack/index.html');
INSERT INTO searchIndex(name, type, path) VALUES ('from_ubjson', 'Function', 'api/basic_json/from_ubjson/index.html');
INSERT INTO searchIndex(name, type, path) VALUES ('front', 'Method', 'api/basic_json/front/index.html');
INSERT INTO searchIndex(name, type, path) VALUES ('get', 'Method', 'api/basic_json/get/index.html');
INSERT INTO searchIndex(name, type, path) VALUES ('get_allocator', 'Function', 'api/basic_json/get_allocator/index.html');
INSERT INTO searchIndex(name, type, path) VALUES ('get_binary', 'Method', 'api/basic_json/get_binary/index.html');
INSERT INTO searchIndex(name, type, path) VALUES ('get_ptr', 'Method', 'api/basic_json/get_ptr/index.html');
INSERT INTO searchIndex(name, type, path) VALUES ('get_ref', 'Method', 'api/basic_json/get_ref/index.html');
INSERT INTO searchIndex(name, type, path) VALUES ('get_to', 'Method', 'api/basic_json/get_to/index.html');
INSERT INTO searchIndex(name, type, path) VALUES ('input_format_t', 'Enum', 'api/basic_json/input_format_t/index.html');
INSERT INTO searchIndex(name, type, path) VALUES ('insert', 'Method', 'api/basic_json/insert/index.html');
INSERT INTO searchIndex(name, type, path) VALUES ('invalid_iterator', 'Class', 'api/basic_json/invalid_iterator/index.html');
INSERT INTO searchIndex(name, type, path) VALUES ('is_array', 'Method', 'api/basic_json/is_array/index.html');
INSERT INTO searchIndex(name, type, path) VALUES ('is_binary', 'Method', 'api/basic_json/is_binary/index.html');
INSERT INTO searchIndex(name, type, path) VALUES ('is_boolean', 'Method', 'api/basic_json/is_boolean/index.html');
INSERT INTO searchIndex(name, type, path) VALUES ('is_discarded', 'Method', 'api/basic_json/is_discarded/index.html');
INSERT INTO searchIndex(name, type, path) VALUES ('is_null', 'Method', 'api/basic_json/is_null/index.html');
INSERT INTO searchIndex(name, type, path) VALUES ('is_number', 'Method', 'api/basic_json/is_number/index.html');
INSERT INTO searchIndex(name, type, path) VALUES ('is_number_float', 'Method', 'api/basic_json/is_number_float/index.html');
INSERT INTO searchIndex(name, type, path) VALUES ('is_number_integer', 'Method', 'api/basic_json/is_number_integer/index.html');
INSERT INTO searchIndex(name, type, path) VALUES ('is_number_unsigned', 'Method', 'api/basic_json/is_number_unsigned/index.html');
INSERT INTO searchIndex(name, type, path) VALUES ('is_object', 'Method', 'api/basic_json/is_object/index.html');
INSERT INTO searchIndex(name, type, path) VALUES ('is_primitive', 'Method', 'api/basic_json/is_primitive/index.html');
INSERT INTO searchIndex(name, type, path) VALUES ('is_string', 'Method', 'api/basic_json/is_string/index.html');
INSERT INTO searchIndex(name, type, path) VALUES ('is_structured', 'Method', 'api/basic_json/is_structured/index.html');
INSERT INTO searchIndex(name, type, path) VALUES ('items', 'Method', 'api/basic_json/items/index.html');
INSERT INTO searchIndex(name, type, path) VALUES ('json', 'Class', 'api/json/index.html');
INSERT INTO searchIndex(name, type, path) VALUES ('json_pointer', 'Class', 'api/json_pointer/index.html');
INSERT INTO searchIndex(name, type, path) VALUES ('json_serializer', 'Type', 'api/basic_json/json_serializer/index.html');
INSERT INTO searchIndex(name, type, path) VALUES ('max_size', 'Method', 'api/basic_json/max_size/index.html');
INSERT INTO searchIndex(name, type, path) VALUES ('merge_patch', 'Method', 'api/basic_json/merge_patch/index.html');
INSERT INTO searchIndex(name, type, path) VALUES ('meta', 'Function', 'api/basic_json/meta/index.html');
INSERT INTO searchIndex(name, type, path) VALUES ('number_float_t', 'Type', 'api/basic_json/number_float_t/index.html');
INSERT INTO searchIndex(name, type, path) VALUES ('number_integer_t', 'Type', 'api/basic_json/number_integer_t/index.html');
INSERT INTO searchIndex(name, type, path) VALUES ('number_unsigned_t', 'Type', 'api/basic_json/number_unsigned_t/index.html');
INSERT INTO searchIndex(name, type, path) VALUES ('object', 'Function', 'api/basic_json/object/index.html');
INSERT INTO searchIndex(name, type, path) VALUES ('object_comparator_t', 'Type', 'api/basic_json/object_comparator_t/index.html');
INSERT INTO searchIndex(name, type, path) VALUES ('object_t', 'Type', 'api/basic_json/object_t/index.html');
INSERT INTO searchIndex(name, type, path) VALUES ('operator!=', 'Operator', 'api/basic_json/operator_ne/index.html');
INSERT INTO searchIndex(name, type, path) VALUES ('operator+=', 'Operator', 'api/basic_json/operator+=/index.html');
INSERT INTO searchIndex(name, type, path) VALUES ('operator=', 'Operator', 'api/basic_json/operator=/index.html');
INSERT INTO searchIndex(name, type, path) VALUES ('operator==', 'Operator', 'api/basic_json/operator_eq/index.html');
INSERT INTO searchIndex(name, type, path) VALUES ('operator<', 'Operator', 'api/basic_json/operator_lt/index.html');
INSERT INTO searchIndex(name, type, path) VALUES ('operator<=', 'Operator', 'api/basic_json/operator_le/index.html');
INSERT INTO searchIndex(name, type, path) VALUES ('operator>', 'Operator', 'api/basic_json/operator_gt/index.html');
INSERT INTO searchIndex(name, type, path) VALUES ('operator>=', 'Operator', 'api/basic_json/operator_ge/index.html');
INSERT INTO searchIndex(name, type, path) VALUES ('operator[]', 'Operator', 'api/basic_json/operator[]/index.html');
INSERT INTO searchIndex(name, type, path) VALUES ('operator""_json', 'Literal', 'api/basic_json/operator_literal_json/index.html');
INSERT INTO searchIndex(name, type, path) VALUES ('operator""_json_pointer', 'Literal', 'api/basic_json/operator_literal_json_pointer/index.html');
INSERT INTO searchIndex(name, type, path) VALUES ('operator ValueType', 'Operator', 'api/basic_json/operator_ValueType/index.html');
INSERT INTO searchIndex(name, type, path) VALUES ('operator value_t', 'Operator', 'api/basic_json/operator_value_t/index.html');
INSERT INTO searchIndex(name, type, path) VALUES ('ordered_json', 'Class', 'api/ordered_json/index.html');
INSERT INTO searchIndex(name, type, path) VALUES ('ordered_map', 'Class', 'api/ordered_map/index.html');
INSERT INTO searchIndex(name, type, path) VALUES ('out_of_range', 'Class', 'api/basic_json/out_of_range/index.html');
INSERT INTO searchIndex(name, type, path) VALUES ('other_error', 'Class', 'api/basic_json/other_error/index.html');
INSERT INTO searchIndex(name, type, path) VALUES ('parse', 'Function', 'api/basic_json/parse/index.html');
INSERT INTO searchIndex(name, type, path) VALUES ('parse_error', 'Class', 'api/basic_json/parse_error/index.html');
INSERT INTO searchIndex(name, type, path) VALUES ('parse_event_t', 'Enum', 'api/basic_json/parse_event_t/index.html');
INSERT INTO searchIndex(name, type, path) VALUES ('parser_callback_t', 'Type', 'api/basic_json/parser_callback_t/index.html');
INSERT INTO searchIndex(name, type, path) VALUES ('patch', 'Method', 'api/basic_json/patch/index.html');
INSERT INTO searchIndex(name, type, path) VALUES ('push_back', 'Method', 'api/basic_json/push_back/index.html');
INSERT INTO searchIndex(name, type, path) VALUES ('rbegin', 'Method', 'api/basic_json/rbegin/index.html');
INSERT INTO searchIndex(name, type, path) VALUES ('rend', 'Method', 'api/basic_json/rend/index.html');
INSERT INTO searchIndex(name, type, path) VALUES ('sax_parse', 'Function', 'api/basic_json/sax_parse/index.html');
INSERT INTO searchIndex(name, type, path) VALUES ('size', 'Method', 'api/basic_json/size/index.html');
INSERT INTO searchIndex(name, type, path) VALUES ('string_t', 'Type', 'api/basic_json/string_t/index.html');
INSERT INTO searchIndex(name, type, path) VALUES ('type', 'Method', 'api/basic_json/type/index.html');
INSERT INTO searchIndex(name, type, path) VALUES ('type_error', 'Class', 'api/basic_json/type_error/index.html');
INSERT INTO searchIndex(name, type, path) VALUES ('type_name', 'Method', 'api/basic_json/type_name/index.html');
INSERT INTO searchIndex(name, type, path) VALUES ('unflatten', 'Method', 'api/basic_json/unflatten/index.html');
INSERT INTO searchIndex(name, type, path) VALUES ('update', 'Method', 'api/basic_json/update/index.html');
INSERT INTO searchIndex(name, type, path) VALUES ('to_bson', 'Function', 'api/basic_json/to_bson/index.html');
INSERT INTO searchIndex(name, type, path) VALUES ('to_cbor', 'Function', 'api/basic_json/to_cbor/index.html');
INSERT INTO searchIndex(name, type, path) VALUES ('to_msgpack', 'Function', 'api/basic_json/to_msgpack/index.html');
INSERT INTO searchIndex(name, type, path) VALUES ('to_ubjson', 'Function', 'api/basic_json/to_ubjson/index.html');
INSERT INTO searchIndex(name, type, path) VALUES ('value', 'Method', 'api/basic_json/value/index.html');
INSERT INTO searchIndex(name, type, path) VALUES ('value_t', 'Enum', 'api/basic_json/value_t/index.html');
INSERT INTO searchIndex(name, type, path) VALUES ('~basic_json', 'Method', 'api/basic_json/~basic_json/index.html');

-- Features
INSERT INTO searchIndex(name, type, path) VALUES ('Binary Formats', 'Guide', 'features/binary_formats/index.html');
INSERT INTO searchIndex(name, type, path) VALUES ('BSON', 'Guide', 'features/binary_formats/bson/index.html');
INSERT INTO searchIndex(name, type, path) VALUES ('CBOR', 'Guide', 'features/binary_formats/cbor/index.html');
INSERT INTO searchIndex(name, type, path) VALUES ('MessagePack', 'Guide', 'features/binary_formats/messagepack/index.html');
INSERT INTO searchIndex(name, type, path) VALUES ('UBJSON', 'Guide', 'features/binary_formats/ubjson/index.html');
INSERT INTO searchIndex(name, type, path) VALUES ('Supported Macros', 'Guide', 'features/macros/index.html');
INSERT INTO searchIndex(name, type, path) VALUES ('Binary Values', 'Guide', 'features/binary_values/index.html');
INSERT INTO searchIndex(name, type, path) VALUES ('Comments', 'Guide', 'features/comments/index.html');
INSERT INTO searchIndex(name, type, path) VALUES ('Iterators', 'Guide', 'features/iterators/index.html');
INSERT INTO searchIndex(name, type, path) VALUES ('Types', 'Guide', 'features/types/index.html');
INSERT INTO searchIndex(name, type, path) VALUES ('Number Handling', 'Guide', 'features/types/number_handling/index.html');
INSERT INTO searchIndex(name, type, path) VALUES ('Element Access', 'Guide', 'features/element_access/index.html');
INSERT INTO searchIndex(name, type, path) VALUES ('JSON Pointer', 'Guide', 'features/json_pointer/index.html');
INSERT INTO searchIndex(name, type, path) VALUES ('JSON Patch and Diff', 'Guide', 'features/json_patch/index.html');
INSERT INTO searchIndex(name, type, path) VALUES ('JSON Merge Patch', 'Guide', 'features/merge_patch/index.html');
INSERT INTO searchIndex(name, type, path) VALUES ('Object Order', 'Guide', 'features/object_order/index.html');
INSERT INTO searchIndex(name, type, path) VALUES ('Parsing and Exceptions', 'Guide', 'features/parsing/parse_exceptions/index.html');
INSERT INTO searchIndex(name, type, path) VALUES ('Parser Callbacks', 'Guide', 'features/parsing/parser_callbacks/index.html');
INSERT INTO searchIndex(name, type, path) VALUES ('SAX Interface', 'Guide', 'features/parsing/sax_interface/index.html');

-- Macros
INSERT INTO searchIndex(name, type, path) VALUES ('JSON_ASSERT', 'Macro', 'features/macros/index.html#json_assertx');
INSERT INTO searchIndex(name, type, path) VALUES ('JSON_CATCH_USER', 'Macro', 'features/macros/index.html#json_catch_userexception');
INSERT INTO searchIndex(name, type, path) VALUES ('JSON_DIAGNOSTICS', 'Macro', 'features/macros/index.html#json_diagnostics');
INSERT INTO searchIndex(name, type, path) VALUES ('JSON_DISABLE_ENUM_SERIALIZATION', 'Macro', 'features/macros/index.html#json_disable_enum_serialization');
INSERT INTO searchIndex(name, type, path) VALUES ('JSON_HAS_CPP_11', 'Macro', 'features/macros/index.html#json_has_cpp_11-json_has_cpp_14-json_has_cpp_17-json_has_cpp_20');
INSERT INTO searchIndex(name, type, path) VALUES ('JSON_HAS_CPP_14', 'Macro', 'features/macros/index.html#json_has_cpp_11-json_has_cpp_14-json_has_cpp_17-json_has_cpp_20');
INSERT INTO searchIndex(name, type, path) VALUES ('JSON_HAS_CPP_17', 'Macro', 'features/macros/index.html#json_has_cpp_11-json_has_cpp_14-json_has_cpp_17-json_has_cpp_20');
INSERT INTO searchIndex(name, type, path) VALUES ('JSON_HAS_CPP_20', 'Macro', 'features/macros/index.html#json_has_cpp_11-json_has_cpp_14-json_has_cpp_17-json_has_cpp_20');
INSERT INTO searchIndex(name, type, path) VALUES ('JSON_NOEXCEPTION', 'Macro', 'features/macros/index.html#json_noexception');
INSERT INTO searchIndex(name, type, path) VALUES ('JSON_NO_IO', 'Macro', 'features/macros/index.html#json_no_io');
INSERT INTO searchIndex(name, type, path) VALUES ('JSON_SKIP_UNSUPPORTED_COMPILER_CHECK', 'Macro', 'features/macros/index.html#json_skip_unsupported_compiler_check');
INSERT INTO searchIndex(name, type, path) VALUES ('JSON_THROW_USER', 'Macro', 'features/macros/index.html#json_throw_userexception');
INSERT INTO searchIndex(name, type, path) VALUES ('JSON_TRY_USER', 'Macro', 'features/macros/index.html#json_try_user');
INSERT INTO searchIndex(name, type, path) VALUES ('JSON_USE_IMPLICIT_CONVERSIONS', 'Macro', 'features/macros/index.html#json_use_implicit_conversions');
INSERT INTO searchIndex(name, type, path) VALUES ('NLOHMANN_DEFINE_TYPE_INTRUSIVE', 'Macro', 'features/macros/index.html#nlohmann_define_type_intrusivetype-member');
INSERT INTO searchIndex(name, type, path) VALUES ('NLOHMANN_DEFINE_TYPE_NON_INTRUSIVE', 'Macro', 'features/macros/index.html#nlohmann_define_type_non_intrusivetype-member');
INSERT INTO searchIndex(name, type, path) VALUES ('NLOHMANN_JSON_SERIALIZE_ENUM', 'Macro', 'features/macros/index.html#nlohmann_json_serialize_enumtype');
