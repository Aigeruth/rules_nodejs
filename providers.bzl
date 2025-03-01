# Copyright 2017 The Bazel Authors. All rights reserved.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#    http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

"""Public providers, aspects and helper surface is re-exported here.

Users should not load files under "/internal"
"""

load(
    "//internal/providers:declaration_info.bzl",
    _DeclarationInfo = "DeclarationInfo",
    _provide_declarations = "provide_declarations",
)
load(
    "//internal/providers:js_providers.bzl",
    _JSEcmaScriptModuleInfo = "JSEcmaScriptModuleInfo",
    _JSNamedModuleInfo = "JSNamedModuleInfo",
    _js_ecma_script_module_info = "js_ecma_script_module_info",
    _js_named_module_info = "js_named_module_info",
    _transitive_js_ecma_script_module_info = "transitive_js_ecma_script_module_info",
)
load(
    "//internal/providers:node_runtime_deps_info.bzl",
    _NodeRuntimeDepsInfo = "NodeRuntimeDepsInfo",
    _run_node = "run_node",
)
load(
    "//internal/providers:npm_package_info.bzl",
    _NpmPackageInfo = "NpmPackageInfo",
    _node_modules_aspect = "node_modules_aspect",
)

provide_declarations = _provide_declarations
DeclarationInfo = _DeclarationInfo
JSNamedModuleInfo = _JSNamedModuleInfo
js_named_module_info = _js_named_module_info
JSEcmaScriptModuleInfo = _JSEcmaScriptModuleInfo
js_ecma_script_module_info = _js_ecma_script_module_info
transitive_js_ecma_script_module_info = _transitive_js_ecma_script_module_info
NpmPackageInfo = _NpmPackageInfo
node_modules_aspect = _node_modules_aspect

#Modelled after _GoContextData in rules_go/go/private/context.bzl
NodeContextInfo = provider(
    doc = "Provides data about the build context, like config_setting's",
    fields = ["stamp"],
)

# TODO: remove transitive_js_ecma_script_module_info alias before 1.0 release
NodeRuntimeDepsInfo = _NodeRuntimeDepsInfo
run_node = _run_node
