[1mdiff --git a/AEImageHub/ClientApp/package-lock.json b/AEImageHub/ClientApp/package-lock.json[m
[1mindex 93c9f04..499f515 100644[m
[1m--- a/AEImageHub/ClientApp/package-lock.json[m
[1m+++ b/AEImageHub/ClientApp/package-lock.json[m
[36m@@ -9,7 +9,7 @@[m
       "resolved": "https://registry.npmjs.org/@babel/runtime/-/runtime-7.3.1.tgz",[m
       "integrity": "sha512-7jGW8ppV0ant637pIqAcFfQDDH1orEPGJb8aXfUozuCU3QqX7rX4DA8iwrbPrR1hcH0FTTHz47yQnk+bl5xHQA==",[m
       "requires": {[m
[31m-        "regenerator-runtime": "0.12.1"[m
[32m+[m[32m        "regenerator-runtime": "^0.12.0"[m
       },[m
       "dependencies": {[m
         "regenerator-runtime": {[m
[36m@@ -29,7 +29,7 @@[m
       "resolved": "https://registry.npmjs.org/accepts/-/accepts-1.3.4.tgz",[m
       "integrity": "sha1-hiRnWMfdbSGmR0/whKR0DsBesh8=",[m
       "requires": {[m
[31m-        "mime-types": "2.1.17",[m
[32m+[m[32m        "mime-types": "~2.1.16",[m
         "negotiator": "0.6.1"[m
       }[m
     },[m
[36m@@ -43,7 +43,7 @@[m
       "resolved": "https://registry.npmjs.org/acorn-dynamic-import/-/acorn-dynamic-import-2.0.2.tgz",[m
       "integrity": "sha1-x1K9IQvvZ5UBtsbLf8hPj0cVjMQ=",[m
       "requires": {[m
[31m-        "acorn": "4.0.13"[m
[32m+[m[32m        "acorn": "^4.0.3"[m
       },[m
       "dependencies": {[m
         "acorn": {[m
[36m@@ -58,7 +58,7 @@[m
       "resolved": "https://registry.npmjs.org/acorn-globals/-/acorn-globals-3.1.0.tgz",[m
       "integrity": "sha1-/YJw9x+7SZawBPqIDuXUZXOnMb8=",[m
       "requires": {[m
[31m-        "acorn": "4.0.13"[m
[32m+[m[32m        "acorn": "^4.0.4"[m
       },[m
       "dependencies": {[m
         "acorn": {[m
[36m@@ -73,7 +73,7 @@[m
       "resolved": "https://registry.npmjs.org/acorn-jsx/-/acorn-jsx-3.0.1.tgz",[m
       "integrity": "sha1-r9+UiPsezvyDSPb7IvRk4ypYs2s=",[m
       "requires": {[m
[31m-        "acorn": "3.3.0"[m
[32m+[m[32m        "acorn": "^3.0.4"[m
       },[m
       "dependencies": {[m
         "acorn": {[m
[36m@@ -93,10 +93,10 @@[m
       "resolved": "https://registry.npmjs.org/ajv/-/ajv-5.5.2.tgz",[m
       "integrity": "sha1-c7Xuyj+rZT49P5Qis0GtQiBdyWU=",[m
       "requires": {[m
[31m-        "co": "4.6.0",[m
[31m-        "fast-deep-equal": "1.0.0",[m
[31m-        "fast-json-stable-stringify": "2.0.0",[m
[31m-        "json-schema-traverse": "0.3.1"[m
[32m+[m[32m        "co": "^4.6.0",[m
[32m+[m[32m        "fast-deep-equal": "^1.0.0",[m
[32m+[m[32m        "fast-json-stable-stringify": "^2.0.0",[m
[32m+[m[32m        "json-schema-traverse": "^0.3.0"[m
       }[m
     },[m
     "ajv-keywords": {[m
[36m@@ -109,9 +109,9 @@[m
       "resolved": "https://registry.npmjs.org/align-text/-/align-text-0.1.4.tgz",[m
       "integrity": "sha1-DNkKVhCT810KmSVsIrcGlDP60Rc=",[m
       "requires": {[m
[31m-        "kind-of": "3.2.2",[m
[31m-        "longest": "1.0.1",[m
[31m-        "repeat-string": "1.6.1"[m
[32m+[m[32m        "kind-of": "^3.0.2",[m
[32m+[m[32m        "longest": "^1.0.1",[m
[32m+[m[32m        "repeat-string": "^1.5.2"[m
       }[m
     },[m
     "alphanum-sort": {[m
[36m@@ -129,7 +129,7 @@[m
       "resolved": "https://registry.npmjs.org/ansi-align/-/ansi-align-1.1.0.tgz",[m
       "integrity": "sha1-LwwWWIKXOa3V67FeawxuNCPwFro=",[m
       "requires": {[m
[31m-        "string-width": "1.0.2"[m
[32m+[m[32m        "string-width": "^1.0.1"[m
       },[m
       "dependencies": {[m
         "is-fullwidth-code-point": {[m
[36m@@ -137,7 +137,7 @@[m
           "resolved": "https://registry.npmjs.org/is-fullwidth-code-point/-/is-fullwidth-code-point-1.0.0.tgz",[m
           "integrity": "sha1-754xOG8DGn8NZDr4L95QxFfvAMs=",[m
           "requires": {[m
[31m-            "number-is-nan": "1.0.1"[m
[32m+[m[32m            "number-is-nan": "^1.0.0"[m
           }[m
         },[m
         "string-width": {[m
[36m@@ -145,9 +145,9 @@[m
           "resolved": "https://registry.npmjs.org/string-width/-/string-width-1.0.2.tgz",[m
           "integrity": "sha1-EYvfW4zcUaKn5w0hHgfisLmxB9M=",[m
           "requires": {[m
[31m-            "code-point-at": "1.1.0",[m
[31m-            "is-fullwidth-code-point": "1.0.0",[m
[31m-            "strip-ansi": "3.0.1"[m
[32m+[m[32m            "code-point-at": "^1.0.0",[m
[32m+[m[32m            "is-fullwidth-code-point": "^1.0.0",[m
[32m+[m[32m            "strip-ansi": "^3.0.0"[m
           }[m
         }[m
       }[m
[36m@@ -172,7 +172,7 @@[m
       "resolved": "https://registry.npmjs.org/ansi-styles/-/ansi-styles-3.2.0.tgz",[m
       "integrity": "sha512-NnSOmMEYtVR2JVMIGTzynRkkaxtiq1xnFBcdQD/DnNCYPoEPsVJhM98BDyaoNOQIi7p4okdi3E27eN7GQbsUug==",[m
       "requires": {[m
[31m-        "color-convert": "1.9.1"[m
[32m+[m[32m        "color-convert": "^1.9.0"[m
       }[m
     },[m
     "anymatch": {[m
[36m@@ -180,8 +180,8 @@[m
       "resolved": "https://registry.npmjs.org/anymatch/-/anymatch-1.3.2.tgz",[m
       "integrity": "sha512-0XNayC8lTHQ2OI8aljNCN3sSx6hsr/1+rlcDAotXJR7C1oZZHCNsfpbKwMjRA3Uqb5tF1Rae2oloTr4xpq+WjA==",[m
       "requires": {[m
[31m-        "micromatch": "2.3.11",[m
[31m-        "normalize-path": "2.1.1"[m
[32m+[m[32m        "micromatch": "^2.1.5",[m
[32m+[m[32m        "normalize-path": "^2.0.0"[m
       }[m
     },[m
     "aphrodite": {[m
[36m@@ -189,8 +189,8 @@[m
       "resolved": "https://registry.npmjs.org/aphrodite/-/aphrodite-0.5.0.tgz",[m
       "integrity": "sha1-pLmokCZiOV0nAucKx6K0ymbyVwM=",[m
       "requires": {[m
[31m-        "asap": "2.0.6",[m
[31m-        "inline-style-prefixer": "2.0.5"[m
[32m+[m[32m        "asap": "^2.0.3",[m
[32m+[m[32m        "inline-style-prefixer": "^2.0.0"[m
       }[m
     },[m
     "append-transform": {[m
[36m@@ -198,7 +198,7 @@[m
       "resolved": "https://registry.npmjs.org/append-transform/-/append-transform-0.4.0.tgz",[m
       "integrity": "sha1-126/jKlNJ24keja61EpLdKthGZE=",[m
       "requires": {[m
[31m-        "default-require-extensions": "1.0.0"[m
[32m+[m[32m        "default-require-extensions": "^1.0.0"[m
       }[m
     },[m
     "argparse": {[m
[36m@@ -206,7 +206,7 @@[m
       "resolved": "https://registry.npmjs.org/argparse/-/argparse-1.0.9.tgz",[m
       "integrity": "sha1-c9g7wmP4bpf4zE9rrhsOkKfSLIY=",[m
       "requires": {[m
[31m-        "sprintf-js": "1.0.3"[m
[32m+[m[32m        "sprintf-js": "~1.0.2"[m
       }[m
     },[m
     "aria-query": {[m
[36m@@ -222,7 +222,7 @@[m
       "resolved": "https://registry.npmjs.org/arr-diff/-/arr-diff-2.0.0.tgz",[m
       "integrity": "sha1-jzuCf5Vai9ZpaX5KQlasPOrjVs8=",[m
       "requires": {[m
[31m-        "arr-flatten": "1.1.0"[m
[32m+[m[32m        "arr-flatten": "^1.0.1"[m
       }[m
     },[m
     "arr-flatten": {[m
[36m@@ -255,8 +255,8 @@[m
       "resolved": "https://registry.npmjs.org/array-includes/-/array-includes-3.0.3.tgz",[m
       "integrity": "sha1-GEtI9i2S10UrsxsyMWXH+L0CJm0=",[m
       "requires": {[m
[31m-        "define-properties": "1.1.2",[m
[31m-        "es-abstract": "1.10.0"[m
[32m+[m[32m        "define-properties": "^1.1.2",[m
[32m+[m[32m        "es-abstract": "^1.7.0"[m
       }[m
     },[m
     "array-map": {[m
[36m@@ -274,7 +274,7 @@[m
       "resolved": "https://registry.npmjs.org/array-union/-/array-union-1.0.2.tgz",[m
       "integrity": "sha1-mjRBDk9OPaI96jdb5b5w8kd47Dk=",[m
       "requires": {[m
[31m-        "array-uniq": "1.0.3"[m
[32m+[m[32m        "array-uniq": "^1.0.1"[m
       }[m
     },[m
     "array-uniq": {[m
[36m@@ -307,9 +307,9 @@[m
       "resolved": "https://registry.npmjs.org/asn1.js/-/asn1.js-4.9.2.tgz",[m
       "integrity": "sha512-b/OsSjvWEo8Pi8H0zsDd2P6Uqo2TK2pH8gNLSJtNLM2Db0v2QaAZ0pBQJXVjAn4gBuugeVDr7s63ZogpUIwWDg==",[m
       "requires": {[m
[31m-        "bn.js": "4.11.8",[m
[31m-        "inherits": "2.0.3",[m
[31m-        "minimalistic-assert": "1.0.0"[m
[32m+[m[32m        "bn.js": "^4.0.0",[m
[32m+[m[32m        "inherits": "^2.0.1",[m
[32m+[m[32m        "minimalistic-assert": "^1.0.0"[m
       }[m
     },[m
     "assert": {[m
[36m@@ -335,7 +335,7 @@[m
       "resolved": "https://registry.npmjs.org/async/-/async-2.6.0.tgz",[m
       "integrity": "sha512-xAfGg1/NTLBBKlHFmnd7PlmUW9KhVQIUuSrYem9xzFUZy13ScvtyGGejaae9iAVRiRq9+Cx7DPFaAAhCpyxyPw==",[m
       "requires": {[m
[31m-        "lodash": "4.17.4"[m
[32m+[m[32m        "lodash": "^4.14.0"[m
       }[m
     },[m
     "async-each": {[m
[36m@@ -353,12 +353,12 @@[m
       "resolved": "https://registry.npmjs.org/autoprefixer/-/autoprefixer-7.1.6.tgz",[m
       "integrity": "sha512-C9yv/UF3X+eJTi/zvfxuyfxmLibYrntpF3qoJYrMeQwgUJOZrZvpJiMG2FMQ3qnhWtF/be4pYONBBw95ZGe3vA==",[m
       "requires": {[m
[31m-        "browserslist": "2.11.0",[m
[31m-        "caniuse-lite": "1.0.30000787",[m
[31m-        "normalize-range": "0.1.2",[m
[31m-        "num2fraction": "1.2.2",[m
[31m-        "postcss": "6.0.15",[m
[31m-        "postcss-value-parser": "3.3.0"[m
[32m+[m[32m        "browserslist": "^2.5.1",[m
[32m+[m[32m        "caniuse-lite": "^1.0.30000748",[m
[32m+[m[32m        "normalize-range": "^0.1.2",[m
[32m+[m[32m        "num2fraction": "^1.2.2",[m
[32m+[m[32m        "postcss": "^6.0.13",[m
[32m+[m[32m        "postcss-value-parser": "^3.2.3"[m
       }[m
     },[m
     "aws-sign2": {[m
[36m@@ -376,8 +376,8 @@[m
       "resolved": "https://registry.npmjs.org/axios/-/axios-0.18.0.tgz",[m
       "integrity": "sha1-MtU+SFHv3AoRmTts0AB4nXDAUQI=",[m
       "requires": {[m
[31m-        "follow-redirects": "1.6.1",[m
[31m-        "is-buffer": "1.1.6"[m
[32m+[m[32m        "follow-redirects": "^1.3.0",[m
[32m+[m[32m        "is-buffer": "^1.1.5"[m
       }[m
     },[m
     "axobject-query": {[m
[36m@@ -393,9 +393,9 @@[m
       "resolved": "https://registry.npmjs.org/babel-code-frame/-/babel-code-frame-6.26.0.tgz",[m
       "integrity": "sha1-Y/1D99weO7fONZR9uP42mj9Yx0s=",[m
       "requires": {[m
[31m-        "chalk": "1.1.3",[m
[31m-        "esutils": "2.0.2",[m
[31m-        "js-tokens": "3.0.2"[m
[32m+[m[32m        "chalk": "^1.1.3",[m
[32m+[m[32m        "esutils": "^2.0.2",[m
[32m+[m[32m        "js-tokens": "^3.0.2"[m
       }[m
     },[m
     "babel-core": {[m
[36m@@ -403,25 +403,25 @@[m
       "resolved": "https://registry.npmjs.org/babel-core/-/babel-core-6.26.0.tgz",[m
       "integrity": "sha1-rzL3izGm/O8RnIew/Y2XU/A6C7g=",[m
       "requires": {[m
[31m-        "babel-code-frame": "6.26.0",[m
[31m-        "babel-generator": "6.26.0",[m
[31m-        "babel-helpers": "6.24.1",[m
[31m-        "babel-messages": "6.23.0",[m
[31m-        "babel-register": "6.26.0",[m
[31m-        "babel-runtime": "6.26.0",[m
[31m-        "babel-template": "6.26.0",[m
[31m-        "babel-traverse": "6.26.0",[m
[31m-        "babel-types": "6.26.0",[m
[31m-        "babylon": "6.18.0",[m
[31m-        "convert-source-map": "1.5.1",[m
[31m-        "debug": "2.6.9",[m
[31m-        "json5": "0.5.1",[m
[31m-        "lodash": "4.17.4",[m
[31m-        "minimatch": "3.0.4",[m
[31m-        "path-is-absolute": "1.0.1",[m
[31m-        "private": "0.1.8",[m
[31m-        "slash": "1.0.0",[m
[31m-        "source-map": "0.5.7"[m
[32m+[m[32m        "babel-code-frame": "^6.26.0",[m
[32m+[m[32m        "babel-generator": "^6.26.0",[m
[32m+[m[32m        "babel-helpers": "^6.24.1",[m
[32m+[m[32m        "babel-messages": "^6.23.0",[m
[32m+[m[32m        "babel-register": "^6.26.0",[m
[32m+[m[32m        "babel-runtime": "^6.26.0",[m
[32m+[m[32m        "babel-template": "^6.26.0",[m
[32m+[m[32m        "babel-traverse": "^6.26.0",[m
[32m+[m[32m        "babel-types": "^6.26.0",[m
[32m+[m[32m        "babylon": "^6.18.0",[m
[32m+[m[32m        "convert-source-map": "^1.5.0",[m
[32m+[m[32m        "debug": "^2.6.8",[m
[32m+[m[32m        "json5": "^0.5.1",[m
[32m+[m[32m        "lodash": "^4.17.4",[m
[32m+[m[32m        "minimatch": "^3.0.4",[m
[32m+[m[32m        "path-is-absolute": "^1.0.1",[m
[32m+[m[32m        "private": "^0.1.7",[m
[32m+[m[32m        "slash": "^1.0.0",[m
[32m+[m[32m        "source-map": "^0.5.6"[m
       },[m
       "dependencies": {[m
         "source-map": {[m
[36m@@ -436,10 +436,10 @@[m
       "resolved": "https://registry.npmjs.org/babel-eslint/-/babel-eslint-7.2.3.tgz",[m
       "integrity": "sha1-sv4tgBJkcPXBlELcdXJTqJdxCCc=",[m
       "requires": {[m
[31m-        "babel-code-frame": "6.26.0",[m
[31m-        "babel-traverse": "6.26.0",[m
[31m-        "babel-types": "6.26.0",[m
[31m-        "babylon": "6.18.0"[m
[32m+[m[32m        "babel-code-frame": "^6.22.0",[m
[32m+[m[32m        "babel-traverse": "^6.23.1",[m
[32m+[m[32m        "babel-types": "^6.23.0",[m
[32m+[m[32m        "babylon": "^6.17.0"[m
       }[m
     },[m
     "babel-generator": {[m
[36m@@ -447,14 +447,14 @@[m
       "resolved": "https://registry.npmjs.org/babel-generator/-/babel-generator-6.26.0.tgz",[m
       "integrity": "sha1-rBriAHC3n248odMmlhMFN3TyDcU=",[m
       "requires": {[m
[31m-        "babel-messages": "6.23.0",[m
[31m-        "babel-runtime": "6.26.0",[m
[31m-        "babel-types": "6.26.0",[m
[31m-        "detect-indent": "4.0.0",[m
[31m-        "jsesc": "1.3.0",[m
[31m-        "lodash": "4.17.4",[m
[31m-        "source-map": "0.5.7",[m
[31m-        "trim-right": "1.0.1"[m
[32m+[m[32m        "babel-messages": "^6.23.0",[m
[32m+[m[32m        "babel-runtime": "^6.26.0",[m
[32m+[m[32m        "babel-types": "^6.26.0",[m
[32m+[m[32m        "detect-indent": "^4.0.0",[m
[32m+[m[32m        "jsesc": "^1.3.0",[m
[32m+[m[32m        "lodash": "^4.17.4",[m
[32m+[m[32m        "source-map": "^0.5.6",[m
[32m+[m[32m        "trim-right": "^1.0.1"[m
       },[m
       "dependencies": {[m
         "source-map": {[m
[36m@@ -469,9 +469,9 @@[m
       "resolved": "https://registry.npmjs.org/babel-helper-builder-binary-assignment-operator-visitor/-/babel-helper-builder-binary-assignment-operator-visitor-6.24.1.tgz",[m
       "integrity": "sha1-zORReto1b0IgvK6KAsKzRvmlZmQ=",[m
       "requires": {[m
[31m-        "babel-helper-explode-assignable-expression": "6.24.1",[m
[31m-        "babel-runtime": "6.26.0",[m
[31m-        "babel-types": "6.26.0"[m
[32m+[m[32m        "babel-helper-explode-assignable-expression": "^6.24.1",[m
[32m+[m[32m        "babel-runtime": "^6.22.0",[m
[32m+[m[32m        "babel-types": "^6.24.1"[m
       }[m
     },[m
     "babel-helper-builder-react-jsx": {[m
[36m@@ -479,9 +479,9 @@[m
       "resolved": "https://registry.npmjs.org/babel-helper-builder-react-jsx/-/babel-helper-builder-react-jsx-6.26.0.tgz",[m
       "integrity": "sha1-Of+DE7dci2Xc7/HzHTg+D/KkCKA=",[m
       "requires": {[m
[31m-        "babel-runtime": "6.26.0",[m
[31m-        "babel-types": "6.26.0",[m
[31m-        "esutils": "2.0.2"[m
[32m+[m[32m        "babel-runtime": "^6.26.0",[m
[32m+[m[32m        "babel-types": "^6.26.0",[m
[32m+[m[32m        "esutils": "^2.0.2"[m
       }[m
     },[m
     "babel-helper-call-delegate": {[m
[36m@@ -489,10 +489,10 @@[m
       "resolved": "https://registry.npmjs.org/babel-helper-call-delegate/-/babel-helper-call-delegate-6.24.1.tgz",[m
       "integrity": "sha1-7Oaqzdx25Bw0YfiL/Fdb0Nqi340=",[m
       "requires": {[m
[31m-        "babel-helper-hoist-variables": "6.24.1",[m
[31m-        "babel-runtime": "6.26.0",[m
[31m-        "babel-traverse": "6.26.0",[m
[31m-        "babel-types": "6.26.0"[m
[32m+[m[32m        "babel-helper-hoist-variables": "^6.24.1",[m
[32m+[m[32m        "babel-runtime": "^6.22.0",[m
[32m+[m[32m        "babel-traverse": "^6.24.1",[m
[32m+[m[32m        "babel-types": "^6.24.1"[m
       }[m
     },[m
     "babel-helper-define-map": {[m
[36m@@ -500,10 +500,10 @@[m
       "resolved": "https://registry.npmjs.org/babel-helper-define-map/-/babel-helper-define-map-6.26.0.tgz",[m
       "integrity": "sha1-pfVtq0GiX5fstJjH66ypgZ+Vvl8=",[m
       "requires": {[m
[31m-        "babel-helper-function-name": "6.24.1",[m
[31m-        "babel-runtime": "6.26.0",[m
[31m-        "babel-types": "6.26.0",[m
[31m-        "lodash": "4.17.4"[m
[32m+[m[32m        "babel-helper-function-name": "^6.24.1",[m
[32m+[m[32m        "babel-runtime": "^6.26.0",[m
[32m+[m[32m        "babel-types": "^6.26.0",[m
[32m+[m[32m        "lodash": "^4.17.4"[m
       }[m
     },[m
     "babel-helper-explode-assignable-expression": {[m
[36m@@ -511,9 +511,9 @@[m
       "resolved": "https://registry.npmjs.org/babel-helper-explode-assignable-expression/-/babel-helper-explode-assignable-expression-6.24.1.tgz",[m
       "integrity": "sha1-8luCz33BBDPFX3BZLVdGQArCLKo=",[m
       "requires": {[m
[31m-        "babel-runtime": "6.26.0",[m
[31m-        "babel-traverse": "6.26.0",[m
[31m-        "babel-types": "6.26.0"[m
[32m+[m[32m        "babel-runtime": "^6.22.0",[m
[32m+[m[32m        "babel-traverse": "^6.24.1",[m
[32m+[m[32m        "babel-types": "^6.24.1"[m
       }[m
     },[m
     "babel-helper-function-name": {[m
[36m@@ -521,11 +521,11 @@[m
       "resolved": "https://registry.npmjs.org/babel-helper-function-name/-/babel-helper-function-name-6.24.1.tgz",[m
       "integrity": "sha1-00dbjAPtmCQqJbSDUasYOZ01gKk=",[m
       "requires": {[m
[31m-        "babel-helper-get-function-arity": "6.24.1",[m
[31m-        "babel-runtime": "6.26.0",[m
[31m-        "babel-template": "6.26.0",[m
[31m-        "babel-traverse": "6.26.0",[m
[31m-        "babel-types": "6.26.0"[m
[32m+[m[32m        "babel-helper-get-function-arity": "^6.24.1",[m
[32m+[m[32m        "babel-runtime": "^6.22.0",[m
[32m+[m[32m        "babel-template": "^6.24.1",[m
[32m+[m[32m        "babel-traverse": "^6.24.1",[m
[32m+[m[32m        "babel-types": "^6.24.1"[m
       }[m
     },[m
     "babel-helper-get-function-arity": {[m
[36m@@ -533,8 +533,8 @@[m
       "resolved": "https://registry.npmjs.org/babel-helper-get-function-arity/-/babel-helper-get-function-arity-6.24.1.tgz",[m
       "integrity": "sha1-j3eCqpNAfEHTqlCQj4mwMbG2hT0=",[m
       "requires": {[m
[31m-        "babel-runtime": "6.26.0",[m
[31m-        "babel-types": "6.26.0"[m
[32m+[m[32m        "babel-runtime": "^6.22.0",[m
[32m+[m[32m        "babel-types": "^6.24.1"[m
       }[m
     },[m
     "babel-helper-hoist-variables": {[m
[36m@@ -542,8 +542,8 @@[m
       "resolved": "https://registry.npmjs.org/babel-helper-hoist-variables/-/babel-helper-hoist-variables-6.24.1.tgz",[m
       "integrity": "sha1-HssnaJydJVE+rbyZFKc/VAi+enY=",[m
       "requires": {[m
[31m-        "babel-runtime": "6.26.0",[m
[31m-        "babel-types": "6.26.0"[m
[32m+[m[32m        "babel-runtime": "^6.22.0",[m
[32m+[m[32m        "babel-types": "^6.24.1"[m
       }[m
     },[m
     "babel-helper-optimise-call-expression": {[m
[36m@@ -551,8 +551,8 @@[m
       "resolved": "https://registry.npmjs.org/babel-helper-optimise-call-expression/-/babel-helper-optimise-call-expression-6.24.1.tgz",[m
       "integrity": "sha1-96E0J7qfc/j0+pk8VKl4gtEkQlc=",[m
       "requires": {[m
[31m-        "babel-runtime": "6.26.0",[m
[31m-        "babel-types": "6.26.0"[m
[32m+[m[32m        "babel-runtime": "^6.22.0",[m
[32m+[m[32m        "babel-types": "^6.24.1"[m
       }[m
     },[m
     "babel-helper-regex": {[m
[36m@@ -560,9 +560,9 @@[m
       "resolved": "https://registry.npmjs.org/babel-helper-regex/-/babel-helper-regex-6.26.0.tgz",[m
       "integrity": "sha1-MlxZ+QL4LyS3T6zu0DY5VPZJXnI=",[m
       "requires": {[m
[31m-        "babel-runtime": "6.26.0",[m
[31m-        "babel-types": "6.26.0",[m
[31m-        "lodash": "4.17.4"[m
[32m+[m[32m        "babel-runtime": "^6.26.0",[m
[32m+[m[32m        "babel-types": "^6.26.0",[m
[32m+[m[32m        "lodash": "^4.17.4"[m
       }[m
     },[m
     "babel-helper-remap-async-to-generator": {[m
[36m@@ -570,11 +570,11 @@[m
       "resolved": "https://registry.npmjs.org/babel-helper-remap-async-to-generator/-/babel-helper-remap-async-to-generator-6.24.1.tgz",[m
       "integrity": "sha1-XsWBgnrXI/7N04HxySg5BnbkVRs=",[m
       "requires": {[m
[31m-        "babel-helper-function-name": "6.24.1",[m
[31m-        "babel-runtime": "6.26.0",[m
[31m-        "babel-template": "6.26.0",[m
[31m-        "babel-traverse": "6.26.0",[m
[31m-        "babel-types": "6.26.0"[m
[32m+[m[32m        "babel-helper-function-name": "^6.24.1",[m
[32m+[m[32m        "babel-runtime": "^6.22.0",[m
[32m+[m[32m        "babel-template": "^6.24.1",[m
[32m+[m[32m        "babel-traverse": "^6.24.1",[m
[32m+[m[32m        "babel-types": "^6.24.1"[m
       }[m
     },[m
     "babel-helper-replace-supers": {[m
[36m@@ -582,12 +582,12 @@[m
       "resolved": "https://registry.npmjs.org/babel-helper-replace-supers/-/babel-helper-replace-supers-6.24.1.tgz",[m
       "integrity": "sha1-v22/5Dk40XNpohPKiov3S2qQqxo=",[m
       "requires": {[m
[31m-        "babel-helper-optimise-call-expression": "6.24.1",[m
[31m-        "babel-messages": "6.23.0",[m
[31m-        "babel-runtime": "6.26.0",[m
[31m-        "babel-template": "6.26.0",[m
[31m-        "babel-traverse": "6.26.0",[m
[31m-        "babel-types": "6.26.0"[m
[32m+[m[32m        "babel-helper-optimise-call-expression": "^6.24.1",[m
[32m+[m[32m        "babel-messages": "^6.23.0",[m
[32m+[m[32m        "babel-runtime": "^6.22.0",[m
[32m+[m[32m        "babel-template": "^6.24.1",[m
[32m+[m[32m        "babel-traverse": "^6.24.1",[m
[32m+[m[32m        "babel-types": "^6.24.1"[m
       }[m
     },[m
     "babel-helpers": {[m
[36m@@ -595,8 +595,8 @@[m
       "resolved": "https://registry.npmjs.org/babel-helpers/-/babel-helpers-6.24.1.tgz",[m
       "integrity": "sha1-NHHenK7DiOXIUOWX5Yom3fN2ArI=",[m
       "requires": {[m
[31m-        "babel-runtime": "6.26.0",[m
[31m-        "babel-template": "6.26.0"[m
[32m+[m[32m        "babel-runtime": "^6.22.0",[m
[32m+[m[32m        "babel-template": "^6.24.1"[m
       }[m
     },[m
     "babel-jest": {[m
[36m@@ -604,9 +604,9 @@[m
       "resolved": "https://registry.npmjs.org/babel-jest/-/babel-jest-20.0.3.tgz",[m
       "integrity": "sha1-5KA7E9wQOJ4UD8ZF0J/8TO0wFnE=",[m
       "requires": {[m
[31m-        "babel-core": "6.26.0",[m
[31m-        "babel-plugin-istanbul": "4.1.5",[m
[31m-        "babel-preset-jest": "20.0.3"[m
[32m+[m[32m        "babel-core": "^6.0.0",[m
[32m+[m[32m        "babel-plugin-istanbul": "^4.0.0",[m
[32m+[m[32m        "babel-preset-jest": "^20.0.3"[m
       }[m
     },[m
     "babel-loader": {[m
[36m@@ -614,9 +614,9 @@[m
       "resolved": "https://registry.npmjs.org/babel-loader/-/babel-loader-7.1.2.tgz",[m
       "integrity": "sha512-jRwlFbINAeyDStqK6Dd5YuY0k5YuzQUvlz2ZamuXrXmxav3pNqe9vfJ402+2G+OmlJSXxCOpB6Uz0INM7RQe2A==",[m
       "requires": {[m
[31m-        "find-cache-dir": "1.0.0",[m
[31m-        "loader-utils": "1.1.0",[m
[31m-        "mkdirp": "0.5.1"[m
[32m+[m[32m        "find-cache-dir": "^1.0.0",[m
[32m+[m[32m        "loader-utils": "^1.0.2",[m
[32m+[m[32m        "mkdirp": "^0.5.1"[m
       }[m
     },[m
     "babel-messages": {[m
[36m@@ -624,7 +624,7 @@[m
       "resolved": "https://registry.npmjs.org/babel-messages/-/babel-messages-6.23.0.tgz",[m
       "integrity": "sha1-8830cDhYA1sqKVHG7F7fbGLyYw4=",[m
       "requires": {[m
[31m-        "babel-runtime": "6.26.0"[m
[32m+[m[32m        "babel-runtime": "^6.22.0"[m
       }[m
     },[m
     "babel-plugin-check-es2015-constants": {[m
[36m@@ -632,7 +632,7 @@[m
       "resolved": "https://registry.npmjs.org/babel-plugin-check-es2015-constants/-/babel-plugin-check-es2015-constants-6.22.0.tgz",[m
       "integrity": "sha1-NRV7EBQm/S/9PaP3XH0ekYNbv4o=",[m
       "requires": {[m
[31m-        "babel-runtime": "6.26.0"[m
[32m+[m[32m        "babel-runtime": "^6.22.0"[m
       }[m
     },[m
     "babel-plugin-dynamic-import-node": {[m
[36m@@ -640,9 +640,9 @@[m
       "resolved": "https://registry.npmjs.org/babel-plugin-dynamic-import-node/-/babel-plugin-dynamic-import-node-1.1.0.tgz",[m
       "integrity": "sha512-tTfZbM9Ecwj3GK50mnPrUpinTwA4xXmDiQGCk/aBYbvl1+X8YqldK86wZ1owVJ4u3mrKbRlXMma80J18qwiaTQ==",[m
       "requires": {[m
[31m-        "babel-plugin-syntax-dynamic-import": "6.18.0",[m
[31m-        "babel-template": "6.26.0",[m
[31m-        "babel-types": "6.26.0"[m
[32m+[m[32m        "babel-plugin-syntax-dynamic-import": "^6.18.0",[m
[32m+[m[32m        "babel-template": "^6.26.0",[m
[32m+[m[32m        "babel-types": "^6.26.0"[m
       }[m
     },[m
     "babel-plugin-istanbul": {[m
[36m@@ -650,9 +650,9 @@[m
       "resolved": "https://registry.npmjs.org/babel-plugin-istanbul/-/babel-plugin-istanbul-4.1.5.tgz",[m
       "integrity": "sha1-Z2DN2Xf0EdPhdbsGTyvDJ9mbK24=",[m
       "requires": {[m
[31m-        "find-up": "2.1.0",[m
[31m-        "istanbul-lib-instrument": "1.9.1",[m
[31m-        "test-exclude": "4.1.1"[m
[32m+[m[32m        "find-up": "^2.1.0",[m
[32m+[m[32m        "istanbul-lib-instrument": "^1.7.5",[m
[32m+[m[32m        "test-exclude": "^4.1.1"[m
       }[m
     },[m
     "babel-plugin-jest-hoist": {[m
[36m@@ -705,9 +705,9 @@[m
       "resolved": "https://registry.npmjs.org/babel-plugin-transform-async-to-generator/-/babel-plugin-transform-async-to-generator-6.24.1.tgz",[m
       "integrity": "sha1-ZTbjeK/2yx1VF6wOQOs+n8jQh2E=",[m
       "requires": {[m
[31m-        "babel-helper-remap-async-to-generator": "6.24.1",[m
[31m-        "babel-plugin-syntax-async-functions": "6.13.0",[m
[31m-        "babel-runtime": "6.26.0"[m
[32m+[m[32m        "babel-helper-remap-async-to-generator": "^6.24.1",[m
[32m+[m[32m        "babel-plugin-syntax-async-functions": "^6.8.0",[m
[32m+[m[32m        "babel-runtime": "^6.22.0"[m
       }[m
     },[m
     "babel-plugin-transform-class-properties": {[m
[36m@@ -715,10 +715,10 @@[m
       "resolved": "https://registry.npmjs.org/babel-plugin-transform-class-properties/-/babel-plugin-transform-class-properties-6.24.1.tgz",[m
       "integrity": "sha1-anl2PqYdM9NvN7YRqp3vgagbRqw=",[m
       "requires": {[m
[31m-        "babel-helper-function-name": "6.24.1",[m
[31m-        "babel-plugin-syntax-class-properties": "6.13.0",[m
[31m-        "babel-runtime": "6.26.0",[m
[31m-        "babel-template": "6.26.0"[m
[32m+[m[32m        "babel-helper-function-name": "^6.24.1",[m
[32m+[m[32m        "babel-plugin-syntax-class-properties": "^6.8.0",[m
[32m+[m[32m        "babel-runtime": "^6.22.0",[m
[32m+[m[32m        "babel-template": "^6.24.1"[m
       }[m
     },[m
     "babel-plugin-transform-es2015-arrow-functions": {[m
[36m@@ -726,7 +726,7 @@[m
       "resolved": "https://registry.npmjs.org/babel-plugin-transform-es2015-arrow-functions/-/babel-plugin-transform-es2015-arrow-functions-6.22.0.tgz",[m
       "integrity": "sha1-RSaSy3EdX3ncf4XkQM5BufJE0iE=",[m
       "requires": {[m
[31m-        "babel-runtime": "6.26.0"[m
[32m+[m[32m        "babel-runtime": "^6.22.0"[m
       }[m
     },[m
     "babel-plugin-transform-es2015-block-scoped-functions": {[m
[36m@@ -734,7 +734,7 @@[m
       "resolved": "https://registry.npmjs.org/babel-plugin-transform-es2015-block-scoped-functions/-/babel-plugin-transform-es2015-block-scoped-functions-6.22.0.tgz",[m
       "integrity": "sha1-u8UbSflk1wy42OC5ToICRs46YUE=",[m
       "requires": {[m
[31m-        "babel-runtime": "6.26.0"[m
[32m+[m[32m        "babel-runtime": "^6.22.0"[m
       }[m
     },[m
     "babel-plugin-transform-es2015-block-scoping": {[m
[36m@@ -742,11 +742,11 @@[m
       "resolved": "https://registry.npmjs.org/babel-plugin-transform-es2015-block-scoping/-/babel-plugin-transform-es2015-block-scoping-6.26.0.tgz",[m
       "integrity": "sha1-1w9SmcEwjQXBL0Y4E7CgnnOxiV8=",[m
       "requires": {[m
[31m-        "babel-runtime": "6.26.0",[m
[31m-        "babel-template": "6.26.0",[m
[31m-        "babel-traverse": "6.26.0",[m
[31m-        "babel-types": "6.26.0",[m
[31m-        "lodash": "4.17.4"[m
[32m+[m[32m        "babel-runtime": "^6.26.0",[m
[32m+[m[32m        "babel-template": "^6.26.0",[m
[32m+[m[32m        "babel-traverse": "^6.26.0",[m
[32m+[m[32m        "babel-types": "^6.26.0",[m
[32m+[m[32m        "lodash": "^4.17.4"[m
       }[m
     },[m
     "babel-plugin-transform-es2015-classes": {[m
[36m@@ -754,15 +754,15 @@[m
       "resolved": "https://registry.npmjs.org/babel-plugin-transform-es2015-classes/-/babel-plugin-transform-es2015-classes-6.24.1.tgz",[m
       "integrity": "sha1-WkxYpQyclGHlZLSyo7+ryXolhNs=",[m
       "requires": {[m
[31m-        "babel-helper-define-map": "6.26.0",[m
[31m-        "babel-helper-function-name": "6.24.1",[m
[31m-        "babel-helper-optimise-call-expression": "6.24.1",[m
[31m-        "babel-helper-replace-supers": "6.24.1",[m
[31m-        "babel-messages": "6.23.0",[m
[31m-        "babel-runtime": "6.26.0",[m
[31m-        "babel-template": "6.26.0",[m
[31m-        "babel-traverse": "6.26.0",[m
[31m-        "babel-types": "6.26.0"[m
[32m+[m[32m        "babel-helper-define-map": "^6.24.1",[m
[32m+[m[32m        "babel-helper-function-name": "^6.24.1",[m
[32m+[m[32m        "babel-helper-optimise-call-expression": "^6.24.1",[m
[32m+[m[32m        "babel-helper-replace-supers": "^6.24.1",[m
[32m+[m[32m        "babel-messages": "^6.23.0",[m
[32m+[m[32m        "babel-runtime": "^6.22.0",[m
[32m+[m[32m        "babel-template": "^6.24.1",[m
[32m+[m[32m        "babel-traverse": "^6.24.1",[m
[32m+[m[32m        "babel-types": "^6.24.1"[m
       }[m
     },[m
     "babel-plugin-transform-es2015-computed-properties": {[m
[36m@@ -770,8 +770,8 @@[m
       "resolved": "https://registry.npmjs.org/babel-plugin-transform-es2015-computed-properties/-/babel-plugin-transform-es2015-computed-properties-6.24.1.tgz",[m
       "integrity": "sha1-b+Ko0WiV1WNPTNmZttNICjCBWbM=",[m
       "requires": {[m
[31m-        "babel-runtime": "6.26.0",[m
[31m-        "babel-template": "6.26.0"[m
[32m+[m[32m        "babel-runtime": "^6.22.0",[m
[32m+[m[32m        "babel-template": "^6.24.1"[m
       }[m
     },[m
     "babel-plugin-transform-es2015-destructuring": {[m
[36m@@ -779,7 +779,7 @@[m
       "resolved": "https://registry.npmjs.org/babel-plugin-transform-es2015-destructuring/-/babel-plugin-transform-es2015-destructuring-6.23.0.tgz",[m
       "integrity": "sha1-mXux8auWf2gtKwh2/jWNYOdlxW0=",[m
       "requires": {[m
[31m-        "babel-runtime": "6.26.0"[m
[32m+[m[32m        "babel-runtime": "^6.22.0"[m
       }[m
     },[m
     "babel-plugin-transform-es2015-duplicate-keys": {[m
[36m@@ -787,8 +787,8 @@[m
       "resolved": "https://registry.npmjs.org/babel-plugin-transform-es2015-duplicate-keys/-/babel-plugin-transform-es2015-duplicate-keys-6.24.1.tgz",[m
       "integrity": "sha1-c+s9MQypaePvnskcU3QabxV2Qj4=",[m
       "requires": {[m
[31m-        "babel-runtime": "6.26.0",[m
[31m-        "babel-types": "6.26.0"[m
[32m+[m[32m        "babel-runtime": "^6.22.0",[m
[32m+[m[32m        "babel-types": "^6.24.1"[m
       }[m
     },[m
     "babel-plugin-transform-es2015-for-of": {[m
[36m@@ -796,7 +796,7 @@[m
       "resolved": "https://registry.npmjs.org/babel-plugin-transform-es2015-for-of/-/babel-plugin-transform-es2015-for-of-6.23.0.tgz",[m
       "integrity": "sha1-9HyVsrYT3x0+zC/bdXNiPHUkhpE=",[m
       "requires": {[m
[31m-        "babel-runtime": "6.26.0"[m
[32m+[m[32m        "babel-runtime": "^6.22.0"[m
       }[m
     },[m
     "babel-plugin-transform-es2015-function-name": {[m
[36m@@ -804,9 +804,9 @@[m
       "resolved": "https://registry.npmjs.org/babel-plugin-transform-es2015-function-name/-/babel-plugin-transform-es2015-function-name-6.24.1.tgz",[m
       "integrity": "sha1-g0yJhTvDaxrw86TF26qU/Y6sqos=",[m
       "requires": {[m
[31m-        "babel-helper-function-name": "6.24.1",[m
[31m-        "babel-runtime": "6.26.0",[m
[31m-        "babel-types": "6.26.0"[m
[32m+[m[32m        "babel-helper-function-name": "^6.24.1",[m
[32m+[m[32m        "babel-runtime": "^6.22.0",[m
[32m+[m[32m        "babel-types": "^6.24.1"[m
       }[m
     },[m
     "babel-plugin-transform-es2015-literals": {[m
[36m@@ -814,7 +814,7 @@[m
       "resolved": "https://registry.npmjs.org/babel-plugin-transform-es2015-literals/-/babel-plugin-transform-es2015-literals-6.22.0.tgz",[m
       "integrity": "sha1-T1SgLWzWbPkVKAAZox0xklN3yi4=",[m
       "requires": {[m
[31m-        "babel-runtime": "6.26.0"[m
[32m+[m[32m        "babel-runtime": "^6.22.0"[m
       }[m
     },[m
     "babel-plugin-transform-es2015-modules-amd": {[m
[36m@@ -822,9 +822,9 @@[m
       "resolved": "https://registry.npmjs.org/babel-plugin-transform-es2015-modules-amd/-/babel-plugin-transform-es2015-modules-amd-6.24.1.tgz",[m
       "integrity": "sha1-Oz5UAXI5hC1tGcMBHEvS8AoA0VQ=",[m
       "requires": {[m
[31m-        "babel-plugin-transform-es2015-modules-commonjs": "6.26.0",[m
[31m-        "babel-runtime": "6.26.0",[m
[31m-        "babel-template": "6.26.0"[m
[32m+[m[32m        "babel-plugin-transform-es2015-modules-commonjs": "^6.24.1",[m
[32m+[m[32m        "babel-runtime": "^6.22.0",[m
[32m+[m[32m        "babel-template": "^6.24.1"[m
       }[m
     },[m
     "babel-plugin-transform-es2015-modules-commonjs": {[m
[36m@@ -832,10 +832,10 @@[m
       "resolved": "https://registry.npmjs.org/babel-plugin-transform-es2015-modules-commonjs/-/babel-plugin-transform-es2015-modules-commonjs-6.26.0.tgz",[m
       "integrity": "sha1-DYOUApt9xqvhqX7xgeAHWN0uXYo=",[m
       "requires": {[m
[31m-        "babel-plugin-transform-strict-mode": "6.24.1",[m
[31m-        "babel-runtime": "6.26.0",[m
[31m-        "babel-template": "6.26.0",[m
[31m-        "babel-types": "6.26.0"[m
[32m+[m[32m        "babel-plugin-transform-strict-mode": "^6.24.1",[m
[32m+[m[32m        "babel-runtime": "^6.26.0",[m
[32m+[m[32m        "babel-template": "^6.26.0",[m
[32m+[m[32m        "babel-types": "^6.26.0"[m
       }[m
     },[m
     "babel-plugin-transform-es2015-modules-systemjs": {[m
[36m@@ -843,9 +843,9 @@[m
       "resolved": "https://registry.npmjs.org/babel-plugin-transform-es2015-modules-systemjs/-/babel-plugin-transform-es2015-modules-systemjs-6.24.1.tgz",[m
       "integrity": "sha1-/4mhQrkRmpBhlfXxBuzzBdlAfSM=",[m
       "requires": {[m
[31m-        "babel-helper-hoist-variables": "6.24.1",[m
[31m-        "babel-runtime": "6.26.0",[m
[31m-        "babel-template": "6.26.0"[m
[32m+[m[32m        "babel-helper-hoist-variables": "^6.24.1",[m
[32m+[m[32m        "babel-runtime": "^6.22.0",[m
[32m+[m[32m        "babel-template": "^6.24.1"[m
       }[m
     },[m
     "babel-plugin-transform-es2015-modules-umd": {[m
[36m@@ -853,9 +853,9 @@[m
       "resolved": "https://registry.npmjs.org/babel-plugin-transform-es2015-modules-umd/-/babel-plugin-transform-es2015-modules-umd-6.24.1.tgz",[m
       "integrity": "sha1-rJl+YoXNGO1hdq22B9YCNErThGg=",[m
       "requires": {[m
[31m-        "babel-plugin-transform-es2015-modules-amd": "6.24.1",[m
[31m-        "babel-runtime": "6.26.0",[m
[31m-        "babel-template": "6.26.0"[m
[32m+[m[32m        "babel-plugin-transform-es2015-modules-amd": "^6.24.1",[m
[32m+[m[32m        "babel-runtime": "^6.22.0",[m
[32m+[m[32m        "babel-template": "^6.24.1"[m
       }[m
     },[m
     "babel-plugin-transform-es2015-object-super": {[m
[36m@@ -863,8 +863,8 @@[m
       "resolved": "https://registry.npmjs.org/babel-plugin-transform-es2015-object-super/-/babel-plugin-transform-es2015-object-super-6.24.1.tgz",[m
       "integrity": "sha1-JM72muIcuDp/hgPa0CH1cusnj40=",[m
       "requires": {[m
[31m-        "babel-helper-replace-supers": "6.24.1",[m
[31m-        "babel-runtime": "6.26.0"[m
[32m+[m[32m        "babel-helper-replace-supers": "^6.24.1",[m
[32m+[m[32m        "babel-runtime": "^6.22.0"[m
       }[m
     },[m
     "babel-plugin-transform-es2015-parameters": {[m
[36m@@ -872,12 +872,12 @@[m
       "resolved": "https://registry.npmjs.org/babel-plugin-transform-es2015-parameters/-/babel-plugin-transform-es2015-parameters-6.24.1.tgz",[m
       "integrity": "sha1-V6w1GrScrxSpfNE7CfZv3wpiXys=",[m
       "requires": {[m
[31m-        "babel-helper-call-delegate": "6.24.1",[m
[31m-        "babel-helper-get-function-arity": "6.24.1",[m
[31m-        "babel-runtime": "6.26.0",[m
[31m-        "babel-template": "6.26.0",[m
[31m-        "babel-traverse": "6.26.0",[m
[31m-        "babel-types": "6.26.0"[m
[32m+[m[32m        "babel-helper-call-delegate": "^6.24.1",[m
[32m+[m[32m        "babel-helper-get-function-arity": "^6.24.1",[m
[32m+[m[32m        "babel-runtime": "^6.22.0",[m
[32m+[m[32m        "babel-template": "^6.24.1",[m
[32m+[m[32m        "babel-traverse": "^6.24.1",[m
[32m+[m[32m        "babel-types": "^6.24.1"[m
       }[m
     },[m
     "babel-plugin-transform-es2015-shorthand-properties": {[m
[36m@@ -885,8 +885,8 @@[m
       "resolved": "https://registry.npmjs.org/babel-plugin-transform-es2015-shorthand-properties/-/babel-plugin-transform-es2015-shorthand-properties-6.24.1.tgz",[m
       "integrity": "sha1-JPh11nIch2YbvZmkYi5R8U3jiqA=",[m
       "requires": {[m
[31m-        "babel-runtime": "6.26.0",[m
[31m-        "babel-types": "6.26.0"[m
[32m+[m[32m        "babel-runtime": "^6.22.0",[m
[32m+[m[32m        "babel-types": "^6.24.1"[m
       }[m
     },[m
     "babel-plugin-transform-es2015-spread": {[m
[36m@@ -894,7 +894,7 @@[m
       "resolved": "https://registry.npmjs.org/babel-plugin-transform-es2015-spread/-/babel-plugin-transform-es2015-spread-6.22.0.tgz",[m
       "integrity": "sha1-1taKmfia7cRTbIGlQujdnxdG+NE=",[m
       "requires": {[m
[31m-        "babel-runtime": "6.26.0"[m
[32m+[m[32m        "babel-runtime": "^6.22.0"[m
       }[m
     },[m
     "babel-plugin-transform-es2015-sticky-regex": {[m
[36m@@ -902,9 +902,9 @@[m
       "resolved": "https://registry.npmjs.org/babel-plugin-transform-es2015-sticky-regex/-/babel-plugin-transform-es2015-sticky-regex-6.24.1.tgz",[m
       "integrity": "sha1-AMHNsaynERLN8M9hJsLta0V8zbw=",[m
       "requires": {[m
[31m-        "babel-helper-regex": "6.26.0",[m
[31m-        "babel-runtime": "6.26.0",[m
[31m-        "babel-types": "6.26.0"[m
[32m+[m[32m        "babel-helper-regex": "^6.24.1",[m
[32m+[m[32m        "babel-runtime": "^6.22.0",[m
[32m+[m[32m        "babel-types": "^6.24.1"[m
       }[m
     },[m
     "babel-plugin-transform-es2015-template-literals": {[m
[36m@@ -912,7 +912,7 @@[m
       "resolved": "https://registry.npmjs.org/babel-plugin-transform-es2015-template-literals/-/babel-plugin-transform-es2015-template-literals-6.22.0.tgz",[m
       "integrity": "sha1-qEs0UPfp+PH2g51taH2oS7EjbY0=",[m
       "requires": {[m
[31m-        "babel-runtime": "6.26.0"[m
[32m+[m[32m        "babel-runtime": "^6.22.0"[m
       }[m
     },[m
     "babel-plugin-transform-es2015-typeof-symbol": {[m
[36m@@ -920,7 +920,7 @@[m
       "resolved": "https://registry.npmjs.org/babel-plugin-transform-es2015-typeof-symbol/-/babel-plugin-transform-es2015-typeof-symbol-6.23.0.tgz",[m
       "integrity": "sha1-3sCfHN3/lLUqxz1QXITfWdzOs3I=",[m
       "requires": {[m
[31m-        "babel-runtime": "6.26.0"[m
[32m+[m[32m        "babel-runtime": "^6.22.0"[m
       }[m
     },[m
     "babel-plugin-transform-es2015-unicode-regex": {[m
[36m@@ -928,9 +928,9 @@[m
       "resolved": "https://registry.npmjs.org/babel-plugin-transform-es2015-unicode-regex/-/babel-plugin-transform-es2015-unicode-regex-6.24.1.tgz",[m
       "integrity": "sha1-04sS9C6nMj9yk4fxinxa4frrNek=",[m
       "requires": {[m
[31m-        "babel-helper-regex": "6.26.0",[m
[31m-        "babel-runtime": "6.26.0",[m
[31m-        "regexpu-core": "2.0.0"[m
[32m+[m[32m        "babel-helper-regex": "^6.24.1",[m
[32m+[m[32m        "babel-runtime": "^6.22.0",[m
[32m+[m[32m        "regexpu-core": "^2.0.0"[m
       }[m
     },[m
     "babel-plugin-transform-exponentiation-operator": {[m
[36m@@ -938,9 +938,9 @@[m
       "resolved": "https://registry.npmjs.org/babel-plugin-transform-exponentiation-operator/-/babel-plugin-transform-exponentiation-operator-6.24.1.tgz",[m
       "integrity": "sha1-KrDJx/MJj6SJB3cruBP+QejeOg4=",[m
       "requires": {[m
[31m-        "babel-helper-builder-binary-assignment-operator-visitor": "6.24.1",[m
[31m-        "babel-plugin-syntax-exponentiation-operator": "6.13.0",[m
[31m-        "babel-runtime": "6.26.0"[m
[32m+[m[32m        "babel-helper-builder-binary-assignment-operator-visitor": "^6.24.1",[m
[32m+[m[32m        "babel-plugin-syntax-exponentiation-operator": "^6.8.0",[m
[32m+[m[32m        "babel-runtime": "^6.22.0"[m
       }[m
     },[m
     "babel-plugin-transform-flow-strip-types": {[m
[36m@@ -948,8 +948,8 @@[m
       "resolved": "https://registry.npmjs.org/babel-plugin-transform-flow-strip-types/-/babel-plugin-transform-flow-strip-types-6.22.0.tgz",[m
       "integrity": "sha1-hMtnKTXUNxT9wyvOhFaNh0Qc988=",[m
       "requires": {[m
[31m-        "babel-plugin-syntax-flow": "6.18.0",[m
[31m-        "babel-runtime": "6.26.0"[m
[32m+[m[32m        "babel-plugin-syntax-flow": "^6.18.0",[m
[32m+[m[32m        "babel-runtime": "^6.22.0"[m
       }[m
     },[m
     "babel-plugin-transform-object-rest-spread": {[m
[36m@@ -957,8 +957,8 @@[m
       "resolved": "https://registry.npmjs.org/babel-plugin-transform-object-rest-spread/-/babel-plugin-transform-object-rest-spread-6.26.0.tgz",[m
       "integrity": "sha1-DzZpLVD+9rfi1LOsFHgTepY7ewY=",[m
       "requires": {[m
[31m-        "babel-plugin-syntax-object-rest-spread": "6.13.0",[m
[31m-        "babel-runtime": "6.26.0"[m
[32m+[m[32m        "babel-plugin-syntax-object-rest-spread": "^6.8.0",[m
[32m+[m[32m        "babel-runtime": "^6.26.0"[m
       }[m
     },[m
     "babel-plugin-transform-react-constant-elements": {[m
[36m@@ -966,7 +966,7 @@[m
       "resolved": "https://registry.npmjs.org/babel-plugin-transform-react-constant-elements/-/babel-plugin-transform-react-constant-elements-6.23.0.tgz",[m
       "integrity": "sha1-LxGb9NLN1F65uqrldAU8YE9hR90=",[m
       "requires": {[m
[31m-        "babel-runtime": "6.26.0"[m
[32m+[m[32m        "babel-runtime": "^6.22.0"[m
       }[m
     },[m
     "babel-plugin-transform-react-display-name": {[m
[36m@@ -974,7 +974,7 @@[m
       "resolved": "https://registry.npmjs.org/babel-plugin-transform-react-display-name/-/babel-plugin-transform-react-display-name-6.25.0.tgz",[m
       "integrity": "sha1-Z+K/Hx6ck6sI25Z5LgU5K/LMKNE=",[m
       "requires": {[m
[31m-        "babel-runtime": "6.26.0"[m
[32m+[m[32m        "babel-runtime": "^6.22.0"[m
       }[m
     },[m
     "babel-plugin-transform-react-jsx": {[m
[36m@@ -982,9 +982,9 @@[m
       "resolved": "https://registry.npmjs.org/babel-plugin-transform-react-jsx/-/babel-plugin-transform-react-jsx-6.24.1.tgz",[m
       "integrity": "sha1-hAoCjn30YN/DotKfDA2R9jduZqM=",[m
       "requires": {[m
[31m-        "babel-helper-builder-react-jsx": "6.26.0",[m
[31m-        "babel-plugin-syntax-jsx": "6.18.0",[m
[31m-        "babel-runtime": "6.26.0"[m
[32m+[m[32m        "babel-helper-builder-react-jsx": "^6.24.1",[m
[32m+[m[32m        "babel-plugin-syntax-jsx": "^6.8.0",[m
[32m+[m[32m        "babel-runtime": "^6.22.0"[m
       }[m
     },[m
     "babel-plugin-transform-react-jsx-self": {[m
[36m@@ -992,8 +992,8 @@[m
       "resolved": "https://registry.npmjs.org/babel-plugin-transform-react-jsx-self/-/babel-plugin-transform-react-jsx-self-6.22.0.tgz",[m
       "integrity": "sha1-322AqdomEqEh5t3XVYvL7PBuY24=",[m
       "requires": {[m
[31m-        "babel-plugin-syntax-jsx": "6.18.0",[m
[31m-        "babel-runtime": "6.26.0"[m
[32m+[m[32m        "babel-plugin-syntax-jsx": "^6.8.0",[m
[32m+[m[32m        "babel-runtime": "^6.22.0"[m
       }[m
     },[m
     "babel-plugin-transform-react-jsx-source": {[m
[36m@@ -1001,8 +1001,8 @@[m
       "resolved": "https://registry.npmjs.org/babel-plugin-transform-react-jsx-source/-/babel-plugin-transform-react-jsx-source-6.22.0.tgz",[m
       "integrity": "sha1-ZqwSFT9c0tF7PBkmj0vwGX9E7NY=",[m
       "requires": {[m
[31m-        "babel-plugin-syntax-jsx": "6.18.0",[m
[31m-        "babel-runtime": "6.26.0"[m
[32m+[m[32m        "babel-plugin-syntax-jsx": "^6.8.0",[m
[32m+[m[32m        "babel-runtime": "^6.22.0"[m
       }[m
     },[m
     "babel-plugin-transform-regenerator": {[m
[36m@@ -1010,7 +1010,7 @@[m
       "resolved": "https://registry.npmjs.org/babel-plugin-transform-regenerator/-/babel-plugin-transform-regenerator-6.26.0.tgz",[m
       "integrity": "sha1-4HA2lvveJ/Cj78rPi03KL3s6jy8=",[m
       "requires": {[m
[31m-        "regenerator-transform": "0.10.1"[m
[32m+[m[32m        "regenerator-transform": "^0.10.0"[m
       }[m
     },[m
     "babel-plugin-transform-runtime": {[m
[36m@@ -1018,7 +1018,7 @@[m
       "resolved": "https://registry.npmjs.org/babel-plugin-transform-runtime/-/babel-plugin-transform-runtime-6.23.0.tgz",[m
       "integrity": "sha1-iEkNRGUC6puOfvsP4J7E2ZR5se4=",[m
       "requires": {[m
[31m-        "babel-runtime": "6.26.0"[m
[32m+[m[32m        "babel-runtime": "^6.22.0"[m
       }[m
     },[m
     "babel-plugin-transform-strict-mode": {[m
[36m@@ -1026,8 +1026,8 @@[m
       "resolved": "https://registry.npmjs.org/babel-plugin-transform-strict-mode/-/babel-plugin-transform-strict-mode-6.24.1.tgz",[m
       "integrity": "sha1-1fr3qleKZbvlkc9e2uBKDGcCB1g=",[m
       "requires": {[m
[31m-        "babel-runtime": "6.26.0",[m
[31m-        "babel-types": "6.26.0"[m
[32m+[m[32m        "babel-runtime": "^6.22.0",[m
[32m+[m[32m        "babel-types": "^6.24.1"[m
       }[m
     },[m
     "babel-preset-env": {[m
[36m@@ -1035,36 +1035,36 @@[m
       "resolved": "https://registry.npmjs.org/babel-preset-env/-/babel-preset-env-1.6.1.tgz",[m
       "integrity": "sha512-W6VIyA6Ch9ePMI7VptNn2wBM6dbG0eSz25HEiL40nQXCsXGTGZSTZu1Iap+cj3Q0S5a7T9+529l/5Bkvd+afNA==",[m
       "requires": {[m
[31m-        "babel-plugin-check-es2015-constants": "6.22.0",[m
[31m-        "babel-plugin-syntax-trailing-function-commas": "6.22.0",[m
[31m-        "babel-plugin-transform-async-to-generator": "6.24.1",[m
[31m-        "babel-plugin-transform-es2015-arrow-functions": "6.22.0",[m
[31m-        "babel-plugin-transform-es2015-block-scoped-functions": "6.22.0",[m
[31m-        "babel-plugin-transform-es2015-block-scoping": "6.26.0",[m
[31m-        "babel-plugin-transform-es2015-classes": "6.24.1",[m
[31m-        "babel-plugin-transform-es2015-computed-properties": "6.24.1",[m
[31m-        "babel-plugin-transform-es2015-destructuring": "6.23.0",[m
[31m-        "babel-plugin-transform-es2015-duplicate-keys": "6.24.1",[m
[31m-        "babel-plugin-transform-es2015-for-of": "6.23.0",[m
[31m-        "babel-plugin-transform-es2015-function-name": "6.24.1",[m
[31m-        "babel-plugin-transform-es2015-literals": "6.22.0",[m
[31m-        "babel-plugin-transform-es2015-modules-amd": "6.24.1",[m
[31m-        "babel-plugin-transform-es2015-modules-commonjs": "6.26.0",[m
[31m-        "babel-plugin-transform-es2015-modules-systemjs": "6.24.1",[m
[31m-        "babel-plugin-transform-es2015-modules-umd": "6.24.1",[m
[31m-        "babel-plugin-transform-es2015-object-super": "6.24.1",[m
[31m-        "babel-plugin-transform-es2015-parameters": "6.24.1",[m
[31m-        "babel-plugin-transform-es2015-shorthand-properties": "6.24.1",[m
[31m-        "babel-plugin-transform-es2015-spread": "6.22.0",[m
[31m-        "babel-plugin-transform-es2015-sticky-regex": "6.24.1",[m
[31m-        "babel-plugin-transform-es2015-template-literals": "6.22.0",[m
[31m-        "babel-plugin-transform-es2015-typeof-symbol": "6.23.0",[m
[31m-        "babel-plugin-transform-es2015-unicode-regex": "6.24.1",[m
[31m-        "babel-plugin-transform-exponentiation-operator": "6.24.1",[m
[31m-        "babel-plugin-transform-regenerator": "6.26.0",[m
[31m-        "browserslist": "2.11.0",[m
[31m-        "invariant": "2.2.2",[m
[31m-        "semver": "5.4.1"[m
[32m+[m[32m        "babel-plugin-check-es2015-constants": "^6.22.0",[m
[32m+[m[32m        "babel-plugin-syntax-trailing-function-commas": "^6.22.0",[m
[32m+[m[32m        "babel-plugin-transform-async-to-generator": "^6.22.0",[m
[32m+[m[32m        "babel-plugin-transform-es2015-arrow-functions": "^6.22.0",[m
[32m+[m[32m        "babel-plugin-transform-es2015-block-scoped-functions": "^6.22.0",[m
[32m+[m[32m        "babel-plugin-transform-es2015-block-scoping": "^6.23.0",[m
[32m+[m[32m        "babel-plugin-transform-es2015-classes": "^6.23.0",[m
[32m+[m[32m        "babel-plugin-transform-es2015-computed-properties": "^6.22.0",[m
[32m+[m[32m        "babel-plugin-transform-es2015-destructuring": "^6.23.0",[m
[32m+[m[32m        "babel-plugin-transform-es2015-duplicate-keys": "^6.22.0",[m
[32m+[m[32m        "babel-plugin-transform-es2015-for-of": "^6.23.0",[m
[32m+[m[32m        "babel-plugin-transform-es2015-function-name": "^6.22.0",[m
[32m+[m[32m        "babel-plugin-transform-es2015-literals": "^6.22.0",[m
[32m+[m[32m        "babel-plugin-transform-es2015-modules-amd": "^6.22.0",[m
[32m+[m[32m        "babel-plugin-transform-es2015-modules-commonjs": "^6.23.0",[m
[32m+[m[32m        "babel-plugin-transform-es2015-modules-systemjs": "^6.23.0",[m
[32m+[m[32m        "babel-plugin-transform-es2015-modules-umd": "^6.23.0",[m
[32m+[m[32m        "babel-plugin-transform-es2015-object-super": "^6.22.0",[m
[32m+[m[32m        "babel-plugin-transform-es2015-parameters": "^6.23.0",[m
[32m+[m[32m        "babel-plugin-transform-es2015-shorthand-properties": "^6.22.0",[m
[32m+[m[32m        "babel-plugin-transform-es2015-spread": "^6.22.0",[m
[32m+[m[32m        "babel-plugin-transform-es2015-sticky-regex": "^6.22.0",[m
[32m+[m[32m        "babel-plugin-transform-es2015-template-literals": "^6.22.0",[m
[32m+[m[32m        "babel-plugin-transform-es2015-typeof-symbol": "^6.23.0",[m
[32m+[m[32m        "babel-plugin-transform-es2015-unicode-regex": "^6.22.0",[m
[32m+[m[32m        "babel-plugin-transform-exponentiation-operator": "^6.22.0",[m
[32m+[m[32m        "babel-plugin-transform-regenerator": "^6.22.0",[m
[32m+[m[32m        "browserslist": "^2.1.2",[m
[32m+[m[32m        "invariant": "^2.2.2",[m
[32m+[m[32m        "semver": "^5.3.0"[m
       }[m
     },[m
     "babel-preset-flow": {[m
[36m@@ -1072,7 +1072,7 @@[m
       "resolved": "https://registry.npmjs.org/babel-preset-flow/-/babel-preset-flow-6.23.0.tgz",[m
       "integrity": "sha1-5xIYiHCFrpoktb5Baa/7WZgWxJ0=",[m
       "requires": {[m
[31m-        "babel-plugin-transform-flow-strip-types": "6.22.0"[m
[32m+[m[32m        "babel-plugin-transform-flow-strip-types": "^6.22.0"[m
       }[m
     },[m
     "babel-preset-jest": {[m
[36m@@ -1080,7 +1080,7 @@[m
       "resolved": "https://registry.npmjs.org/babel-preset-jest/-/babel-preset-jest-20.0.3.tgz",[m
       "integrity": "sha1-y6yq3stdaJyh4d4TYOv8ZoYsF4o=",[m
       "requires": {[m
[31m-        "babel-plugin-jest-hoist": "20.0.3"[m
[32m+[m[32m        "babel-plugin-jest-hoist": "^20.0.3"[m
       }[m
     },[m
     "babel-preset-react": {[m
[36m@@ -1088,12 +1088,12 @@[m
       "resolved": "https://registry.npmjs.org/babel-preset-react/-/babel-preset-react-6.24.1.tgz",[m
       "integrity": "sha1-umnfrqRfw+xjm2pOzqbhdwLJE4A=",[m
       "requires": {[m
[31m-        "babel-plugin-syntax-jsx": "6.18.0",[m
[31m-        "babel-plugin-transform-react-display-name": "6.25.0",[m
[31m-        "babel-plugin-transform-react-jsx": "6.24.1",[m
[31m-        "babel-plugin-transform-react-jsx-self": "6.22.0",[m
[31m-        "babel-plugin-transform-react-jsx-source": "6.22.0",[m
[31m-        "babel-preset-flow": "6.23.0"[m
[32m+[m[32m        "babel-plugin-syntax-jsx": "^6.3.13",[m
[32m+[m[32m        "babel-plugin-transform-react-display-name": "^6.23.0",[m
[32m+[m[32m        "babel-plugin-transform-react-jsx": "^6.24.1",[m
[32m+[m[32m        "babel-plugin-transform-react-jsx-self": "^6.22.0",[m
[32m+[m[32m        "babel-plugin-transform-react-jsx-source": "^6.22.0",[m
[32m+[m[32m        "babel-preset-flow": "^6.23.0"[m
       }[m
     },[m
     "babel-preset-react-app": {[m
[36m@@ -1120,13 +1120,13 @@[m
       "resolved": "https://registry.npmjs.org/babel-register/-/babel-register-6.26.0.tgz",[m
       "integrity": "sha1-btAhFz4vy0htestFxgCahW9kcHE=",[m
       "requires": {[m
[31m-        "babel-core": "6.26.0",[m
[31m-        "babel-runtime": "6.26.0",[m
[31m-        "core-js": "2.5.3",[m
[31m-        "home-or-tmp": "2.0.0",[m
[31m-        "lodash": "4.17.4",[m
[31m-        "mkdirp": "0.5.1",[m
[31m-        "source-map-support": "0.4.18"[m
[32m+[m[32m        "babel-core": "^6.26.0",[m
[32m+[m[32m        "babel-runtime": "^6.26.0",[m
[32m+[m[32m        "core-js": "^2.5.0",[m
[32m+[m[32m        "home-or-tmp": "^2.0.0",[m
[32m+[m[32m        "lodash": "^4.17.4",[m
[32m+[m[32m        "mkdirp": "^0.5.1",[m
[32m+[m[32m        "source-map-support": "^0.4.15"[m
       },[m
       "dependencies": {[m
         "core-js": {[m
[36m@@ -1141,8 +1141,8 @@[m
       "resolved": "https://registry.npmjs.org/babel-runtime/-/babel-runtime-6.26.0.tgz",[m
       "integrity": "sha1-llxwWGaOgrVde/4E/yM3vItWR/4=",[m
       "requires": {[m
[31m-        "core-js": "2.5.3",[m
[31m-        "regenerator-runtime": "0.11.1"[m
[32m+[m[32m        "core-js": "^2.4.0",[m
[32m+[m[32m        "regenerator-runtime": "^0.11.0"[m
       },[m
       "dependencies": {[m
         "core-js": {[m
[36m@@ -1157,11 +1157,11 @@[m
       "resolved": "https://registry.npmjs.org/babel-template/-/babel-template-6.26.0.tgz",[m
       "integrity": "sha1-3gPi0WOWsGn0bdn/+FIfsaDjXgI=",[m
       "requires": {[m
[31m-        "babel-runtime": "6.26.0",[m
[31m-        "babel-traverse": "6.26.0",[m
[31m-        "babel-types": "6.26.0",[m
[31m-        "babylon": "6.18.0",[m
[31m-        "lodash": "4.17.4"[m
[32m+[m[32m        "babel-runtime": "^6.26.0",[m
[32m+[m[32m        "babel-traverse": "^6.26.0",[m
[32m+[m[32m        "babel-types": "^6.26.0",[m
[32m+[m[32m        "babylon": "^6.18.0",[m
[32m+[m[32m        "lodash": "^4.17.4"[m
       }[m
     },[m
     "babel-traverse": {[m
[36m@@ -1169,15 +1169,15 @@[m
       "resolved": "https://registry.npmjs.org/babel-traverse/-/babel-traverse-6.26.0.tgz",[m
       "integrity": "sha1-RqnL1+3MYsjlwGTi0tjQ9ANXZu4=",[m
       "requires": {[m
[31m-        "babel-code-frame": "6.26.0",[m
[31m-        "babel-messages": "6.23.0",[m
[31m-        "babel-runtime": "6.26.0",[m
[31m-        "babel-types": "6.26.0",[m
[31m-        "babylon": "6.18.0",[m
[31m-        "debug": "2.6.9",[m
[31m-        "globals": "9.18.0",[m
[31m-        "invariant": "2.2.2",[m
[31m-        "lodash": "4.17.4"[m
[32m+[m[32m        "babel-code-frame": "^6.26.0",[m
[32m+[m[32m        "babel-messages": "^6.23.0",[m
[32m+[m[32m        "babel-runtime": "^6.26.0",[m
[32m+[m[32m        "babel-types": "^6.26.0",[m
[32m+[m[32m        "babylon": "^6.18.0",[m
[32m+[m[32m        "debug": "^2.6.8",[m
[32m+[m[32m        "globals": "^9.18.0",[m
[32m+[m[32m        "invariant": "^2.2.2",[m
[32m+[m[32m        "lodash": "^4.17.4"[m
       }[m
     },[m
     "babel-types": {[m
[36m@@ -1185,10 +1185,10 @@[m
       "resolved": "https://registry.npmjs.org/babel-types/-/babel-types-6.26.0.tgz",[m
       "integrity": "sha1-o7Bz+Uq0nrb6Vc1lInozQ4BjJJc=",[m
       "requires": {[m
[31m-        "babel-runtime": "6.26.0",[m
[31m-        "esutils": "2.0.2",[m
[31m-        "lodash": "4.17.4",[m
[31m-        "to-fast-properties": "1.0.3"[m
[32m+[m[32m        "babel-runtime": "^6.26.0",[m
[32m+[m[32m        "esutils": "^2.0.2",[m
[32m+[m[32m        "lodash": "^4.17.4",[m
[32m+[m[32m        "to-fast-properties": "^1.0.3"[m
       }[m
     },[m
     "babylon": {[m
[36m@@ -1217,7 +1217,7 @@[m
       "integrity": "sha1-Y7xdy2EzG5K8Bf1SiVPDNGKgb40=",[m
       "optional": true,[m
       "requires": {[m
[31m-        "tweetnacl": "0.14.5"[m
[32m+[m[32m        "tweetnacl": "^0.14.3"[m
       }[m
     },[m
     "big.js": {[m
[36m@@ -1246,15 +1246,15 @@[m
       "integrity": "sha1-h2eKGdhLR9hZuDGZvVm84iKxBFQ=",[m
       "requires": {[m
         "bytes": "3.0.0",[m
[31m-        "content-type": "1.0.4",[m
[32m+[m[32m        "content-type": "~1.0.4",[m
         "debug": "2.6.9",[m
[31m-        "depd": "1.1.1",[m
[31m-        "http-errors": "1.6.2",[m
[32m+[m[32m        "depd": "~1.1.1",[m
[32m+[m[32m        "http-errors": "~1.6.2",[m
         "iconv-lite": "0.4.19",[m
[31m-        "on-finished": "2.3.0",[m
[32m+[m[32m        "on-finished": "~2.3.0",[m
         "qs": "6.5.1",[m
         "raw-body": "2.3.2",[m
[31m-        "type-is": "1.6.15"[m
[32m+[m[32m        "type-is": "~1.6.15"[m
       }[m
     },[m
     "bonjour": {[m
[36m@@ -1262,12 +1262,12 @@[m
       "resolved": "https://registry.npmjs.org/bonjour/-/bonjour-3.5.0.tgz",[m
       "integrity": "sha1-jokKGD2O6aI5OzhExpGkK897yfU=",[m
       "requires": {[m
[31m-        "array-flatten": "2.1.1",[m
[31m-        "deep-equal": "1.0.1",[m
[31m-        "dns-equal": "1.0.0",[m
[31m-        "dns-txt": "2.0.2",[m
[31m-        "multicast-dns": "6.2.1",[m
[31m-        "multicast-dns-service-types": "1.1.0"[m
[32m+[m[32m        "array-flatten": "^2.1.0",[m
[32m+[m[32m        "deep-equal": "^1.0.1",[m
[32m+[m[32m        "dns-equal": "^1.0.0",[m
[32m+[m[32m        "dns-txt": "^2.0.2",[m
[32m+[m[32m        "multicast-dns": "^6.0.1",[m
[32m+[m[32m        "multicast-dns-service-types": "^1.1.0"[m
       }[m
     },[m
     "boolbase": {[m
[36m@@ -1280,7 +1280,7 @@[m
       "resolved": "https://registry.npmjs.org/boom/-/boom-4.3.1.tgz",[m
       "integrity": "sha1-T4owBctKfjiJ90kDD9JbluAdLjE=",[m
       "requires": {[m
[31m-        "hoek": "4.2.0"[m
[32m+[m[32m        "hoek": "4.x.x"[m
       }[m
     },[m
     "bootstrap": {[m
[36m@@ -1298,15 +1298,15 @@[m
       "resolved": "https://registry.npmjs.org/boxen/-/boxen-0.6.0.tgz",[m
       "integrity": "sha1-g2TUJIrDT/DvGy8r9JpsYM4NgbY=",[m
       "requires": {[m
[31m-        "ansi-align": "1.1.0",[m
[31m-        "camelcase": "2.1.1",[m
[31m-        "chalk": "1.1.3",[m
[31m-        "cli-boxes": "1.0.0",[m
[31m-        "filled-array": "1.1.0",[m
[31m-        "object-assign": "4.1.1",[m
[31m-        "repeating": "2.0.1",[m
[31m-        "string-width": "1.0.2",[m
[31m-        "widest-line": "1.0.0"[m
[32m+[m[32m        "ansi-align": "^1.1.0",[m
[32m+[m[32m        "camelcase": "^2.1.0",[m
[32m+[m[32m        "chalk": "^1.1.1",[m
[32m+[m[32m        "cli-boxes": "^1.0.0",[m
[32m+[m[32m        "filled-array": "^1.0.0",[m
[32m+[m[32m        "object-assign": "^4.0.1",[m
[32m+[m[32m        "repeating": "^2.0.0",[m
[32m+[m[32m        "string-width": "^1.0.1",[m
[32m+[m[32m        "widest-line": "^1.0.0"[m
       },[m
       "dependencies": {[m
         "camelcase": {[m
[36m@@ -1319,7 +1319,7 @@[m
           "resolved": "https://registry.npmjs.org/is-fullwidth-code-point/-/is-fullwidth-code-point-1.0.0.tgz",[m
           "integrity": "sha1-754xOG8DGn8NZDr4L95QxFfvAMs=",[m
           "requires": {[m
[31m-            "number-is-nan": "1.0.1"[m
[32m+[m[32m            "number-is-nan": "^1.0.0"[m
           }[m
         },[m
         "string-width": {[m
[36m@@ -1327,9 +1327,9 @@[m
           "resolved": "https://registry.npmjs.org/string-width/-/string-width-1.0.2.tgz",[m
           "integrity": "sha1-EYvfW4zcUaKn5w0hHgfisLmxB9M=",[m
           "requires": {[m
[31m-            "code-point-at": "1.1.0",[m
[31m-            "is-fullwidth-code-point": "1.0.0",[m
[31m-            "strip-ansi": "3.0.1"[m
[32m+[m[32m            "code-point-at": "^1.0.0",[m
[32m+[m[32m            "is-fullwidth-code-point": "^1.0.0",[m
[32m+[m[32m            "strip-ansi": "^3.0.0"[m
           }[m
         }[m
       }[m
[36m@@ -1339,7 +1339,7 @@[m
       "resolved": "https://registry.npmjs.org/brace-expansion/-/brace-expansion-1.1.8.tgz",[m
       "integrity": "sha1-wHshHHyVLsH479Uad+8NHTmQopI=",[m
       "requires": {[m
[31m-        "balanced-match": "1.0.0",[m
[32m+[m[32m        "balanced-match": "^1.0.0",[m
         "concat-map": "0.0.1"[m
       }[m
     },[m
[36m@@ -1348,9 +1348,9 @@[m
       "resolved": "https://registry.npmjs.org/braces/-/braces-1.8.5.tgz",[m
       "integrity": "sha1-uneWLhLf+WnWt2cR6RS3N4V79qc=",[m
       "requires": {[m
[31m-        "expand-range": "1.8.2",[m
[31m-        "preserve": "0.2.0",[m
[31m-        "repeat-element": "1.1.2"[m
[32m+[m[32m        "expand-range": "^1.8.1",[m
[32m+[m[32m        "preserve": "^0.2.0",[m
[32m+[m[32m        "repeat-element": "^1.1.2"[m
       }[m
     },[m
     "brorand": {[m
[36m@@ -1378,12 +1378,12 @@[m
       "resolved": "https://registry.npmjs.org/browserify-aes/-/browserify-aes-1.1.1.tgz",[m
       "integrity": "sha512-UGnTYAnB2a3YuYKIRy1/4FB2HdM866E0qC46JXvVTYKlBlZlnvfpSfY6OKfXZAkv70eJ2a1SqzpAo5CRhZGDFg==",[m
       "requires": {[m
[31m-        "buffer-xor": "1.0.3",[m
[31m-        "cipher-base": "1.0.4",[m
[31m-        "create-hash": "1.1.3",[m
[31m-        "evp_bytestokey": "1.0.3",[m
[31m-        "inherits": "2.0.3",[m
[31m-        "safe-buffer": "5.1.1"[m
[32m+[m[32m        "buffer-xor": "^1.0.3",[m
[32m+[m[32m        "cipher-base": "^1.0.0",[m
[32m+[m[32m        "create-hash": "^1.1.0",[m
[32m+[m[32m        "evp_bytestokey": "^1.0.3",[m
[32m+[m[32m        "inherits": "^2.0.1",[m
[32m+[m[32m        "safe-buffer": "^5.0.1"[m
       }[m
     },[m
     "browserify-cipher": {[m
[36m@@ -1391,9 +1391,9 @@[m
       "resolved": "https://registry.npmjs.org/browserify-cipher/-/browserify-cipher-1.0.0.tgz",[m
       "integrity": "sha1-mYgkSHS/XtTijalWZtzWasj8Njo=",[m
       "requires": {[m
[31m-        "browserify-aes": "1.1.1",[m
[31m-        "browserify-des": "1.0.0",[m
[31m-        "evp_bytestokey": "1.0.3"[m
[32m+[m[32m        "browserify-aes": "^1.0.4",[m
[32m+[m[32m        "browserify-des": "^1.0.0",[m
[32m+[m[32m        "evp_bytestokey": "^1.0.0"[m
       }[m
     },[m
     "browserify-des": {[m
[36m@@ -1401,9 +1401,9 @@[m
       "resolved": "https://registry.npmjs.org/browserify-des/-/browserify-des-1.0.0.tgz",[m
       "integrity": "sha1-2qJ3cXRwki7S/hhZQRihdUOXId0=",[m
       "requires": {[m
[31m-        "cipher-base": "1.0.4",[m
[31m-        "des.js": "1.0.0",[m
[31m-        "inherits": "2.0.3"[m
[32m+[m[32m        "cipher-base": "^1.0.1",[m
[32m+[m[32m        "des.js": "^1.0.0",[m
[32m+[m[32m        "inherits": "^2.0.1"[m
       }[m
     },[m
     "browserify-rsa": {[m
[36m@@ -1411,8 +1411,8 @@[m
       "resolved": "https://registry.npmjs.org/browserify-rsa/-/browserify-rsa-4.0.1.tgz",[m
       "integrity": "sha1-IeCr+vbyApzy+vsTNWenAdQTVSQ=",[m
       "requires": {[m
[31m-        "bn.js": "4.11.8",[m
[31m-        "randombytes": "2.0.5"[m
[32m+[m[32m        "bn.js": "^4.1.0",[m
[32m+[m[32m        "randombytes": "^2.0.1"[m
       }[m
     },[m
     "browserify-sign": {[m
[36m@@ -1420,13 +1420,13 @@[m
       "resolved": "https://registry.npmjs.org/browserify-sign/-/browserify-sign-4.0.4.tgz",[m
       "integrity": "sha1-qk62jl17ZYuqa/alfmMMvXqT0pg=",[m
       "requires": {[m
[31m-        "bn.js": "4.11.8",[m
[31m-        "browserify-rsa": "4.0.1",[m
[31m-        "create-hash": "1.1.3",[m
[31m-        "create-hmac": "1.1.6",[m
[31m-        "elliptic": "6.4.0",[m
[31m-        "inherits": "2.0.3",[m
[31m-        "parse-asn1": "5.1.0"[m
[32m+[m[32m        "bn.js": "^4.1.1",[m
[32m+[m[32m        "browserify-rsa": "^4.0.0",[m
[32m+[m[32m        "create-hash": "^1.1.0",[m
[32m+[m[32m        "create-hmac": "^1.1.2",[m
[32m+[m[32m        "elliptic": "^6.0.0",[m
[32m+[m[32m        "inherits": "^2.0.1",[m
[32m+[m[32m        "parse-asn1": "^5.0.0"[m
       }[m
     },[m
     "browserify-zlib": {[m
[36m@@ -1434,7 +1434,7 @@[m
       "resolved": "https://registry.npmjs.org/browserify-zlib/-/browserify-zlib-0.2.0.tgz",[m
       "integrity": "sha512-Z942RysHXmJrhqk88FmKBVq/v5tqmSkDz7p54G/MGyjMnCFFnC79XWNbg+Vta8W6Wb2qtSZTSxIGkJrRpCFEiA==",[m
       "requires": {[m
[31m-        "pako": "1.0.6"[m
[32m+[m[32m        "pako": "~1.0.5"[m
       }[m
     },[m
     "browserslist": {[m
[36m@@ -1442,8 +1442,8 @@[m
       "resolved": "https://registry.npmjs.org/browserslist/-/browserslist-2.11.0.tgz",[m
       "integrity": "sha512-mNYp0RNeu1xueGuJFSXkU+K0nH+dBE/gcjtyhtNKfU8hwdrVIfoA7i5iFSjOmzkGdL2QaO7YX9ExiVPE7AY9JA==",[m
       "requires": {[m
[31m-        "caniuse-lite": "1.0.30000787",[m
[31m-        "electron-to-chromium": "1.3.30"[m
[32m+[m[32m        "caniuse-lite": "^1.0.30000784",[m
[32m+[m[32m        "electron-to-chromium": "^1.3.30"[m
       }[m
     },[m
     "bser": {[m
[36m@@ -1451,7 +1451,7 @@[m
       "resolved": "https://registry.npmjs.org/bser/-/bser-2.0.0.tgz",[m
       "integrity": "sha1-mseNPtXZFYBP2HrLFYvHlxR6Fxk=",[m
       "requires": {[m
[31m-        "node-int64": "0.4.0"[m
[32m+[m[32m        "node-int64": "^0.4.0"[m
       }[m
     },[m
     "buffer": {[m
[36m@@ -1459,9 +1459,9 @@[m
       "resolved": "https://registry.npmjs.org/buffer/-/buffer-4.9.1.tgz",[m
       "integrity": "sha1-bRu2AbB6TvztlwlBMgkwJ8lbwpg=",[m
       "requires": {[m
[31m-        "base64-js": "1.2.1",[m
[31m-        "ieee754": "1.1.8",[m
[31m-        "isarray": "1.0.0"[m
[32m+[m[32m        "base64-js": "^1.0.2",[m
[32m+[m[32m        "ieee754": "^1.1.4",[m
[32m+[m[32m        "isarray": "^1.0.0"[m
       },[m
       "dependencies": {[m
         "isarray": {[m
[36m@@ -1501,7 +1501,7 @@[m
       "resolved": "https://registry.npmjs.org/caller-path/-/caller-path-0.1.0.tgz",[m
       "integrity": "sha1-lAhe9jWB7NPaqSREqP6U6CV3dR8=",[m
       "requires": {[m
[31m-        "callsites": "0.2.0"[m
[32m+[m[32m        "callsites": "^0.2.0"[m
       }[m
     },[m
     "callsites": {[m
[36m@@ -1514,8 +1514,8 @@[m
       "resolved": "https://registry.npmjs.org/camel-case/-/camel-case-3.0.0.tgz",[m
       "integrity": "sha1-yjw2iKTpzzpM2nd9xNy8cTJJz3M=",[m
       "requires": {[m
[31m-        "no-case": "2.3.2",[m
[31m-        "upper-case": "1.1.3"[m
[32m+[m[32m        "no-case": "^2.2.0",[m
[32m+[m[32m        "upper-case": "^1.1.1"[m
       }[m
     },[m
     "camelcase": {[m
[36m@@ -1528,8 +1528,8 @@[m
       "resolved": "https://registry.npmjs.org/camelcase-keys/-/camelcase-keys-2.1.0.tgz",[m
       "integrity": "sha1-MIvur/3ygRkFHvodkyITyRuPkuc=",[m
       "requires": {[m
[31m-        "camelcase": "2.1.1",[m
[31m-        "map-obj": "1.0.1"[m
[32m+[m[32m        "camelcase": "^2.0.0",[m
[32m+[m[32m        "map-obj": "^1.0.0"[m
       },[m
       "dependencies": {[m
         "camelcase": {[m
[36m@@ -1544,10 +1544,10 @@[m
       "resolved": "https://registry.npmjs.org/caniuse-api/-/caniuse-api-1.6.1.tgz",[m
       "integrity": "sha1-tTTnxzTE+B7F++isoq0kNUuWLGw=",[m
       "requires": {[m
[31m-        "browserslist": "1.7.7",[m
[31m-        "caniuse-db": "1.0.30000787",[m
[31m-        "lodash.memoize": "4.1.2",[m
[31m-        "lodash.uniq": "4.5.0"[m
[32m+[m[32m        "browserslist": "^1.3.6",[m
[32m+[m[32m        "caniuse-db": "^1.0.30000529",[m
[32m+[m[32m        "lodash.memoize": "^4.1.2",[m
[32m+[m[32m        "lodash.uniq": "^4.5.0"[m
       },[m
       "dependencies": {[m
         "browserslist": {[m
[36m@@ -1555,8 +1555,8 @@[m
           "resolved": "https://registry.npmjs.org/browserslist/-/browserslist-1.7.7.tgz",[m
           "integrity": "sha1-C9dnBCWL6CmyOYu1Dkti0aFmsLk=",[m
           "requires": {[m
[31m-            "caniuse-db": "1.0.30000787",[m
[31m-            "electron-to-chromium": "1.3.30"[m
[32m+[m[32m            "caniuse-db": "^1.0.30000639",[m
[32m+[m[32m            "electron-to-chromium": "^1.2.7"[m
           }[m
         }[m
       }[m
[36m@@ -1591,8 +1591,8 @@[m
       "resolved": "https://registry.npmjs.org/center-align/-/center-align-0.1.3.tgz",[m
       "integrity": "sha1-qg0yYptu6XIgBBHL1EYckHvCt60=",[m
       "requires": {[m
[31m-        "align-text": "0.1.4",[m
[31m-        "lazy-cache": "1.0.4"[m
[32m+[m[32m        "align-text": "^0.1.3",[m
[32m+[m[32m        "lazy-cache": "^1.0.3"[m
       }[m
     },[m
     "chalk": {[m
[36m@@ -1600,11 +1600,11 @@[m
       "resolved": "https://registry.npmjs.org/chalk/-/chalk-1.1.3.tgz",[m
       "integrity": "sha1-qBFcVeSnAv5NFQq9OHKCKn4J/Jg=",[m
       "requires": {[m
[31m-        "ansi-styles": "2.2.1",[m
[31m-        "escape-string-regexp": "1.0.5",[m
[31m-        "has-ansi": "2.0.0",[m
[31m-        "strip-ansi": "3.0.1",[m
[31m-        "supports-color": "2.0.0"[m
[32m+[m[32m        "ansi-styles": "^2.2.1",[m
[32m+[m[32m        "escape-string-regexp": "^1.0.2",[m
[32m+[m[32m        "has-ansi": "^2.0.0",[m
[32m+[m[32m        "strip-ansi": "^3.0.0",[m
[32m+[m[32m        "supports-color": "^2.0.0"[m
       },[m
       "dependencies": {[m
         "ansi-styles": {[m
[36m@@ -1629,15 +1629,15 @@[m
       "resolved": "https://registry.npmjs.org/chokidar/-/chokidar-1.7.0.tgz",[m
       "integrity": "sha1-eY5ol3gVHIB2tLNg5e3SjNortGg=",[m
       "requires": {[m
[31m-        "anymatch": "1.3.2",[m
[31m-        "async-each": "1.0.1",[m
[31m-        "fsevents": "1.2.7",[m
[31m-        "glob-parent": "2.0.0",[m
[31m-        "inherits": "2.0.3",[m
[31m-        "is-binary-path": "1.0.1",[m
[31m-        "is-glob": "2.0.1",[m
[31m-        "path-is-absolute": "1.0.1",[m
[31m-        "readdirp": "2.1.0"[m
[32m+[m[32m        "anymatch": "^1.3.0",[m
[32m+[m[32m        "async-each": "^1.0.0",[m
[32m+[m[32m        "fsevents": "^1.0.0",[m
[32m+[m[32m        "glob-parent": "^2.0.0",[m
[32m+[m[32m        "inherits": "^2.0.1",[m
[32m+[m[32m        "is-binary-path": "^1.0.0",[m
[32m+[m[32m        "is-glob": "^2.0.0",[m
[32m+[m[32m        "path-is-absolute": "^1.0.0",[m
[32m+[m[32m        "readdirp": "^2.0.0"[m
       }[m
     },[m
     "ci-info": {[m
[36m@@ -1650,8 +1650,8 @@[m
       "resolved": "https://registry.npmjs.org/cipher-base/-/cipher-base-1.0.4.tgz",[m
       "integrity": "sha512-Kkht5ye6ZGmwv40uUDZztayT2ThLQGfnj/T71N/XzeZeo3nf8foyW7zGTsPYkEya3m5f3cAypH+qe7YOrM1U2Q==",[m
       "requires": {[m
[31m-        "inherits": "2.0.3",[m
[31m-        "safe-buffer": "5.1.1"[m
[32m+[m[32m        "inherits": "^2.0.1",[m
[32m+[m[32m        "safe-buffer": "^5.0.1"[m
       }[m
     },[m
     "circular-json": {[m
[36m@@ -1664,7 +1664,7 @@[m
       "resolved": "https://registry.npmjs.org/clap/-/clap-1.2.3.tgz",[m
       "integrity": "sha512-4CoL/A3hf90V3VIEjeuhSvlGFEHKzOz+Wfc2IVZc+FaUgU0ZQafJTP49fvnULipOPcAfqhyI2duwQyns6xqjYA==",[m
       "requires": {[m
[31m-        "chalk": "1.1.3"[m
[32m+[m[32m        "chalk": "^1.1.3"[m
       }[m
     },[m
     "classnames": {[m
[36m@@ -1677,7 +1677,7 @@[m
       "resolved": "https://registry.npmjs.org/clean-css/-/clean-css-4.1.9.tgz",[m
       "integrity": "sha1-Nc7ornaHpJuYA09w3gDE7dOCYwE=",[m
       "requires": {[m
[31m-        "source-map": "0.5.7"[m
[32m+[m[32m        "source-map": "0.5.x"[m
       },[m
       "dependencies": {[m
         "source-map": {[m
[36m@@ -1697,7 +1697,7 @@[m
       "resolved": "https://registry.npmjs.org/cli-cursor/-/cli-cursor-2.1.0.tgz",[m
       "integrity": "sha1-s12sN2R5+sw+lHR9QdDQ9SOP/LU=",[m
       "requires": {[m
[31m-        "restore-cursor": "2.0.0"[m
[32m+[m[32m        "restore-cursor": "^2.0.0"[m
       }[m
     },[m
     "cli-width": {[m
[36m@@ -1710,8 +1710,8 @@[m
       "resolved": "https://registry.npmjs.org/cliui/-/cliui-2.1.0.tgz",[m
       "integrity": "sha1-S0dXYP+AJkx2LDoXGQMukcf+oNE=",[m
       "requires": {[m
[31m-        "center-align": "0.1.3",[m
[31m-        "right-align": "0.1.3",[m
[32m+[m[32m        "center-align": "^0.1.1",[m
[32m+[m[32m        "right-align": "^0.1.1",[m
         "wordwrap": "0.0.2"[m
       },[m
       "dependencies": {[m
[36m@@ -1737,7 +1737,7 @@[m
       "resolved": "https://registry.npmjs.org/coa/-/coa-1.0.4.tgz",[m
       "integrity": "sha1-qe8VNmDWqGqL3sAomlxoTSF0Mv0=",[m
       "requires": {[m
[31m-        "q": "1.5.1"[m
[32m+[m[32m        "q": "^1.1.2"[m
       }[m
     },[m
     "code-point-at": {[m
[36m@@ -1750,9 +1750,9 @@[m
       "resolved": "https://registry.npmjs.org/color/-/color-0.11.4.tgz",[m
       "integrity": "sha1-bXtcdPtl6EHNSHkq0e1eB7kE12Q=",[m
       "requires": {[m
[31m-        "clone": "1.0.3",[m
[31m-        "color-convert": "1.9.1",[m
[31m-        "color-string": "0.3.0"[m
[32m+[m[32m        "clone": "^1.0.2",[m
[32m+[m[32m        "color-convert": "^1.3.0",[m
[32m+[m[32m        "color-string": "^0.3.0"[m
       }[m
     },[m
     "color-convert": {[m
[36m@@ -1760,7 +1760,7 @@[m
       "resolved": "https://registry.npmjs.org/color-convert/-/color-convert-1.9.1.tgz",[m
       "integrity": "sha512-mjGanIiwQJskCC18rPR6OmrZ6fm2Lc7PeGFYwCmy5J34wC6F1PzdGL6xeMfmgicfYcNLGuVFA3WzXtIDCQSZxQ==",[m
       "requires": {[m
[31m-        "color-name": "1.1.3"[m
[32m+[m[32m        "color-name": "^1.1.1"[m
       }[m
     },[m
     "color-name": {[m
[36m@@ -1773,7 +1773,7 @@[m
       "resolved": "https://registry.npmjs.org/color-string/-/color-string-0.3.0.tgz",[m
       "integrity": "sha1-J9RvtnAlxcL6JZk7+/V55HhBuZE=",[m
       "requires": {[m
[31m-        "color-name": "1.1.3"[m
[32m+[m[32m        "color-name": "^1.0.0"[m
       }[m
     },[m
     "colormin": {[m
[36m@@ -1781,9 +1781,9 @@[m
       "resolved": "https://registry.npmjs.org/colormin/-/colormin-1.1.2.tgz",[m
       "integrity": "sha1-6i90IKcrlogaOKrlnsEkpvcpgTM=",[m
       "requires": {[m
[31m-        "color": "0.11.4",[m
[32m+[m[32m        "color": "^0.11.0",[m
         "css-color-names": "0.0.4",[m
[31m-        "has": "1.0.1"[m
[32m+[m[32m        "has": "^1.0.1"[m
       }[m
     },[m
     "colors": {[m
[36m@@ -1796,7 +1796,7 @@[m
       "resolved": "https://registry.npmjs.org/combined-stream/-/combined-stream-1.0.5.tgz",[m
       "integrity": "sha1-k4NwpXtKUd6ix3wV1cX9+JUWQAk=",[m
       "requires": {[m
[31m-        "delayed-stream": "1.0.0"[m
[32m+[m[32m        "delayed-stream": "~1.0.0"[m
       }[m
     },[m
     "commander": {[m
[36m@@ -1814,7 +1814,7 @@[m
       "resolved": "https://registry.npmjs.org/compressible/-/compressible-2.0.12.tgz",[m
       "integrity": "sha1-xZpcmdt2dn6YdlAOJx72OzSTvWY=",[m
       "requires": {[m
[31m-        "mime-db": "1.30.0"[m
[32m+[m[32m        "mime-db": ">= 1.30.0 < 2"[m
       }[m
     },[m
     "compression": {[m
[36m@@ -1822,13 +1822,13 @@[m
       "resolved": "https://registry.npmjs.org/compression/-/compression-1.7.1.tgz",[m
       "integrity": "sha1-7/JgPvwuIs+G810uuTWJ+YdTc9s=",[m
       "requires": {[m
[31m-        "accepts": "1.3.4",[m
[32m+[m[32m        "accepts": "~1.3.4",[m
         "bytes": "3.0.0",[m
[31m-        "compressible": "2.0.12",[m
[32m+[m[32m        "compressible": "~2.0.11",[m
         "debug": "2.6.9",[m
[31m-        "on-headers": "1.0.1",[m
[32m+[m[32m        "on-headers": "~1.0.1",[m
         "safe-buffer": "5.1.1",[m
[31m-        "vary": "1.1.2"[m
[32m+[m[32m        "vary": "~1.1.2"[m
       }[m
     },[m
     "concat-map": {[m
[36m@@ -1841,9 +1841,9 @@[m
       "resolved": "https://registry.npmjs.org/concat-stream/-/concat-stream-1.6.0.tgz",[m
       "integrity": "sha1-CqxmL9Ur54lk1VMvaUeE5wEQrPc=",[m
       "requires": {[m
[31m-        "inherits": "2.0.3",[m
[31m-        "readable-stream": "2.3.3",[m
[31m-        "typedarray": "0.0.6"[m
[32m+[m[32m        "inherits": "^2.0.3",[m
[32m+[m[32m        "readable-stream": "^2.2.2",[m
[32m+[m[32m        "typedarray": "^0.0.6"[m
       }[m
     },[m
     "configstore": {[m
[36m@@ -1851,15 +1851,15 @@[m
       "resolved": "https://registry.npmjs.org/configstore/-/configstore-2.1.0.tgz",[m
       "integrity": "sha1-c3o6cDbpiGECqmCZ5HuzOrGroaE=",[m
       "requires": {[m
[31m-        "dot-prop": "3.0.0",[m
[31m-        "graceful-fs": "4.1.11",[m
[31m-        "mkdirp": "0.5.1",[m
[31m-        "object-assign": "4.1.1",[m
[31m-        "os-tmpdir": "1.0.2",[m
[31m-        "osenv": "0.1.4",[m
[31m-        "uuid": "2.0.3",[m
[31m-        "write-file-atomic": "1.3.4",[m
[31m-        "xdg-basedir": "2.0.0"[m
[32m+[m[32m        "dot-prop": "^3.0.0",[m
[32m+[m[32m        "graceful-fs": "^4.1.2",[m
[32m+[m[32m        "mkdirp": "^0.5.0",[m
[32m+[m[32m        "object-assign": "^4.0.1",[m
[32m+[m[32m        "os-tmpdir": "^1.0.0",[m
[32m+[m[32m        "osenv": "^0.1.0",[m
[32m+[m[32m        "uuid": "^2.0.1",[m
[32m+[m[32m        "write-file-atomic": "^1.1.2",[m
[32m+[m[32m        "xdg-basedir": "^2.0.0"[m
       },[m
       "dependencies": {[m
         "uuid": {[m
[36m@@ -1879,7 +1879,7 @@[m
       "resolved": "https://registry.npmjs.org/console-browserify/-/console-browserify-1.1.0.tgz",[m
       "integrity": "sha1-8CQcRXMKn8YyOyBtvzjtx0HQuxA=",[m
       "requires": {[m
[31m-        "date-now": "0.1.4"[m
[32m+[m[32m        "date-now": "^0.1.4"[m
       }[m
     },[m
     "constants-browserify": {[m
[36m@@ -1932,13 +1932,13 @@[m
       "resolved": "https://registry.npmjs.org/cosmiconfig/-/cosmiconfig-2.2.2.tgz",[m
       "integrity": "sha512-GiNXLwAFPYHy25XmTPpafYvn3CLAkJ8FLsscq78MQd1Kh0OU6Yzhn4eV2MVF4G9WEQZoWEGltatdR+ntGPMl5A==",[m
       "requires": {[m
[31m-        "is-directory": "0.3.1",[m
[31m-        "js-yaml": "3.7.0",[m
[31m-        "minimist": "1.2.0",[m
[31m-        "object-assign": "4.1.1",[m
[31m-        "os-homedir": "1.0.2",[m
[31m-        "parse-json": "2.2.0",[m
[31m-        "require-from-string": "1.2.1"[m
[32m+[m[32m        "is-directory": "^0.3.1",[m
[32m+[m[32m        "js-yaml": "^3.4.3",[m
[32m+[m[32m        "minimist": "^1.2.0",[m
[32m+[m[32m        "object-assign": "^4.1.0",[m
[32m+[m[32m        "os-homedir": "^1.0.1",[m
[32m+[m[32m        "parse-json": "^2.2.0",[m
[32m+[m[32m        "require-from-string": "^1.1.0"[m
       },[m
       "dependencies": {[m
         "minimist": {[m
[36m@@ -1953,8 +1953,8 @@[m
       "resolved": "https://registry.npmjs.org/create-ecdh/-/create-ecdh-4.0.0.tgz",[m
       "integrity": "sha1-iIxyNZbN92EvZJgjPuvXo1MBc30=",[m
       "requires": {[m
[31m-        "bn.js": "4.11.8",[m
[31m-        "elliptic": "6.4.0"[m
[32m+[m[32m        "bn.js": "^4.1.0",[m
[32m+[m[32m        "elliptic": "^6.0.0"[m
       }[m
     },[m
     "create-error-class": {[m
[36m@@ -1962,7 +1962,7 @@[m
       "resolved": "https://registry.npmjs.org/create-error-class/-/create-error-class-3.0.2.tgz",[m
       "integrity": "sha1-Br56vvlHo/FKMP1hBnHUAbyot7Y=",[m
       "requires": {[m
[31m-        "capture-stack-trace": "1.0.0"[m
[32m+[m[32m        "capture-stack-trace": "^1.0.0"[m
       }[m
     },[m
     "create-hash": {[m
[36m@@ -1970,10 +1970,10 @@[m
       "resolved": "https://registry.npmjs.org/create-hash/-/create-hash-1.1.3.tgz",[m
       "integrity": "sha1-YGBCrIuSYnUPSDyt2rD1gZFy2P0=",[m
       "requires": {[m
[31m-        "cipher-base": "1.0.4",[m
[31m-        "inherits": "2.0.3",[m
[31m-        "ripemd160": "2.0.1",[m
[31m-        "sha.js": "2.4.9"[m
[32m+[m[32m        "cipher-base": "^1.0.1",[m
[32m+[m[32m        "inherits": "^2.0.1",[m
[32m+[m[32m        "ripemd160": "^2.0.0",[m
[32m+[m[32m        "sha.js": "^2.4.0"[m
       }[m
     },[m
     "create-hmac": {[m
[36m@@ -1981,22 +1981,27 @@[m
       "resolved": "https://registry.npmjs.org/create-hmac/-/create-hmac-1.1.6.tgz",[m
       "integrity": "sha1-rLniIaThe9sHbpBlfEK5PjcmzwY=",[m
       "requires": {[m
[31m-        "cipher-base": "1.0.4",[m
[31m-        "create-hash": "1.1.3",[m
[31m-        "inherits": "2.0.3",[m
[31m-        "ripemd160": "2.0.1",[m
[31m-        "safe-buffer": "5.1.1",[m
[31m-        "sha.js": "2.4.9"[m
[32m+[m[32m        "cipher-base": "^1.0.3",[m
[32m+[m[32m        "create-hash": "^1.1.0",[m
[32m+[m[32m        "inherits": "^2.0.1",[m
[32m+[m[32m        "ripemd160": "^2.0.0",[m
[32m+[m[32m        "safe-buffer": "^5.0.1",[m
[32m+[m[32m        "sha.js": "^2.4.8"[m
       }[m
     },[m
[32m+[m[32m    "cropperjs": {[m
[32m+[m[32m      "version": "1.0.0-rc.3",[m
[32m+[m[32m      "resolved": "https://registry.npmjs.org/cropperjs/-/cropperjs-1.0.0-rc.3.tgz",[m
[32m+[m[32m      "integrity": "sha512-3w3Rg95zHeVSAidvsoCzkYo9IycuTkU7pdP+lckQg2PY72HnFjj4JtS1L4sPumVzOU++e14BYp20ZbVczvVN1Q=="[m
[32m+[m[32m    },[m
     "cross-spawn": {[m
       "version": "5.1.0",[m
       "resolved": "https://registry.npmjs.org/cross-spawn/-/cross-spawn-5.1.0.tgz",[m
       "integrity": "sha1-6L0O/uWPz/b4+UUQoKVUu/ojVEk=",[m
       "requires": {[m
[31m-        "lru-cache": "4.1.1",[m
[31m-        "shebang-command": "1.2.0",[m
[31m-        "which": "1.3.0"[m
[32m+[m[32m        "lru-cache": "^4.0.1",[m
[32m+[m[32m        "shebang-command": "^1.2.0",[m
[32m+[m[32m        "which": "^1.2.9"[m
       }[m
     },[m
     "cryptiles": {[m
[36m@@ -2004,7 +2009,7 @@[m
       "resolved": "https://registry.npmjs.org/cryptiles/-/cryptiles-3.1.2.tgz",[m
       "integrity": "sha1-qJ+7Ig9c4l7FboxKqKT9e1sNKf4=",[m
       "requires": {[m
[31m-        "boom": "5.2.0"[m
[32m+[m[32m        "boom": "5.x.x"[m
       },[m
       "dependencies": {[m
         "boom": {[m
[36m@@ -2012,7 +2017,7 @@[m
           "resolved": "https://registry.npmjs.org/boom/-/boom-5.2.0.tgz",[m
           "integrity": "sha512-Z5BTk6ZRe4tXXQlkqftmsAUANpXmuwlsF5Oov8ThoMbQRzdGTA1ngYRW160GexgOgjsFOKJz0LYhoNi+2AMBUw==",[m
           "requires": {[m
[31m-            "hoek": "4.2.0"[m
[32m+[m[32m            "hoek": "4.x.x"[m
           }[m
         }[m
       }[m
[36m@@ -2022,17 +2027,17 @@[m
       "resolved": "https://registry.npmjs.org/crypto-browserify/-/crypto-browserify-3.12.0.tgz",[m
       "integrity": "sha512-fz4spIh+znjO2VjL+IdhEpRJ3YN6sMzITSBijk6FK2UvTqruSQW+/cCZTSNsMiZNvUeq0CqurF+dAbyiGOY6Wg==",[m
       "requires": {[m
[31m-        "browserify-cipher": "1.0.0",[m
[31m-        "browserify-sign": "4.0.4",[m
[31m-        "create-ecdh": "4.0.0",[m
[31m-        "create-hash": "1.1.3",[m
[31m-        "create-hmac": "1.1.6",[m
[31m-        "diffie-hellman": "5.0.2",[m
[31m-        "inherits": "2.0.3",[m
[31m-        "pbkdf2": "3.0.14",[m
[31m-        "public-encrypt": "4.0.0",[m
[31m-        "randombytes": "2.0.5",[m
[31m-        "randomfill": "1.0.3"[m
[32m+[m[32m        "browserify-cipher": "^1.0.0",[m
[32m+[m[32m        "browserify-sign": "^4.0.0",[m
[32m+[m[32m        "create-ecdh": "^4.0.0",[m
[32m+[m[32m        "create-hash": "^1.1.0",[m
[32m+[m[32m        "create-hmac": "^1.1.0",[m
[32m+[m[32m        "diffie-hellman": "^5.0.0",[m
[32m+[m[32m        "inherits": "^2.0.1",[m
[32m+[m[32m        "pbkdf2": "^3.0.3",[m
[32m+[m[32m        "public-encrypt": "^4.0.0",[m
[32m+[m[32m        "randombytes": "^2.0.0",[m
[32m+[m[32m        "randomfill": "^1.0.3"[m
       }[m
     },[m
     "css-color-names": {[m
[36m@@ -2045,20 +2050,20 @@[m
       "resolved": "https://registry.npmjs.org/css-loader/-/css-loader-0.28.7.tgz",[m
       "integrity": "sha512-GxMpax8a/VgcfRrVy0gXD6yLd5ePYbXX/5zGgTVYp4wXtJklS8Z2VaUArJgc//f6/Dzil7BaJObdSv8eKKCPgg==",[m
       "requires": {[m
[31m-        "babel-code-frame": "6.26.0",[m
[31m-        "css-selector-tokenizer": "0.7.0",[m
[31m-        "cssnano": "3.10.0",[m
[31m-        "icss-utils": "2.1.0",[m
[31m-        "loader-utils": "1.1.0",[m
[31m-        "lodash.camelcase": "4.3.0",[m
[31m-        "object-assign": "4.1.1",[m
[31m-        "postcss": "5.2.18",[m
[31m-        "postcss-modules-extract-imports": "1.1.0",[m
[31m-        "postcss-modules-local-by-default": "1.2.0",[m
[31m-        "postcss-modules-scope": "1.1.0",[m
[31m-        "postcss-modules-values": "1.3.0",[m
[31m-        "postcss-value-parser": "3.3.0",[m
[31m-        "source-list-map": "2.0.0"[m
[32m+[m[32m        "babel-code-frame": "^6.11.0",[m
[32m+[m[32m        "css-selector-tokenizer": "^0.7.0",[m
[32m+[m[32m        "cssnano": ">=2.6.1 <4",[m
[32m+[m[32m        "icss-utils": "^2.1.0",[m
[32m+[m[32m        "loader-utils": "^1.0.2",[m
[32m+[m[32m        "lodash.camelcase": "^4.3.0",[m
[32m+[m[32m        "object-assign": "^4.0.1",[m
[32m+[m[32m        "postcss": "^5.0.6",[m
[32m+[m[32m        "postcss-modules-extract-imports": "^1.0.0",[m
[32m+[m[32m        "postcss-modules-local-by-default": "^1.0.1",[m
[32m+[m[32m        "postcss-modules-scope": "^1.0.0",[m
[32m+[m[32m        "postcss-modules-values": "^1.1.0",[m
[32m+[m[32m        "postcss-value-parser": "^3.3.0",[m
[32m+[m[32m        "source-list-map": "^2.0.0"[m
       },[m
       "dependencies": {[m
         "has-flag": {[m
[36m@@ -2071,10 +2076,10 @@[m
           "resolved": "https://registry.npmjs.org/postcss/-/postcss-5.2.18.tgz",[m
           "integrity": "sha512-zrUjRRe1bpXKsX1qAJNJjqZViErVuyEkMTRrwu4ud4sbTtIBRmtaYDrHmcGgmrbsW3MHfmtIf+vJumgQn+PrXg==",[m
           "requires": {[m
[31m-            "chalk": "1.1.3",[m
[31m-            "js-base64": "2.4.0",[m
[31m-            "source-map": "0.5.7",[m
[31m-            "supports-color": "3.2.3"[m
[32m+[m[32m            "chalk": "^1.1.3",[m
[32m+[m[32m            "js-base64": "^2.1.9",[m
[32m+[m[32m            "source-map": "^0.5.6",[m
[32m+[m[32m            "supports-color": "^3.2.3"[m
           }[m
         },[m
         "source-map": {[m
[36m@@ -2087,7 +2092,7 @@[m
           "resolved": "https://registry.npmjs.org/supports-color/-/supports-color-3.2.3.tgz",[m
           "integrity": "sha1-ZawFBLOVQXHYpklGsq48u4pfVPY=",[m
           "requires": {[m
[31m-            "has-flag": "1.0.0"[m
[32m+[m[32m            "has-flag": "^1.0.0"[m
           }[m
         }[m
       }[m
[36m@@ -2097,10 +2102,10 @@[m
       "resolved": "https://registry.npmjs.org/css-select/-/css-select-1.2.0.tgz",[m
       "integrity": "sha1-KzoRBTnFNV8c2NMUYj6HCxIeyFg=",[m
       "requires": {[m
[31m-        "boolbase": "1.0.0",[m
[31m-        "css-what": "2.1.0",[m
[32m+[m[32m        "boolbase": "~1.0.0",[m
[32m+[m[32m        "css-what": "2.1",[m
         "domutils": "1.5.1",[m
[31m-        "nth-check": "1.0.1"[m
[32m+[m[32m        "nth-check": "~1.0.1"[m
       }[m
     },[m
     "css-selector-tokenizer": {[m
[36m@@ -2108,9 +2113,9 @@[m
       "resolved": "https://registry.npmjs.org/css-selector-tokenizer/-/css-selector-tokenizer-0.7.0.tgz",[m
       "integrity": "sha1-5piEdK6MlTR3v15+/s/OzNnPTIY=",[m
       "requires": {[m
[31m-        "cssesc": "0.1.0",[m
[31m-        "fastparse": "1.1.1",[m
[31m-        "regexpu-core": "1.0.0"[m
[32m+[m[32m        "cssesc": "^0.1.0",[m
[32m+[m[32m        "fastparse": "^1.1.1",[m
[32m+[m[32m        "regexpu-core": "^1.0.0"[m
       },[m
       "dependencies": {[m
         "regexpu-core": {[m
[36m@@ -2118,9 +2123,9 @@[m
           "resolved": "https://registry.npmjs.org/regexpu-core/-/regexpu-core-1.0.0.tgz",[m
           "integrity": "sha1-hqdj9Y7k18L2sQLkdkBQ3n7ZDGs=",[m
           "requires": {[m
[31m-            "regenerate": "1.3.3",[m
[31m-            "regjsgen": "0.2.0",[m
[31m-            "regjsparser": "0.1.5"[m
[32m+[m[32m            "regenerate": "^1.2.1",[m
[32m+[m[32m            "regjsgen": "^0.2.0",[m
[32m+[m[32m            "regjsparser": "^0.1.4"[m
           }[m
         }[m
       }[m
[36m@@ -2140,38 +2145,38 @@[m
       "resolved": "https://registry.npmjs.org/cssnano/-/cssnano-3.10.0.tgz",[m
       "integrity": "sha1-Tzj2zqK5sX+gFJDyPx3GjqZcHDg=",[m
       "requires": {[m
[31m-        "autoprefixer": "6.7.7",[m
[31m-        "decamelize": "1.2.0",[m
[31m-        "defined": "1.0.0",[m
[31m-        "has": "1.0.1",[m
[31m-        "object-assign": "4.1.1",[m
[31m-        "postcss": "5.2.18",[m
[31m-        "postcss-calc": "5.3.1",[m
[31m-        "postcss-colormin": "2.2.2",[m
[31m-        "postcss-convert-values": "2.6.1",[m
[31m-        "postcss-discard-comments": "2.0.4",[m
[31m-        "postcss-discard-duplicates": "2.1.0",[m
[31m-        "postcss-discard-empty": "2.1.0",[m
[31m-        "postcss-discard-overridden": "0.1.1",[m
[31m-        "postcss-discard-unused": "2.2.3",[m
[31m-        "postcss-filter-plugins": "2.0.2",[m
[31m-        "postcss-merge-idents": "2.1.7",[m
[31m-        "postcss-merge-longhand": "2.0.2",[m
[31m-        "postcss-merge-rules": "2.1.2",[m
[31m-        "postcss-minify-font-values": "1.0.5",[m
[31m-        "postcss-minify-gradients": "1.0.5",[m
[31m-        "postcss-minify-params": "1.2.2",[m
[31m-        "postcss-minify-selectors": "2.1.1",[m
[31m-        "postcss-normalize-charset": "1.1.1",[m
[31m-        "postcss-normalize-url": "3.0.8",[m
[31m-        "postcss-ordered-values": "2.2.3",[m
[31m-        "postcss-reduce-idents": "2.4.0",[m
[31m-        "postcss-reduce-initial": "1.0.1",[m
[31m-        "postcss-reduce-transforms": "1.0.4",[m
[31m-        "postcss-svgo": "2.1.6",[m
[31m-        "postcss-unique-selectors": "2.0.2",[m
[31m-        "postcss-value-parser": "3.3.0",[m
[31m-        "postcss-zindex": "2.2.0"[m
[32m+[m[32m        "autoprefixer": "^6.3.1",[m
[32m+[m[32m        "decamelize": "^1.1.2",[m
[32m+[m[32m        "defined": "^1.0.0",[m
[32m+[m[32m        "has": "^1.0.1",[m
[32m+[m[32m        "object-assign": "^4.0.1",[m
[32m+[m[32m        "postcss": "^5.0.14",[m
[32m+[m[32m        "postcss-calc": "^5.2.0",[m
[32m+[m[32m        "postcss-colormin": "^2.1.8",[m
[32m+[m[32m        "postcss-convert-values": "^2.3.4",[m
[32m+[m[32m        "postcss-discard-comments": "^2.0.4",[m
[32m+[m[32m        "postcss-discard-duplicates": "^2.0.1",[m
[32m+[m[32m        "postcss-discard-empty": "^2.0.1",[m
[32m+[m[32m        "postcss-discard-overridden": "^0.1.1",[m
[32m+[m[32m        "postcss-discard-unused": "^2.2.1",[m
[32m+[m[32m        "postcss-filter-plugins": "^2.0.0",[m
[32m+[m[32m        "postcss-merge-idents": "^2.1.5",[m
[32m+[m[32m        "postcss-merge-longhand": "^2.0.1",[m
[32m+[m[32m        "postcss-merge-rules": "^2.0.3",[m
[32m+[m[32m        "postcss-minify-font-values": "^1.0.2",[m
[32m+[m[32m        "postcss-minify-gradients": "^1.0.1",[m
[32m+[m[32m        "postcss-minify-params": "^1.0.4",[m
[32m+[m[32m        "postcss-minify-selectors": "^2.0.4",[m
[32m+[m[32m        "postcss-normalize-charset": "^1.1.0",[m
[32m+[m[32m        "postcss-normalize-url": "^3.0.7",[m
[32m+[m[32m        "postcss-ordered-values": "^2.1.0",[m
[32m+[m[32m        "postcss-reduce-idents": "^2.2.2",[m
[32m+[m[32m        "postcss-reduce-initial": "^1.0.0",[m
[32m+[m[32m        "postcss-reduce-transforms": "^1.0.3",[m
[32m+[m[32m        "postcss-svgo": "^2.1.1",[m
[32m+[m[32m        "postcss-unique-selectors": "^2.0.2",[m
[32m+[m[32m        "postcss-value-parser": "^3.2.3",[m
[32m+[m[32m        "postcss-zindex": "^2.0.1"[m
       },[m
       "dependencies": {[m
         "autoprefixer": {[m
[36m@@ -2179,12 +2184,12 @@[m
           "resolved": "https://registry.npmjs.org/autoprefixer/-/autoprefixer-6.7.7.tgz",[m
           "integrity": "sha1-Hb0cg1ZY41zj+ZhAmdsAWFx4IBQ=",[m
           "requires": {[m
[31m-            "browserslist": "1.7.7",[m
[31m-            "caniuse-db": "1.0.30000787",[m
[31m-            "normalize-range": "0.1.2",[m
[31m-            "num2fraction": "1.2.2",[m
[31m-            "postcss": "5.2.18",[m
[31m-            "postcss-value-parser": "3.3.0"[m
[32m+[m[32m            "browserslist": "^1.7.6",[m
[32m+[m[32m            "caniuse-db": "^1.0.30000634",[m
[32m+[m[32m            "normalize-range": "^0.1.2",[m
[32m+[m[32m            "num2fraction": "^1.2.2",[m
[32m+[m[32m            "postcss": "^5.2.16",[m
[32m+[m[32m            "postcss-value-parser": "^3.2.3"[m
           }[m
         },[m
         "browserslist": {[m
[36m@@ -2192,8 +2197,8 @@[m
           "resolved": "https://registry.npmjs.org/browserslist/-/browserslist-1.7.7.tgz",[m
           "integrity": "sha1-C9dnBCWL6CmyOYu1Dkti0aFmsLk=",[m
           "requires": {[m
[31m-            "caniuse-db": "1.0.30000787",[m
[31m-            "electron-to-chromium": "1.3.30"[m
[32m+[m[32m            "caniuse-db": "^1.0.30000639",[m
[32m+[m[32m            "electron-to-chromium": "^1.2.7"[m
           }[m
         },[m
         "has-flag": {[m
[36m@@ -2206,10 +2211,10 @@[m
           "resolved": "https://registry.npmjs.org/postcss/-/postcss-5.2.18.tgz",[m
           "integrity": "sha512-zrUjRRe1bpXKsX1qAJNJjqZViErVuyEkMTRrwu4ud4sbTtIBRmtaYDrHmcGgmrbsW3MHfmtIf+vJumgQn+PrXg==",[m
           "requires": {[m
[31m-            "chalk": "1.1.3",[m
[31m-            "js-base64": "2.4.0",[m
[31m-            "source-map": "0.5.7",[m
[31m-            "supports-color": "3.2.3"[m
[32m+[m[32m            "chalk": "^1.1.3",[m
[32m+[m[32m            "js-base64": "^2.1.9",[m
[32m+[m[32m            "source-map": "^0.5.6",[m
[32m+[m[32m            "supports-color": "^3.2.3"[m
           }[m
         },[m
         "source-map": {[m
[36m@@ -2222,7 +2227,7 @@[m
           "resolved": "https://registry.npmjs.org/supports-color/-/supports-color-3.2.3.tgz",[m
           "integrity": "sha1-ZawFBLOVQXHYpklGsq48u4pfVPY=",[m
           "requires": {[m
[31m-            "has-flag": "1.0.0"[m
[32m+[m[32m            "has-flag": "^1.0.0"[m
           }[m
         }[m
       }[m
[36m@@ -2232,8 +2237,8 @@[m
       "resolved": "https://registry.npmjs.org/csso/-/csso-2.3.2.tgz",[m
       "integrity": "sha1-3dUsWHAz9J6Utx/FVWnyUuj/X4U=",[m
       "requires": {[m
[31m-        "clap": "1.2.3",[m
[31m-        "source-map": "0.5.7"[m
[32m+[m[32m        "clap": "^1.0.9",[m
[32m+[m[32m        "source-map": "^0.5.3"[m
       },[m
       "dependencies": {[m
         "source-map": {[m
[36m@@ -2253,7 +2258,7 @@[m
       "resolved": "https://registry.npmjs.org/cssstyle/-/cssstyle-0.2.37.tgz",[m
       "integrity": "sha1-VBCXI0yyUTyDzu06zdwn/yeYfVQ=",[m
       "requires": {[m
[31m-        "cssom": "0.3.2"[m
[32m+[m[32m        "cssom": "0.3.x"[m
       }[m
     },[m
     "currently-unhandled": {[m
[36m@@ -2261,7 +2266,7 @@[m
       "resolved": "https://registry.npmjs.org/currently-unhandled/-/currently-unhandled-0.4.1.tgz",[m
       "integrity": "sha1-mI3zP+qxke95mmE2nddsF635V+o=",[m
       "requires": {[m
[31m-        "array-find-index": "1.0.2"[m
[32m+[m[32m        "array-find-index": "^1.0.1"[m
       }[m
     },[m
     "d": {[m
[36m@@ -2269,7 +2274,7 @@[m
       "resolved": "https://registry.npmjs.org/d/-/d-1.0.0.tgz",[m
       "integrity": "sha1-dUu1v+VUUdpppYuU1F9MWwRi1Y8=",[m
       "requires": {[m
[31m-        "es5-ext": "0.10.37"[m
[32m+[m[32m        "es5-ext": "^0.10.9"[m
       }[m
     },[m
     "damerau-levenshtein": {[m
[36m@@ -2282,7 +2287,7 @@[m
       "resolved": "https://registry.npmjs.org/dashdash/-/dashdash-1.14.1.tgz",[m
       "integrity": "sha1-hTz6D3y+L+1d4gMmuN1YEDX24vA=",[m
       "requires": {[m
[31m-        "assert-plus": "1.0.0"[m
[32m+[m[32m        "assert-plus": "^1.0.0"[m
       }[m
     },[m
     "date-now": {[m
[36m@@ -2323,7 +2328,7 @@[m
       "resolved": "https://registry.npmjs.org/default-require-extensions/-/default-require-extensions-1.0.0.tgz",[m
       "integrity": "sha1-836hXT4T/9m0N9M+GnW1+5eHTLg=",[m
       "requires": {[m
[31m-        "strip-bom": "2.0.0"[m
[32m+[m[32m        "strip-bom": "^2.0.0"[m
       }[m
     },[m
     "define-properties": {[m
[36m@@ -2331,8 +2336,8 @@[m
       "resolved": "https://registry.npmjs.org/define-properties/-/define-properties-1.1.2.tgz",[m
       "integrity": "sha1-g6c/L+pWmJj7c3GTyPhzyvbUXJQ=",[m
       "requires": {[m
[31m-        "foreach": "2.0.5",[m
[31m-        "object-keys": "1.0.11"[m
[32m+[m[32m        "foreach": "^2.0.5",[m
[32m+[m[32m        "object-keys": "^1.0.8"[m
       }[m
     },[m
     "defined": {[m
[36m@@ -2345,13 +2350,13 @@[m
       "resolved": "https://registry.npmjs.org/del/-/del-2.2.2.tgz",[m
       "integrity": "sha1-wSyYHQZ4RshLyvhiz/kw2Qf/0ag=",[m
       "requires": {[m
[31m-        "globby": "5.0.0",[m
[31m-        "is-path-cwd": "1.0.0",[m
[31m-        "is-path-in-cwd": "1.0.0",[m
[31m-        "object-assign": "4.1.1",[m
[31m-        "pify": "2.3.0",[m
[31m-        "pinkie-promise": "2.0.1",[m
[31m-        "rimraf": "2.6.2"[m
[32m+[m[32m        "globby": "^5.0.0",[m
[32m+[m[32m        "is-path-cwd": "^1.0.0",[m
[32m+[m[32m        "is-path-in-cwd": "^1.0.0",[m
[32m+[m[32m        "object-assign": "^4.0.1",[m
[32m+[m[32m        "pify": "^2.0.0",[m
[32m+[m[32m        "pinkie-promise": "^2.0.0",[m
[32m+[m[32m        "rimraf": "^2.2.8"[m
       }[m
     },[m
     "delayed-stream": {[m
[36m@@ -2369,8 +2374,8 @@[m
       "resolved": "https://registry.npmjs.org/des.js/-/des.js-1.0.0.tgz",[m
       "integrity": "sha1-wHTS4qpqipoH29YfmhXCzYPsjsw=",[m
       "requires": {[m
[31m-        "inherits": "2.0.3",[m
[31m-        "minimalistic-assert": "1.0.0"[m
[32m+[m[32m        "inherits": "^2.0.1",[m
[32m+[m[32m        "minimalistic-assert": "^1.0.0"[m
       }[m
     },[m
     "destroy": {[m
[36m@@ -2383,7 +2388,7 @@[m
       "resolved": "https://registry.npmjs.org/detect-indent/-/detect-indent-4.0.0.tgz",[m
       "integrity": "sha1-920GQ1LN9Docts5hnE7jqUdd4gg=",[m
       "requires": {[m
[31m-        "repeating": "2.0.1"[m
[32m+[m[32m        "repeating": "^2.0.0"[m
       }[m
     },[m
     "detect-node": {[m
[36m@@ -2401,8 +2406,8 @@[m
       "resolved": "https://registry.npmjs.org/detect-port-alt/-/detect-port-alt-1.1.3.tgz",[m
       "integrity": "sha1-pNLwYddXoDTs83xRQmCph1DysTE=",[m
       "requires": {[m
[31m-        "address": "1.0.3",[m
[31m-        "debug": "2.6.9"[m
[32m+[m[32m        "address": "^1.0.1",[m
[32m+[m[32m        "debug": "^2.6.0"[m
       }[m
     },[m
     "diff": {[m
[36m@@ -2415,9 +2420,9 @@[m
       "resolved": "https://registry.npmjs.org/diffie-hellman/-/diffie-hellman-5.0.2.tgz",[m
       "integrity": "sha1-tYNXOScM/ias9jIJn97SoH8gnl4=",[m
       "requires": {[m
[31m-        "bn.js": "4.11.8",[m
[31m-        "miller-rabin": "4.0.1",[m
[31m-        "randombytes": "2.0.5"[m
[32m+[m[32m        "bn.js": "^4.1.0",[m
[32m+[m[32m        "miller-rabin": "^4.0.0",[m
[32m+[m[32m        "randombytes": "^2.0.0"[m
       }[m
     },[m
     "dns-equal": {[m
[36m@@ -2430,8 +2435,8 @@[m
       "resolved": "https://registry.npmjs.org/dns-packet/-/dns-packet-1.2.2.tgz",[m
       "integrity": "sha512-kN+DjfGF7dJGUL7nWRktL9Z18t1rWP3aQlyZdY8XlpvU3Nc6GeFTQApftcjtWKxAZfiggZSGrCEoszNgvnpwDg==",[m
       "requires": {[m
[31m-        "ip": "1.1.5",[m
[31m-        "safe-buffer": "5.1.1"[m
[32m+[m[32m        "ip": "^1.1.0",[m
[32m+[m[32m        "safe-buffer": "^5.0.1"[m
       }[m
     },[m
     "dns-txt": {[m
[36m@@ -2439,7 +2444,7 @@[m
       "resolved": "https://registry.npmjs.org/dns-txt/-/dns-txt-2.0.2.tgz",[m
       "integrity": "sha1-uR2Ab10nGI5Ks+fRB9iBocxGQrY=",[m
       "requires": {[m
[31m-        "buffer-indexof": "1.1.1"[m
[32m+[m[32m        "buffer-indexof": "^1.0.0"[m
       }[m
     },[m
     "doctrine": {[m
[36m@@ -2447,7 +2452,7 @@[m
       "resolved": "https://registry.npmjs.org/doctrine/-/doctrine-2.0.2.tgz",[m
       "integrity": "sha512-y0tm5Pq6ywp3qSTZ1vPgVdAnbDEoeoc5wlOHXoY1c4Wug/a7JvqHIl7BTvwodaHmejWkK/9dSb3sCYfyo/om8A==",[m
       "requires": {[m
[31m-        "esutils": "2.0.2"[m
[32m+[m[32m        "esutils": "^2.0.2"[m
       }[m
     },[m
     "dom-converter": {[m
[36m@@ -2455,7 +2460,7 @@[m
       "resolved": "https://registry.npmjs.org/dom-converter/-/dom-converter-0.1.4.tgz",[m
       "integrity": "sha1-pF71cnuJDJv/5tfIduexnLDhfzs=",[m
       "requires": {[m
[31m-        "utila": "0.3.3"[m
[32m+[m[32m        "utila": "~0.3"[m
       },[m
       "dependencies": {[m
         "utila": {[m
[36m@@ -2470,7 +2475,7 @@[m
       "resolved": "https://registry.npmjs.org/dom-helpers/-/dom-helpers-3.4.0.tgz",[m
       "integrity": "sha512-LnuPJ+dwqKDIyotW1VzmOZ5TONUN7CwkCR5hrgawTUbkBGYdeoNLZo6nNfGkCrjtE1nXXaj7iMMpDa8/d9WoIA==",[m
       "requires": {[m
[31m-        "@babel/runtime": "7.3.1"[m
[32m+[m[32m        "@babel/runtime": "^7.1.2"[m
       }[m
     },[m
     "dom-serializer": {[m
[36m@@ -2478,8 +2483,8 @@[m
       "resolved": "https://registry.npmjs.org/dom-serializer/-/dom-serializer-0.1.0.tgz",[m
       "integrity": "sha1-BzxpdUbOB4DOI75KKOKT5AvDDII=",[m
       "requires": {[m
[31m-        "domelementtype": "1.1.3",[m
[31m-        "entities": "1.1.1"[m
[32m+[m[32m        "domelementtype": "~1.1.1",[m
[32m+[m[32m        "entities": "~1.1.1"[m
       },[m
       "dependencies": {[m
         "domelementtype": {[m
[36m@@ -2494,7 +2499,7 @@[m
       "resolved": "https://registry.npmjs.org/dom-urls/-/dom-urls-1.1.0.tgz",[m
       "integrity": "sha1-AB3fgWKM0ecGElxxdvU8zsVdkY4=",[m
       "requires": {[m
[31m-        "urijs": "1.19.0"[m
[32m+[m[32m        "urijs": "^1.16.1"[m
       }[m
     },[m
     "domain-browser": {[m
[36m@@ -2512,7 +2517,7 @@[m
       "resolved": "https://registry.npmjs.org/domhandler/-/domhandler-2.1.0.tgz",[m
       "integrity": "sha1-0mRvXlf2w7qxHPbLBdPArPdBJZQ=",[m
       "requires": {[m
[31m-        "domelementtype": "1.3.0"[m
[32m+[m[32m        "domelementtype": "1"[m
       }[m
     },[m
     "domutils": {[m
[36m@@ -2520,8 +2525,8 @@[m
       "resolved": "https://registry.npmjs.org/domutils/-/domutils-1.5.1.tgz",[m
       "integrity": "sha1-3NhIiib1Y9YQeeSMn3t+Mjc2gs8=",[m
       "requires": {[m
[31m-        "dom-serializer": "0.1.0",[m
[31m-        "domelementtype": "1.3.0"[m
[32m+[m[32m        "dom-serializer": "0",[m
[32m+[m[32m        "domelementtype": "1"[m
       }[m
     },[m
     "dot-prop": {[m
[36m@@ -2529,7 +2534,7 @@[m
       "resolved": "https://registry.npmjs.org/dot-prop/-/dot-prop-3.0.0.tgz",[m
       "integrity": "sha1-G3CK8JSknJoOfbyteQq6U52sEXc=",[m
       "requires": {[m
[31m-        "is-obj": "1.0.1"[m
[32m+[m[32m        "is-obj": "^1.0.0"[m
       }[m
     },[m
     "dotenv": {[m
[36m@@ -2547,7 +2552,7 @@[m
       "resolved": "https://registry.npmjs.org/duplexer2/-/duplexer2-0.1.4.tgz",[m
       "integrity": "sha1-ixLauHjA1p4+eJEFFmKjL8a93ME=",[m
       "requires": {[m
[31m-        "readable-stream": "2.3.3"[m
[32m+[m[32m        "readable-stream": "^2.0.2"[m
       }[m
     },[m
     "ecc-jsbn": {[m
[36m@@ -2556,7 +2561,7 @@[m
       "integrity": "sha1-D8c6ntXw1Tw4GTOYUj735UN3dQU=",[m
       "optional": true,[m
       "requires": {[m
[31m-        "jsbn": "0.1.1"[m
[32m+[m[32m        "jsbn": "~0.1.0"[m
       }[m
     },[m
     "ee-first": {[m
[36m@@ -2574,7 +2579,7 @@[m
       "resolved": "https://registry.npmjs.org/electron-to-chromium/-/electron-to-chromium-1.3.30.tgz",[m
       "integrity": "sha512-zx1Prv7kYLfc4OA60FhxGbSo4qrEjgSzpo1/37i7l9ltXPYOoQBtjQxY9KmsgfHnBxHlBGXwLlsbt/gub1w5lw==",[m
       "requires": {[m
[31m-        "electron-releases": "2.1.0"[m
[32m+[m[32m        "electron-releases": "^2.1.0"[m
       }[m
     },[m
     "elliptic": {[m
[36m@@ -2582,13 +2587,13 @@[m
       "resolved": "https://registry.npmjs.org/elliptic/-/elliptic-6.4.0.tgz",[m
       "integrity": "sha1-ysmvh2LIWDYYcAPI3+GT5eLq5d8=",[m
       "requires": {[m
[31m-        "bn.js": "4.11.8",[m
[31m-        "brorand": "1.1.0",[m
[31m-        "hash.js": "1.1.3",[m
[31m-        "hmac-drbg": "1.0.1",[m
[31m-        "inherits": "2.0.3",[m
[31m-        "minimalistic-assert": "1.0.0",[m
[31m-        "minimalistic-crypto-utils": "1.0.1"[m
[32m+[m[32m        "bn.js": "^4.4.0",[m
[32m+[m[32m        "brorand": "^1.0.1",[m
[32m+[m[32m        "hash.js": "^1.0.0",[m
[32m+[m[32m        "hmac-drbg": "^1.0.0",[m
[32m+[m[32m        "inherits": "^2.0.1",[m
[32m+[m[32m        "minimalistic-assert": "^1.0.0",[m
[32m+[m[32m        "minimalistic-crypto-utils": "^1.0.0"[m
       }[m
     },[m
     "emoji-regex": {[m
[36m@@ -2611,10 +2616,10 @@[m
       "resolved": "https://registry.npmjs.org/enhanced-resolve/-/enhanced-resolve-3.4.1.tgz",[m
       "integrity": "sha1-BCHjOf1xQZs9oT0Smzl5BAIwR24=",[m
       "requires": {[m
[31m-        "graceful-fs": "4.1.11",[m
[31m-        "memory-fs": "0.4.1",[m
[31m-        "object-assign": "4.1.1",[m
[31m-        "tapable": "0.2.8"[m
[32m+[m[32m        "graceful-fs": "^4.1.2",[m
[32m+[m[32m        "memory-fs": "^0.4.0",[m
[32m+[m[32m        "object-assign": "^4.0.1",[m
[32m+[m[32m        "tapable": "^0.2.7"[m
       }[m
     },[m
     "entities": {[m
[36m@@ -2627,7 +2632,7 @@[m
       "resolved": "https://registry.npmjs.org/errno/-/errno-0.1.6.tgz",[m
       "integrity": "sha512-IsORQDpaaSwcDP4ZZnHxgE85werpo34VYn1Ud3mq+eUsF593faR8oCZNXrROVkpFu2TsbrNhHin0aUrTsQ9vNw==",[m
       "requires": {[m
[31m-        "prr": "1.0.1"[m
[32m+[m[32m        "prr": "~1.0.1"[m
       }[m
     },[m
     "error-ex": {[m
[36m@@ -2635,7 +2640,7 @@[m
       "resolved": "https://registry.npmjs.org/error-ex/-/error-ex-1.3.1.tgz",[m
       "integrity": "sha1-+FWobOYa3E6GIcPNoh56dhLDqNw=",[m
       "requires": {[m
[31m-        "is-arrayish": "0.2.1"[m
[32m+[m[32m        "is-arrayish": "^0.2.1"[m
       }[m
     },[m
     "es-abstract": {[m
[36m@@ -2643,11 +2648,11 @@[m
       "resolved": "https://registry.npmjs.org/es-abstract/-/es-abstract-1.10.0.tgz",[m
       "integrity": "sha512-/uh/DhdqIOSkAWifU+8nG78vlQxdLckUdI/sPgy0VhuXi2qJ7T8czBmqIYtLQVpCIFYafChnsRsB5pyb1JdmCQ==",[m
       "requires": {[m
[31m-        "es-to-primitive": "1.1.1",[m
[31m-        "function-bind": "1.1.1",[m
[31m-        "has": "1.0.1",[m
[31m-        "is-callable": "1.1.3",[m
[31m-        "is-regex": "1.0.4"[m
[32m+[m[32m        "es-to-primitive": "^1.1.1",[m
[32m+[m[32m        "function-bind": "^1.1.1",[m
[32m+[m[32m        "has": "^1.0.1",[m
[32m+[m[32m        "is-callable": "^1.1.3",[m
[32m+[m[32m        "is-regex": "^1.0.4"[m
       }[m
     },[m
     "es-to-primitive": {[m
[36m@@ -2655,9 +2660,9 @@[m
       "resolved": "https://registry.npmjs.org/es-to-primitive/-/es-to-primitive-1.1.1.tgz",[m
       "integrity": "sha1-RTVSSKiJeQNLZ5Lhm7gfK3l13Q0=",[m
       "requires": {[m
[31m-        "is-callable": "1.1.3",[m
[31m-        "is-date-object": "1.0.1",[m
[31m-        "is-symbol": "1.0.1"[m
[32m+[m[32m        "is-callable": "^1.1.1",[m
[32m+[m[32m        "is-date-object": "^1.0.1",[m
[32m+[m[32m        "is-symbol": "^1.0.1"[m
       }[m
     },[m
     "es5-ext": {[m
[36m@@ -2665,8 +2670,8 @@[m
       "resolved": "https://registry.npmjs.org/es5-ext/-/es5-ext-0.10.37.tgz",[m
       "integrity": "sha1-DudB0Ui4AGm6J9AgOTdWryV978M=",[m
       "requires": {[m
[31m-        "es6-iterator": "2.0.3",[m
[31m-        "es6-symbol": "3.1.1"[m
[32m+[m[32m        "es6-iterator": "~2.0.1",[m
[32m+[m[32m        "es6-symbol": "~3.1.1"[m
       }[m
     },[m
     "es6-iterator": {[m
[36m@@ -2674,9 +2679,9 @@[m
       "resolved": "https://registry.npmjs.org/es6-iterator/-/es6-iterator-2.0.3.tgz",[m
       "integrity": "sha1-p96IkUGgWpSwhUQDstCg+/qY87c=",[m
       "requires": {[m
[31m-        "d": "1.0.0",[m
[31m-        "es5-ext": "0.10.37",[m
[31m-        "es6-symbol": "3.1.1"[m
[32m+[m[32m        "d": "1",[m
[32m+[m[32m        "es5-ext": "^0.10.35",[m
[32m+[m[32m        "es6-symbol": "^3.1.1"[m
       }[m
     },[m
     "es6-map": {[m
[36m@@ -2684,12 +2689,12 @@[m
       "resolved": "https://registry.npmjs.org/es6-map/-/es6-map-0.1.5.tgz",[m
       "integrity": "sha1-kTbgUD3MBqMBaQ8LsU/042TpSfA=",[m
       "requires": {[m
[31m-        "d": "1.0.0",[m
[31m-        "es5-ext": "0.10.37",[m
[31m-        "es6-iterator": "2.0.3",[m
[31m-        "es6-set": "0.1.5",[m
[31m-        "es6-symbol": "3.1.1",[m
[31m-        "event-emitter": "0.3.5"[m
[32m+[m[32m        "d": "1",[m
[32m+[m[32m        "es5-ext": "~0.10.14",[m
[32m+[m[32m        "es6-iterator": "~2.0.1",[m
[32m+[m[32m        "es6-set": "~0.1.5",[m
[32m+[m[32m        "es6-symbol": "~3.1.1",[m
[32m+[m[32m        "event-emitter": "~0.3.5"[m
       }[m
     },[m
     "es6-promise": {[m
[36m@@ -2702,11 +2707,11 @@[m
       "resolved": "https://registry.npmjs.org/es6-set/-/es6-set-0.1.5.tgz",[m
       "integrity": "sha1-0rPsXU2ADO2BjbU40ol02wpzzLE=",[m
       "requires": {[m
[31m-        "d": "1.0.0",[m
[31m-        "es5-ext": "0.10.37",[m
[31m-        "es6-iterator": "2.0.3",[m
[32m+[m[32m        "d": "1",[m
[32m+[m[32m        "es5-ext": "~0.10.14",[m
[32m+[m[32m        "es6-iterator": "~2.0.1",[m
         "es6-symbol": "3.1.1",[m
[31m-        "event-emitter": "0.3.5"[m
[32m+[m[32m        "event-emitter": "~0.3.5"[m
       }[m
     },[m
     "es6-symbol": {[m
[36m@@ -2714,8 +2719,8 @@[m
       "resolved": "https://registry.npmjs.org/es6-symbol/-/es6-symbol-3.1.1.tgz",[m
       "integrity": "sha1-vwDvT9q2uhtG7Le2KbTH7VcVzHc=",[m
       "requires": {[m
[31m-        "d": "1.0.0",[m
[31m-        "es5-ext": "0.10.37"[m
[32m+[m[32m        "d": "1",[m
[32m+[m[32m        "es5-ext": "~0.10.14"[m
       }[m
     },[m
     "es6-weak-map": {[m
[36m@@ -2723,10 +2728,10 @@[m
       "resolved": "https://registry.npmjs.org/es6-weak-map/-/es6-weak-map-2.0.2.tgz",[m
       "integrity": "sha1-XjqzIlH/0VOKH45f+hNXdy+S2W8=",[m
       "requires": {[m
[31m-        "d": "1.0.0",[m
[31m-        "es5-ext": "0.10.37",[m
[31m-        "es6-iterator": "2.0.3",[m
[31m-        "es6-symbol": "3.1.1"[m
[32m+[m[32m        "d": "1",[m
[32m+[m[32m        "es5-ext": "^0.10.14",[m
[32m+[m[32m        "es6-iterator": "^2.0.1",[m
[32m+[m[32m        "es6-symbol": "^3.1.1"[m
       }[m
     },[m
     "escape-html": {[m
[36m@@ -2744,11 +2749,11 @@[m
       "resolved": "https://registry.npmjs.org/escodegen/-/escodegen-1.9.0.tgz",[m
       "integrity": "sha512-v0MYvNQ32bzwoG2OSFzWAkuahDQHK92JBN0pTAALJ4RIxEZe766QJPDR8Hqy7XNUy5K3fnVL76OqYAdc4TZEIw==",[m
       "requires": {[m
[31m-        "esprima": "3.1.3",[m
[31m-        "estraverse": "4.2.0",[m
[31m-        "esutils": "2.0.2",[m
[31m-        "optionator": "0.8.2",[m
[31m-        "source-map": "0.5.7"[m
[32m+[m[32m        "esprima": "^3.1.3",[m
[32m+[m[32m        "estraverse": "^4.2.0",[m
[32m+[m[32m        "esutils": "^2.0.2",[m
[32m+[m[32m        "optionator": "^0.8.1",[m
[32m+[m[32m        "source-map": "~0.5.6"[m
       },[m
       "dependencies": {[m
         "esprima": {[m
[36m@@ -2769,10 +2774,10 @@[m
       "resolved": "https://registry.npmjs.org/escope/-/escope-3.6.0.tgz",[m
       "integrity": "sha1-4Bl16BJ4GhY6ba392AOY3GTIicM=",[m
       "requires": {[m
[31m-        "es6-map": "0.1.5",[m
[31m-        "es6-weak-map": "2.0.2",[m
[31m-        "esrecurse": "4.2.0",[m
[31m-        "estraverse": "4.2.0"[m
[32m+[m[32m        "es6-map": "^0.1.3",[m
[32m+[m[32m        "es6-weak-map": "^2.0.1",[m
[32m+[m[32m        "esrecurse": "^4.1.0",[m
[32m+[m[32m        "estraverse": "^4.1.1"[m
       }[m
     },[m
     "eslint": {[m
[36m@@ -2780,43 +2785,43 @@[m
       "resolved": "https://registry.npmjs.org/eslint/-/eslint-4.10.0.tgz",[m
       "integrity": "sha512-MMVl8P/dYUFZEvolL8PYt7qc5LNdS2lwheq9BYa5Y07FblhcZqFyaUqlS8TW5QITGex21tV4Lk0a3fK8lsJIkA==",[m
       "requires": {[m
[31m-        "ajv": "5.5.2",[m
[31m-        "babel-code-frame": "6.26.0",[m
[31m-        "chalk": "2.3.0",[m
[31m-        "concat-stream": "1.6.0",[m
[31m-        "cross-spawn": "5.1.0",[m
[31m-        "debug": "3.1.0",[m
[31m-        "doctrine": "2.0.2",[m
[31m-        "eslint-scope": "3.7.1",[m
[31m-        "espree": "3.5.2",[m
[31m-        "esquery": "1.0.0",[m
[31m-        "estraverse": "4.2.0",[m
[31m-        "esutils": "2.0.2",[m
[31m-        "file-entry-cache": "2.0.0",[m
[31m-        "functional-red-black-tree": "1.0.1",[m
[31m-        "glob": "7.1.2",[m
[31m-        "globals": "9.18.0",[m
[31m-        "ignore": "3.3.7",[m
[31m-        "imurmurhash": "0.1.4",[m
[31m-        "inquirer": "3.3.0",[m
[31m-        "is-resolvable": "1.0.1",[m
[31m-        "js-yaml": "3.10.0",[m
[31m-        "json-stable-stringify": "1.0.1",[m
[31m-        "levn": "0.3.0",[m
[31m-        "lodash": "4.17.4",[m
[31m-        "minimatch": "3.0.4",[m
[31m-        "mkdirp": "0.5.1",[m
[31m-        "natural-compare": "1.4.0",[m
[31m-        "optionator": "0.8.2",[m
[31m-        "path-is-inside": "1.0.2",[m
[31m-        "pluralize": "7.0.0",[m
[31m-        "progress": "2.0.0",[m
[31m-        "require-uncached": "1.0.3",[m
[31m-        "semver": "5.4.1",[m
[31m-        "strip-ansi": "4.0.0",[m
[31m-        "strip-json-comments": "2.0.1",[m
[31m-        "table": "4.0.2",[m
[31m-        "text-table": "0.2.0"[m
[32m+[m[32m        "ajv": "^5.2.0",[m
[32m+[m[32m        "babel-code-frame": "^6.22.0",[m
[32m+[m[32m        "chalk": "^2.1.0",[m
[32m+[m[32m        "concat-stream": "^1.6.0",[m
[32m+[m[32m        "cross-spawn": "^5.1.0",[m
[32m+[m[32m        "debug": "^3.0.1",[m
[32m+[m[32m        "doctrine": "^2.0.0",[m
[32m+[m[32m        "eslint-scope": "^3.7.1",[m
[32m+[m[32m        "espree": "^3.5.1",[m
[32m+[m[32m        "esquery": "^1.0.0",[m
[32m+[m[32m        "estraverse": "^4.2.0",[m
[32m+[m[32m        "esutils": "^2.0.2",[m
[32m+[m[32m        "file-entry-cache": "^2.0.0",[m
[32m+[m[32m        "functional-red-black-tree": "^1.0.1",[m
[32m+[m[32m        "glob": "^7.1.2",[m
[32m+[m[32m        "globals": "^9.17.0",[m
[32m+[m[32m        "ignore": "^3.3.3",[m
[32m+[m[32m        "imurmurhash": "^0.1.4",[m
[32m+[m[32m        "inquirer": "^3.0.6",[m
[32m+[m[32m        "is-resolvable": "^1.0.0",[m
[32m+[m[32m        "js-yaml": "^3.9.1",[m
[32m+[m[32m        "json-stable-stringify": "^1.0.1",[m
[32m+[m[32m        "levn": "^0.3.0",[m
[32m+[m[32m        "lodash": "^4.17.4",[m
[32m+[m[32m        "minimatch": "^3.0.2",[m
[32m+[m[32m        "mkdirp": "^0.5.1",[m
[32m+[m[32m        "natural-compare": "^1.4.0",[m
[32m+[m[32m        "optionator": "^0.8.2",[m
[32m+[m[32m        "path-is-inside": "^1.0.2",[m
[32m+[m[32m        "pluralize": "^7.0.0",[m
[32m+[m[32m        "progress": "^2.0.0",[m
[32m+[m[32m        "require-uncached": "^1.0.3",[m
[32m+[m[32m        "semver": "^5.3.0",[m
[32m+[m[32m        "strip-ansi": "^4.0.0",[m
[32m+[m[32m        "strip-json-comments": "~2.0.1",[m
[32m+[m[32m        "table": "^4.0.1",[m
[32m+[m[32m        "text-table": "~0.2.0"[m
       },[m
       "dependencies": {[m
         "ansi-regex": {[m
[36m@@ -2829,9 +2834,9 @@[m
           "resolved": "https://registry.npmjs.org/chalk/-/chalk-2.3.0.tgz",[m
           "integrity": "sha512-Az5zJR2CBujap2rqXGaJKaPHyJ0IrUimvYNX+ncCy8PJP4ltOGTrHUIo097ZaL2zMeKYpiCdqDvS6zdrTFok3Q==",[m
           "requires": {[m
[31m-            "ansi-styles": "3.2.0",[m
[31m-            "escape-string-regexp": "1.0.5",[m
[31m-            "supports-color": "4.5.0"[m
[32m+[m[32m            "ansi-styles": "^3.1.0",[m
[32m+[m[32m            "escape-string-regexp": "^1.0.5",[m
[32m+[m[32m            "supports-color": "^4.0.0"[m
           }[m
         },[m
         "debug": {[m
[36m@@ -2852,8 +2857,8 @@[m
           "resolved": "https://registry.npmjs.org/js-yaml/-/js-yaml-3.10.0.tgz",[m
           "integrity": "sha512-O2v52ffjLa9VeM43J4XocZE//WT9N0IiwDa3KSHH7Tu8CtH+1qM8SIZvnsTh6v+4yFy5KUY3BHUVwjpfAWsjIA==",[m
           "requires": {[m
[31m-            "argparse": "1.0.9",[m
[31m-            "esprima": "4.0.0"[m
[32m+[m[32m            "argparse": "^1.0.7",[m
[32m+[m[32m            "esprima": "^4.0.0"[m
           }[m
         },[m
         "strip-ansi": {[m
[36m@@ -2861,7 +2866,7 @@[m
           "resolved": "https://registry.npmjs.org/strip-ansi/-/strip-ansi-4.0.0.tgz",[m
           "integrity": "sha1-qEeQIusaw2iocTibY1JixQXuNo8=",[m
           "requires": {[m
[31m-            "ansi-regex": "3.0.0"[m
[32m+[m[32m            "ansi-regex": "^3.0.0"[m
           }[m
         },[m
         "supports-color": {[m
[36m@@ -2869,7 +2874,7 @@[m
           "resolved": "https://registry.npmjs.org/supports-color/-/supports-color-4.5.0.tgz",[m
           "integrity": "sha1-vnoN5ITexcXN34s9WRJQRJEvY1s=",[m
           "requires": {[m
[31m-            "has-flag": "2.0.0"[m
[32m+[m[32m            "has-flag": "^2.0.0"[m
           }[m
         }[m
       }[m
[36m@@ -2884,8 +2889,8 @@[m
       "resolved": "https://registry.npmjs.org/eslint-import-resolver-node/-/eslint-import-resolver-node-0.3.1.tgz",[m
       "integrity": "sha512-yUtXS15gIcij68NmXmP9Ni77AQuCN0itXbCc/jWd8C6/yKZaSNXicpC8cgvjnxVdmfsosIXrjpzFq7GcDryb6A==",[m
       "requires": {[m
[31m-        "debug": "2.6.9",[m
[31m-        "resolve": "1.5.0"[m
[32m+[m[32m        "debug": "^2.6.8",[m
[32m+[m[32m        "resolve": "^1.2.0"[m
       }[m
     },[m
     "eslint-loader": {[m
[36m@@ -2893,11 +2898,11 @@[m
       "resolved": "https://registry.npmjs.org/eslint-loader/-/eslint-loader-1.9.0.tgz",[m
       "integrity": "sha512-40aN976qSNPyb9ejTqjEthZITpls1SVKtwguahmH1dzGCwQU/vySE+xX33VZmD8csU0ahVNCtFlsPgKqRBiqgg==",[m
       "requires": {[m
[31m-        "loader-fs-cache": "1.0.1",[m
[31m-        "loader-utils": "1.1.0",[m
[31m-        "object-assign": "4.1.1",[m
[31m-        "object-hash": "1.2.0",[m
[31m-        "rimraf": "2.6.2"[m
[32m+[m[32m        "loader-fs-cache": "^1.0.0",[m
[32m+[m[32m        "loader-utils": "^1.0.2",[m
[32m+[m[32m        "object-assign": "^4.0.1",[m
[32m+[m[32m        "object-hash": "^1.1.4",[m
[32m+[m[32m        "rimraf": "^2.6.1"[m
       }[m
     },[m
     "eslint-module-utils": {[m
[36m@@ -2905,8 +2910,8 @@[m
       "resolved": "https://registry.npmjs.org/eslint-module-utils/-/eslint-module-utils-2.1.1.tgz",[m
       "integrity": "sha512-jDI/X5l/6D1rRD/3T43q8Qgbls2nq5km5KSqiwlyUbGo5+04fXhMKdCPhjwbqAa6HXWaMxj8Q4hQDIh7IadJQw==",[m
       "requires": {[m
[31m-        "debug": "2.6.9",[m
[31m-        "pkg-dir": "1.0.0"[m
[32m+[m[32m        "debug": "^2.6.8",[m
[32m+[m[32m        "pkg-dir": "^1.0.0"[m
       },[m
       "dependencies": {[m
         "find-up": {[m
[36m@@ -2914,8 +2919,8 @@[m
           "resolved": "https://registry.npmjs.org/find-up/-/find-up-1.1.2.tgz",[m
           "integrity": "sha1-ay6YIrGizgpgq2TWEOzK1TyyTQ8=",[m
           "requires": {[m
[31m-            "path-exists": "2.1.0",[m
[31m-            "pinkie-promise": "2.0.1"[m
[32m+[m[32m            "path-exists": "^2.0.0",[m
[32m+[m[32m            "pinkie-promise": "^2.0.0"[m
           }[m
         },[m
         "path-exists": {[m
[36m@@ -2923,7 +2928,7 @@[m
           "resolved": "https://registry.npmjs.org/path-exists/-/path-exists-2.1.0.tgz",[m
           "integrity": "sha1-D+tsZPD8UY2adU3V77YscCJ2H0s=",[m
           "requires": {[m
[31m-            "pinkie-promise": "2.0.1"[m
[32m+[m[32m            "pinkie-promise": "^2.0.0"[m
           }[m
         },[m
         "pkg-dir": {[m
[36m@@ -2931,7 +2936,7 @@[m
           "resolved": "https://registry.npmjs.org/pkg-dir/-/pkg-dir-1.0.0.tgz",[m
           "integrity": "sha1-ektQio1bstYp1EcFb/TpyTFM89Q=",[m
           "requires": {[m
[31m-            "find-up": "1.1.2"[m
[32m+[m[32m            "find-up": "^1.0.0"[m
           }[m
         }[m
       }[m
[36m@@ -2941,7 +2946,7 @@[m
       "resolved": "https://registry.npmjs.org/eslint-plugin-flowtype/-/eslint-plugin-flowtype-2.39.1.tgz",[m
       "integrity": "sha512-RiQv+7Z9QDJuzt+NO8sYgkLGT+h+WeCrxP7y8lI7wpU41x3x/2o3PGtHk9ck8QnA9/mlbNcy/hG0eKvmd7npaA==",[m
       "requires": {[m
[31m-        "lodash": "4.17.4"[m
[32m+[m[32m        "lodash": "^4.15.0"[m
       }[m
     },[m
     "eslint-plugin-import": {[m
[36m@@ -2949,16 +2954,16 @@[m
       "resolved": "https://registry.npmjs.org/eslint-plugin-import/-/eslint-plugin-import-2.8.0.tgz",[m
       "integrity": "sha512-Rf7dfKJxZ16QuTgVv1OYNxkZcsu/hULFnC+e+w0Gzi6jMC3guQoWQgxYxc54IDRinlb6/0v5z/PxxIKmVctN+g==",[m
       "requires": {[m
[31m-        "builtin-modules": "1.1.1",[m
[31m-        "contains-path": "0.1.0",[m
[31m-        "debug": "2.6.9",[m
[32m+[m[32m        "builtin-modules": "^1.1.1",[m
[32m+[m[32m        "contains-path": "^0.1.0",[m
[32m+[m[32m        "debug": "^2.6.8",[m
         "doctrine": "1.5.0",[m
[31m-        "eslint-import-resolver-node": "0.3.1",[m
[31m-        "eslint-module-utils": "2.1.1",[m
[31m-        "has": "1.0.1",[m
[31m-        "lodash.cond": "4.5.2",[m
[31m-        "minimatch": "3.0.4",[m
[31m-        "read-pkg-up": "2.0.0"[m
[32m+[m[32m        "eslint-import-resolver-node": "^0.3.1",[m
[32m+[m[32m        "eslint-module-utils": "^2.1.1",[m
[32m+[m[32m        "has": "^1.0.1",[m
[32m+[m[32m        "lodash.cond": "^4.3.0",[m
[32m+[m[32m        "minimatch": "^3.0.3",[m
[32m+[m[32m        "read-pkg-up": "^2.0.0"[m
       },[m
       "dependencies": {[m
         "doctrine": {[m
[36m@@ -2966,8 +2971,8 @@[m
           "resolved": "https://registry.npmjs.org/doctrine/-/doctrine-1.5.0.tgz",[m
           "integrity": "sha1-N53Ocw9hZvds76TmcHoVmwLFpvo=",[m
           "requires": {[m
[31m-            "esutils": "2.0.2",[m
[31m-            "isarray": "1.0.0"[m
[32m+[m[32m            "esutils": "^2.0.2",[m
[32m+[m[32m            "isarray": "^1.0.0"[m
           }[m
         },[m
         "isarray": {[m
[36m@@ -2980,10 +2985,10 @@[m
           "resolved": "https://registry.npmjs.org/load-json-file/-/load-json-file-2.0.0.tgz",[m
           "integrity": "sha1-eUfkIUmvgNaWy/eXvKq8/h/inKg=",[m
           "requires": {[m
[31m-            "graceful-fs": "4.1.11",[m
[31m-            "parse-json": "2.2.0",[m
[31m-            "pify": "2.3.0",[m
[31m-            "strip-bom": "3.0.0"[m
[32m+[m[32m            "graceful-fs": "^4.1.2",[m
[32m+[m[32m            "parse-json": "^2.2.0",[m
[32m+[m[32m            "pify": "^2.0.0",[m
[32m+[m[32m            "strip-bom": "^3.0.0"[m
           }[m
         },[m
         "path-type": {[m
[36m@@ -2991,7 +2996,7 @@[m
           "resolved": "https://registry.npmjs.org/path-type/-/path-type-2.0.0.tgz",[m
           "integrity": "sha1-8BLMuEFbcJb8LaoQVMPXI4lZTHM=",[m
           "requires": {[m
[31m-            "pify": "2.3.0"[m
[32m+[m[32m            "pify": "^2.0.0"[m
           }[m
         },[m
         "read-pkg": {[m
[36m@@ -2999,9 +3004,9 @@[m
           "resolved": "https://registry.npmjs.org/read-pkg/-/read-pkg-2.0.0.tgz",[m
           "integrity": "sha1-jvHAYjxqbbDcZxPEv6xGMysjaPg=",[m
           "requires": {[m
[31m-            "load-json-file": "2.0.0",[m
[31m-            "normalize-package-data": "2.4.0",[m
[31m-            "path-type": "2.0.0"[m
[32m+[m[32m            "load-json-file": "^2.0.0",[m
[32m+[m[32m            "normalize-package-data": "^2.3.2",[m
[32m+[m[32m            "path-type": "^2.0.0"[m
           }[m
         },[m
         "read-pkg-up": {[m
[36m@@ -3009,8 +3014,8 @@[m
           "resolved": "https://registry.npmjs.org/read-pkg-up/-/read-pkg-up-2.0.0.tgz",[m
           "integrity": "sha1-a3KoBImE4MQeeVEP1en6mbO1Sb4=",[m
           "requires": {[m
[31m-            "find-up": "2.1.0",[m
[31m-            "read-pkg": "2.0.0"[m
[32m+[m[32m            "find-up": "^2.0.0",[m
[32m+[m[32m            "read-pkg": "^2.0.0"[m
           }[m
         },[m
         "strip-bom": {[m
[36m@@ -3025,13 +3030,13 @@[m
       "resolved": "https://registry.npmjs.org/eslint-plugin-jsx-a11y/-/eslint-plugin-jsx-a11y-5.1.1.tgz",[m
       "integrity": "sha512-5I9SpoP7gT4wBFOtXT8/tXNPYohHBVfyVfO17vkbC7r9kEIxYJF12D3pKqhk8+xnk12rfxKClS3WCFpVckFTPQ==",[m
       "requires": {[m
[31m-        "aria-query": "0.7.0",[m
[31m-        "array-includes": "3.0.3",[m
[32m+[m[32m        "aria-query": "^0.7.0",[m
[32m+[m[32m        "array-includes": "^3.0.3",[m
         "ast-types-flow": "0.0.7",[m
[31m-        "axobject-query": "0.1.0",[m
[31m-        "damerau-levenshtein": "1.0.4",[m
[31m-        "emoji-regex": "6.5.1",[m
[31m-        "jsx-ast-utils": "1.4.1"[m
[32m+[m[32m        "axobject-query": "^0.1.0",[m
[32m+[m[32m        "damerau-levenshtein": "^1.0.0",[m
[32m+[m[32m        "emoji-regex": "^6.1.0",[m
[32m+[m[32m        "jsx-ast-utils": "^1.4.0"[m
       }[m
     },[m
     "eslint-plugin-react": {[m
[36m@@ -3039,10 +3044,10 @@[m
       "resolved": "https://registry.npmjs.org/eslint-plugin-react/-/eslint-plugin-react-7.4.0.tgz",[m
       "integrity": "sha512-tvjU9u3VqmW2vVuYnE8Qptq+6ji4JltjOjJ9u7VAOxVYkUkyBZWRvNYKbDv5fN+L6wiA+4we9+qQahZ0m63XEA==",[m
       "requires": {[m
[31m-        "doctrine": "2.0.2",[m
[31m-        "has": "1.0.1",[m
[31m-        "jsx-ast-utils": "2.0.1",[m
[31m-        "prop-types": "15.7.2"[m
[32m+[m[32m        "doctrine": "^2.0.0",[m
[32m+[m[32m        "has": "^1.0.1",[m
[32m+[m[32m        "jsx-ast-utils": "^2.0.0",[m
[32m+[m[32m        "prop-types": "^15.5.10"[m
       },[m
       "dependencies": {[m
         "jsx-ast-utils": {[m
[36m@@ -3050,7 +3055,7 @@[m
           "resolved": "https://registry.npmjs.org/jsx-ast-utils/-/jsx-ast-utils-2.0.1.tgz",[m
           "integrity": "sha1-6AGxs5mF4g//yHtA43SAgOLcrH8=",[m
           "requires": {[m
[31m-            "array-includes": "3.0.3"[m
[32m+[m[32m            "array-includes": "^3.0.3"[m
           }[m
         }[m
       }[m
[36m@@ -3060,8 +3065,8 @@[m
       "resolved": "https://registry.npmjs.org/eslint-scope/-/eslint-scope-3.7.1.tgz",[m
       "integrity": "sha1-PWPD7f2gLgbgGkUq2IyqzHzctug=",[m
       "requires": {[m
[31m-        "esrecurse": "4.2.0",[m
[31m-        "estraverse": "4.2.0"[m
[32m+[m[32m        "esrecurse": "^4.1.0",[m
[32m+[m[32m        "estraverse": "^4.1.1"[m
       }[m
     },[m
     "espree": {[m
[36m@@ -3069,8 +3074,8 @@[m
       "resolved": "https://registry.npmjs.org/espree/-/espree-3.5.2.tgz",[m
       "integrity": "sha512-sadKeYwaR/aJ3stC2CdvgXu1T16TdYN+qwCpcWbMnGJ8s0zNWemzrvb2GbD4OhmJ/fwpJjudThAlLobGbWZbCQ==",[m
       "requires": {[m
[31m-        "acorn": "5.3.0",[m
[31m-        "acorn-jsx": "3.0.1"[m
[32m+[m[32m        "acorn": "^5.2.1",[m
[32m+[m[32m        "acorn-jsx": "^3.0.0"[m
       }[m
     },[m
     "esprima": {[m
[36m@@ -3083,7 +3088,7 @@[m
       "resolved": "https://registry.npmjs.org/esquery/-/esquery-1.0.0.tgz",[m
       "integrity": "sha1-z7qLV9f7qT8XKYqKAGoEzaE9gPo=",[m
       "requires": {[m
[31m-        "estraverse": "4.2.0"[m
[32m+[m[32m        "estraverse": "^4.0.0"[m
       }[m
     },[m
     "esrecurse": {[m
[36m@@ -3091,8 +3096,8 @@[m
       "resolved": "https://registry.npmjs.org/esrecurse/-/esrecurse-4.2.0.tgz",[m
       "integrity": "sha1-+pVo2Y04I/mkHZHpAtyrnqblsWM=",[m
       "requires": {[m
[31m-        "estraverse": "4.2.0",[m
[31m-        "object-assign": "4.1.1"[m
[32m+[m[32m        "estraverse": "^4.1.0",[m
[32m+[m[32m        "object-assign": "^4.0.1"[m
       }[m
     },[m
     "estraverse": {[m
[36m@@ -3115,8 +3120,8 @@[m
       "resolved": "https://registry.npmjs.org/event-emitter/-/event-emitter-0.3.5.tgz",[m
       "integrity": "sha1-34xp7vFkeSPHFXuc6DhAYQsCzDk=",[m
       "requires": {[m
[31m-        "d": "1.0.0",[m
[31m-        "es5-ext": "0.10.37"[m
[32m+[m[32m        "d": "1",[m
[32m+[m[32m        "es5-ext": "~0.10.14"[m
       }[m
     },[m
     "eventemitter3": {[m
[36m@@ -3134,7 +3139,7 @@[m
       "resolved": "https://registry.npmjs.org/eventsource/-/eventsource-0.1.6.tgz",[m
       "integrity": "sha1-Cs7ehJ7X3RzMMsgRuxG5RNTykjI=",[m
       "requires": {[m
[31m-        "original": "1.0.0"[m
[32m+[m[32m        "original": ">=0.0.5"[m
       }[m
     },[m
     "evp_bytestokey": {[m
[36m@@ -3142,8 +3147,8 @@[m
       "resolved": "https://registry.npmjs.org/evp_bytestokey/-/evp_bytestokey-1.0.3.tgz",[m
       "integrity": "sha512-/f2Go4TognH/KvCISP7OUsHn85hT9nUkxxA9BEWxFn+Oj9o8ZNLm/40hdlgSLyuOimsrTKLUMEorQexp/aPQeA==",[m
       "requires": {[m
[31m-        "md5.js": "1.3.4",[m
[31m-        "safe-buffer": "5.1.1"[m
[32m+[m[32m        "md5.js": "^1.3.4",[m
[32m+[m[32m        "safe-buffer": "^5.1.1"[m
       }[m
     },[m
     "exec-sh": {[m
[36m@@ -3151,7 +3156,7 @@[m
       "resolved": "https://registry.npmjs.org/exec-sh/-/exec-sh-0.2.1.tgz",[m
       "integrity": "sha512-aLt95pexaugVtQerpmE51+4QfWrNc304uez7jvj6fWnN8GeEHpttB8F36n8N7uVhUMbH/1enbxQ9HImZ4w/9qg==",[m
       "requires": {[m
[31m-        "merge": "1.2.0"[m
[32m+[m[32m        "merge": "^1.1.3"[m
       }[m
     },[m
     "execa": {[m
[36m@@ -3159,13 +3164,13 @@[m
       "resolved": "https://registry.npmjs.org/execa/-/execa-0.7.0.tgz",[m
       "integrity": "sha1-lEvs00zEHuMqY6n68nrVpl/Fl3c=",[m
       "requires": {[m
[31m-        "cross-spawn": "5.1.0",[m
[31m-        "get-stream": "3.0.0",[m
[31m-        "is-stream": "1.1.0",[m
[31m-        "npm-run-path": "2.0.2",[m
[31m-        "p-finally": "1.0.0",[m
[31m-        "signal-exit": "3.0.2",[m
[31m-        "strip-eof": "1.0.0"[m
[32m+[m[32m        "cross-spawn": "^5.0.1",[m
[32m+[m[32m        "get-stream": "^3.0.0",[m
[32m+[m[32m        "is-stream": "^1.1.0",[m
[32m+[m[32m        "npm-run-path": "^2.0.0",[m
[32m+[m[32m        "p-finally": "^1.0.0",[m
[32m+[m[32m        "signal-exit": "^3.0.0",[m
[32m+[m[32m        "strip-eof": "^1.0.0"[m
       }[m
     },[m
     "exenv": {[m
[36m@@ -3178,7 +3183,7 @@[m
       "resolved": "https://registry.npmjs.org/expand-brackets/-/expand-brackets-0.1.5.tgz",[m
       "integrity": "sha1-3wcoTjQqgHzXM6xa9yQR5YHRF3s=",[m
       "requires": {[m
[31m-        "is-posix-bracket": "0.1.1"[m
[32m+[m[32m        "is-posix-bracket": "^0.1.0"[m
       }[m
     },[m
     "expand-range": {[m
[36m@@ -3186,7 +3191,7 @@[m
       "resolved": "https://registry.npmjs.org/expand-range/-/expand-range-1.8.2.tgz",[m
       "integrity": "sha1-opnv/TNf4nIeuujiV+x5ZE/IUzc=",[m
       "requires": {[m
[31m-        "fill-range": "2.2.3"[m
[32m+[m[32m        "fill-range": "^2.1.0"[m
       }[m
     },[m
     "expand-tilde": {[m
[36m@@ -3194,7 +3199,7 @@[m
       "resolved": "https://registry.npmjs.org/expand-tilde/-/expand-tilde-2.0.2.tgz",[m
       "integrity": "sha1-l+gBqgUt8CRU3kawK/YhZCzchQI=",[m
       "requires": {[m
[31m-        "homedir-polyfill": "1.0.1"[m
[32m+[m[32m        "homedir-polyfill": "^1.0.1"[m
       }[m
     },[m
     "express": {[m
[36m@@ -3202,36 +3207,36 @@[m
       "resolved": "https://registry.npmjs.org/express/-/express-4.16.2.tgz",[m
       "integrity": "sha1-41xt/i1kt9ygpc1PIXgb4ymeB2w=",[m
       "requires": {[m
[31m-        "accepts": "1.3.4",[m
[32m+[m[32m        "accepts": "~1.3.4",[m
         "array-flatten": "1.1.1",[m
         "body-parser": "1.18.2",[m
         "content-disposition": "0.5.2",[m
[31m-        "content-type": "1.0.4",[m
[32m+[m[32m        "content-type": "~1.0.4",[m
         "cookie": "0.3.1",[m
         "cookie-signature": "1.0.6",[m
         "debug": "2.6.9",[m
[31m-        "depd": "1.1.1",[m
[31m-        "encodeurl": "1.0.1",[m
[31m-        "escape-html": "1.0.3",[m
[31m-        "etag": "1.8.1",[m
[32m+[m[32m        "depd": "~1.1.1",[m
[32m+[m[32m        "encodeurl": "~1.0.1",[m
[32m+[m[32m        "escape-html": "~1.0.3",[m
[32m+[m[32m        "etag": "~1.8.1",[m
         "finalhandler": "1.1.0",[m
         "fresh": "0.5.2",[m
         "merge-descriptors": "1.0.1",[m
[31m-        "methods": "1.1.2",[m
[31m-        "on-finished": "2.3.0",[m
[31m-        "parseurl": "1.3.2",[m
[32m+[m[32m        "methods": "~1.1.2",[m
[32m+[m[32m        "on-finished": "~2.3.0",[m
[32m+[m[32m        "parseurl": "~1.3.2",[m
         "path-to-regexp": "0.1.7",[m
[31m-        "proxy-addr": "2.0.2",[m
[32m+[m[32m        "proxy-addr": "~2.0.2",[m
         "qs": "6.5.1",[m
[31m-        "range-parser": "1.2.0",[m
[32m+[m[32m        "range-parser": "~1.2.0",[m
         "safe-buffer": "5.1.1",[m
         "send": "0.16.1",[m
         "serve-static": "1.13.1",[m
         "setprototypeof": "1.1.0",[m
[31m-        "statuses": "1.3.1",[m
[31m-        "type-is": "1.6.15",[m
[32m+[m[32m        "statuses": "~1.3.1",[m
[32m+[m[32m        "type-is": "~1.6.15",[m
         "utils-merge": "1.0.1",[m
[31m-        "vary": "1.1.2"[m
[32m+[m[32m        "vary": "~1.1.2"[m
       },[m
       "dependencies": {[m
         "array-flatten": {[m
[36m@@ -3256,9 +3261,9 @@[m
       "resolved": "https://registry.npmjs.org/external-editor/-/external-editor-2.1.0.tgz",[m
       "integrity": "sha512-E44iT5QVOUJBKij4IIV3uvxuNlbKS38Tw1HiupxEIHPv9qtC2PrDYohbXV5U+1jnfIXttny8gUhj+oZvflFlzA==",[m
       "requires": {[m
[31m-        "chardet": "0.4.2",[m
[31m-        "iconv-lite": "0.4.19",[m
[31m-        "tmp": "0.0.33"[m
[32m+[m[32m        "chardet": "^0.4.0",[m
[32m+[m[32m        "iconv-lite": "^0.4.17",[m
[32m+[m[32m        "tmp": "^0.0.33"[m
       }[m
     },[m
     "extglob": {[m
[36m@@ -3266,7 +3271,7 @@[m
       "resolved": "https://registry.npmjs.org/extglob/-/extglob-0.3.2.tgz",[m
       "integrity": "sha1-Lhj/PS9JqydlzskCPwEdqo2DSaE=",[m
       "requires": {[m
[31m-        "is-extglob": "1.0.0"[m
[32m+[m[32m        "is-extglob": "^1.0.0"[m
       }[m
     },[m
     "extract-text-webpack-plugin": {[m
[36m@@ -3274,10 +3279,10 @@[m
       "resolved": "https://registry.npmjs.org/extract-text-webpack-plugin/-/extract-text-webpack-plugin-3.0.2.tgz",[m
       "integrity": "sha512-bt/LZ4m5Rqt/Crl2HiKuAl/oqg0psx1tsTLkvWbJen1CtD+fftkZhMaQ9HOtY2gWsl2Wq+sABmMVi9z3DhKWQQ==",[m
       "requires": {[m
[31m-        "async": "2.6.0",[m
[31m-        "loader-utils": "1.1.0",[m
[31m-        "schema-utils": "0.3.0",[m
[31m-        "webpack-sources": "1.1.0"[m
[32m+[m[32m        "async": "^2.4.1",[m
[32m+[m[32m        "loader-utils": "^1.1.0",[m
[32m+[m[32m        "schema-utils": "^0.3.0",[m
[32m+[m[32m        "webpack-sources": "^1.0.1"[m
       }[m
     },[m
     "extsprintf": {[m
[36m@@ -3310,7 +3315,7 @@[m
       "resolved": "https://registry.npmjs.org/faye-websocket/-/faye-websocket-0.11.1.tgz",[m
       "integrity": "sha1-8O/hjE9W5PQK/H4Gxxn9XuYYjzg=",[m
       "requires": {[m
[31m-        "websocket-driver": "0.7.0"[m
[32m+[m[32m        "websocket-driver": ">=0.5.1"[m
       }[m
     },[m
     "fb-watchman": {[m
[36m@@ -3318,7 +3323,7 @@[m
       "resolved": "https://registry.npmjs.org/fb-watchman/-/fb-watchman-2.0.0.tgz",[m
       "integrity": "sha1-VOmr99+i8mzZsWNsWIwa/AXeXVg=",[m
       "requires": {[m
[31m-        "bser": "2.0.0"[m
[32m+[m[32m        "bser": "^2.0.0"[m
       }[m
     },[m
     "figures": {[m
[36m@@ -3326,7 +3331,7 @@[m
       "resolved": "https://registry.npmjs.org/figures/-/figures-2.0.0.tgz",[m
       "integrity": "sha1-OrGi0qYsi/tDGgyUy3l6L84nyWI=",[m
       "requires": {[m
[31m-        "escape-string-regexp": "1.0.5"[m
[32m+[m[32m        "escape-string-regexp": "^1.0.5"[m
       }[m
     },[m
     "file-entry-cache": {[m
[36m@@ -3334,8 +3339,8 @@[m
       "resolved": "https://registry.npmjs.org/file-entry-cache/-/file-entry-cache-2.0.0.tgz",[m
       "integrity": "sha1-w5KZDD5oR4PYOLjISkXYoEhFg2E=",[m
       "requires": {[m
[31m-        "flat-cache": "1.3.0",[m
[31m-        "object-assign": "4.1.1"[m
[32m+[m[32m        "flat-cache": "^1.2.1",[m
[32m+[m[32m        "object-assign": "^4.0.1"[m
       }[m
     },[m
     "file-loader": {[m
[36m@@ -3343,8 +3348,8 @@[m
       "resolved": "https://registry.npmjs.org/file-loader/-/file-loader-1.1.5.tgz",[m
       "integrity": "sha512-RzGHDatcVNpGISTvCpfUfOGpYuSR7HSsSg87ki+wF6rw1Hm0RALPTiAdsxAq1UwLf0RRhbe22/eHK6nhXspiOQ==",[m
       "requires": {[m
[31m-        "loader-utils": "1.1.0",[m
[31m-        "schema-utils": "0.3.0"[m
[32m+[m[32m        "loader-utils": "^1.0.2",[m
[32m+[m[32m        "schema-utils": "^0.3.0"[m
       }[m
     },[m
     "filename-regex": {[m
[36m@@ -3357,8 +3362,8 @@[m
       "resolved": "https://registry.npmjs.org/fileset/-/fileset-2.0.3.tgz",[m
       "integrity": "sha1-jnVIqW08wjJ+5eZ0FocjozO7oqA=",[m
       "requires": {[m
[31m-        "glob": "7.1.2",[m
[31m-        "minimatch": "3.0.4"[m
[32m+[m[32m        "glob": "^7.0.3",[m
[32m+[m[32m        "minimatch": "^3.0.3"[m
       }[m
     },[m
     "filesize": {[m
[36m@@ -3371,11 +3376,11 @@[m
       "resolved": "https://registry.npmjs.org/fill-range/-/fill-range-2.2.3.tgz",[m
       "integrity": "sha1-ULd9/X5Gm8dJJHCWNpn+eoSFpyM=",[m
       "requires": {[m
[31m-        "is-number": "2.1.0",[m
[31m-        "isobject": "2.1.0",[m
[31m-        "randomatic": "1.1.7",[m
[31m-        "repeat-element": "1.1.2",[m
[31m-        "repeat-string": "1.6.1"[m
[32m+[m[32m        "is-number": "^2.1.0",[m
[32m+[m[32m        "isobject": "^2.0.0",[m
[32m+[m[32m        "randomatic": "^1.1.3",[m
[32m+[m[32m        "repeat-element": "^1.1.2",[m
[32m+[m[32m        "repeat-string": "^1.5.2"[m
       }[m
     },[m
     "filled-array": {[m
[36m@@ -3389,12 +3394,12 @@[m
       "integrity": "sha1-zgtoVbRYU+eRsvzGgARtiCU91/U=",[m
       "requires": {[m
         "debug": "2.6.9",[m
[31m-        "encodeurl": "1.0.1",[m
[31m-        "escape-html": "1.0.3",[m
[31m-        "on-finished": "2.3.0",[m
[31m-        "parseurl": "1.3.2",[m
[31m-        "statuses": "1.3.1",[m
[31m-        "unpipe": "1.0.0"[m
[32m+[m[32m        "encodeurl": "~1.0.1",[m
[32m+[m[32m        "escape-html": "~1.0.3",[m
[32m+[m[32m        "on-finished": "~2.3.0",[m
[32m+[m[32m        "parseurl": "~1.3.2",[m
[32m+[m[32m        "statuses": "~1.3.1",[m
[32m+[m[32m        "unpipe": "~1.0.0"[m
       }[m
     },[m
     "find-cache-dir": {[m
[36m@@ -3402,9 +3407,9 @@[m
       "resolved": "https://registry.npmjs.org/find-cache-dir/-/find-cache-dir-1.0.0.tgz",[m
       "integrity": "sha1-kojj6ePMN0hxfTnq3hfPcfww7m8=",[m
       "requires": {[m
[31m-        "commondir": "1.0.1",[m
[31m-        "make-dir": "1.1.0",[m
[31m-        "pkg-dir": "2.0.0"[m
[32m+[m[32m        "commondir": "^1.0.1",[m
[32m+[m[32m        "make-dir": "^1.0.0",[m
[32m+[m[32m        "pkg-dir": "^2.0.0"[m
       }[m
     },[m
     "find-up": {[m
[36m@@ -3412,7 +3417,7 @@[m
       "resolved": "https://registry.npmjs.org/find-up/-/find-up-2.1.0.tgz",[m
       "integrity": "sha1-RdG35QbHF93UgndaK3eSCjwMV6c=",[m
       "requires": {[m
[31m-        "locate-path": "2.0.0"[m
[32m+[m[32m        "locate-path": "^2.0.0"[m
       }[m
     },[m
     "flat-cache": {[m
[36m@@ -3420,10 +3425,10 @@[m
       "resolved": "https://registry.npmjs.org/flat-cache/-/flat-cache-1.3.0.tgz",[m
       "integrity": "sha1-0wMLMrOBVPTjt+nHCfSQ9++XxIE=",[m
       "requires": {[m
[31m-        "circular-json": "0.3.3",[m
[31m-        "del": "2.2.2",[m
[31m-        "graceful-fs": "4.1.11",[m
[31m-        "write": "0.2.1"[m
[32m+[m[32m        "circular-json": "^0.3.1",[m
[32m+[m[32m        "del": "^2.0.2",[m
[32m+[m[32m        "graceful-fs": "^4.1.2",[m
[32m+[m[32m        "write": "^0.2.1"[m
       }[m
     },[m
     "flatten": {[m
[36m@@ -3436,7 +3441,7 @@[m
       "resolved": "https://registry.npmjs.org/follow-redirects/-/follow-redirects-1.6.1.tgz",[m
       "integrity": "sha512-t2JCjbzxQpWvbhts3l6SH1DKzSrx8a+SsaVf4h6bG4kOXUuPYS/kg2Lr4gQSb7eemaHqJkOThF1BGyjlUkO1GQ==",[m
       "requires": {[m
[31m-        "debug": "3.1.0"[m
[32m+[m[32m        "debug": "=3.1.0"[m
       },[m
       "dependencies": {[m
         "debug": {[m
[36m@@ -3459,7 +3464,7 @@[m
       "resolved": "https://registry.npmjs.org/for-own/-/for-own-0.1.5.tgz",[m
       "integrity": "sha1-UmXGgaTylNq78XyVCbZ2OqhFEM4=",[m
       "requires": {[m
[31m-        "for-in": "1.0.2"[m
[32m+[m[32m        "for-in": "^1.0.1"[m
       }[m
     },[m
     "foreach": {[m
[36m@@ -3477,9 +3482,9 @@[m
       "resolved": "https://registry.npmjs.org/form-data/-/form-data-2.3.1.tgz",[m
       "integrity": "sha1-b7lPvXGIUwbXPRXMSX/kzE7NRL8=",[m
       "requires": {[m
[31m-        "asynckit": "0.4.0",[m
[31m-        "combined-stream": "1.0.5",[m
[31m-        "mime-types": "2.1.17"[m
[32m+[m[32m        "asynckit": "^0.4.0",[m
[32m+[m[32m        "combined-stream": "^1.0.5",[m
[32m+[m[32m        "mime-types": "^2.1.12"[m
       }[m
     },[m
     "forwarded": {[m
[36m@@ -3497,9 +3502,9 @@[m
       "resolved": "https://registry.npmjs.org/fs-extra/-/fs-extra-3.0.1.tgz",[m
       "integrity": "sha1-N5TzeMWLNC6n27sjCVEJxLO2IpE=",[m
       "requires": {[m
[31m-        "graceful-fs": "4.1.11",[m
[31m-        "jsonfile": "3.0.1",[m
[31m-        "universalify": "0.1.1"[m
[32m+[m[32m        "graceful-fs": "^4.1.2",[m
[32m+[m[32m        "jsonfile": "^3.0.0",[m
[32m+[m[32m        "universalify": "^0.1.0"[m
       }[m
     },[m
     "fs.realpath": {[m
[36m@@ -3513,8 +3518,8 @@[m
       "integrity": "sha512-Pxm6sI2MeBD7RdD12RYsqaP0nMiwx8eZBXCa6z2L+mRHm2DYrOYwihmhjpkdjUHwQhslWQjRpEgNq4XvBmaAuw==",[m
       "optional": true,[m
       "requires": {[m
[31m-        "nan": "2.12.1",[m
[31m-        "node-pre-gyp": "0.10.3"[m
[32m+[m[32m        "nan": "^2.9.2",[m
[32m+[m[32m        "node-pre-gyp": "^0.10.0"[m
       },[m
       "dependencies": {[m
         "abbrev": {[m
[36m@@ -4023,7 +4028,7 @@[m
       "resolved": "https://registry.npmjs.org/getpass/-/getpass-0.1.7.tgz",[m
       "integrity": "sha1-Xv+OPmhNVprkyysSgmBOi6YhSfo=",[m
       "requires": {[m
[31m-        "assert-plus": "1.0.0"[m
[32m+[m[32m        "assert-plus": "^1.0.0"[m
       }[m
     },[m
     "glob": {[m
[36m@@ -4031,12 +4036,12 @@[m
       "resolved": "https://registry.npmjs.org/glob/-/glob-7.1.2.tgz",[m
       "integrity": "sha512-MJTUg1kjuLeQCJ+ccE4Vpa6kKVXkPYJ2mOCQyUuKLcLQsdrMCpBPUi8qVE6+YuaJkozeA9NusTAw3hLr8Xe5EQ==",[m
       "requires": {[m
[31m-        "fs.realpath": "1.0.0",[m
[31m-        "inflight": "1.0.6",[m
[31m-        "inherits": "2.0.3",[m
[31m-        "minimatch": "3.0.4",[m
[31m-        "once": "1.4.0",[m
[31m-        "path-is-absolute": "1.0.1"[m
[32m+[m[32m        "fs.realpath": "^1.0.0",[m
[32m+[m[32m        "inflight": "^1.0.4",[m
[32m+[m[32m        "inherits": "2",[m
[32m+[m[32m        "minimatch": "^3.0.4",[m
[32m+[m[32m        "once": "^1.3.0",[m
[32m+[m[32m        "path-is-absolute": "^1.0.0"[m
       }[m
     },[m
     "glob-base": {[m
[36m@@ -4044,8 +4049,8 @@[m
       "resolved": "https://registry.npmjs.org/glob-base/-/glob-base-0.3.0.tgz",[m
       "integrity": "sha1-27Fk9iIbHAscz4Kuoyi0l98Oo8Q=",[m
       "requires": {[m
[31m-        "glob-parent": "2.0.0",[m
[31m-        "is-glob": "2.0.1"[m
[32m+[m[32m        "glob-parent": "^2.0.0",[m
[32m+[m[32m        "is-glob": "^2.0.0"[m
       }[m
     },[m
     "glob-parent": {[m
[36m@@ -4053,7 +4058,7 @@[m
       "resolved": "https://registry.npmjs.org/glob-parent/-/glob-parent-2.0.0.tgz",[m
       "integrity": "sha1-gTg9ctsFT8zPUzbaqQLxgvbtuyg=",[m
       "requires": {[m
[31m-        "is-glob": "2.0.1"[m
[32m+[m[32m        "is-glob": "^2.0.0"[m
       }[m
     },[m
     "global-modules": {[m
[36m@@ -4061,9 +4066,9 @@[m
       "resolved": "https://registry.npmjs.org/global-modules/-/global-modules-1.0.0.tgz",[m
       "integrity": "sha512-sKzpEkf11GpOFuw0Zzjzmt4B4UZwjOcG757PPvrfhxcLFbq0wpsgpOqxpxtxFiCG4DtG93M6XRVbF2oGdev7bg==",[m
       "requires": {[m
[31m-        "global-prefix": "1.0.2",[m
[31m-        "is-windows": "1.0.1",[m
[31m-        "resolve-dir": "1.0.1"[m
[32m+[m[32m        "global-prefix": "^1.0.1",[m
[32m+[m[32m        "is-windows": "^1.0.1",[m
[32m+[m[32m        "resolve-dir": "^1.0.0"[m
       }[m
     },[m
     "global-prefix": {[m
[36m@@ -4071,11 +4076,11 @@[m
       "resolved": "https://registry.npmjs.org/global-prefix/-/global-prefix-1.0.2.tgz",[m
       "integrity": "sha1-2/dDxsFJklk8ZVVoy2btMsASLr4=",[m
       "requires": {[m
[31m-        "expand-tilde": "2.0.2",[m
[31m-        "homedir-polyfill": "1.0.1",[m
[31m-        "ini": "1.3.5",[m
[31m-        "is-windows": "1.0.1",[m
[31m-        "which": "1.3.0"[m
[32m+[m[32m        "expand-tilde": "^2.0.2",[m
[32m+[m[32m        "homedir-polyfill": "^1.0.1",[m
[32m+[m[32m        "ini": "^1.3.4",[m
[32m+[m[32m        "is-windows": "^1.0.1",[m
[32m+[m[32m        "which": "^1.2.14"[m
       }[m
     },[m
     "globals": {[m
[36m@@ -4088,12 +4093,12 @@[m
       "resolved": "https://registry.npmjs.org/globby/-/globby-5.0.0.tgz",[m
       "integrity": "sha1-69hGZ8oNuzMLmbz8aOrCvFQ3Dg0=",[m
       "requires": {[m
[31m-        "array-union": "1.0.2",[m
[31m-        "arrify": "1.0.1",[m
[31m-        "glob": "7.1.2",[m
[31m-        "object-assign": "4.1.1",[m
[31m-        "pify": "2.3.0",[m
[31m-        "pinkie-promise": "2.0.1"[m
[32m+[m[32m        "array-union": "^1.0.1",[m
[32m+[m[32m        "arrify": "^1.0.0",[m
[32m+[m[32m        "glob": "^7.0.3",[m
[32m+[m[32m        "object-assign": "^4.0.1",[m
[32m+[m[32m        "pify": "^2.0.0",[m
[32m+[m[32m        "pinkie-promise": "^2.0.0"[m
       }[m
     },[m
     "got": {[m
[36m@@ -4101,21 +4106,21 @@[m
       "resolved": "https://registry.npmjs.org/got/-/got-5.7.1.tgz",[m
       "integrity": "sha1-X4FjWmHkplifGAVp6k44FoClHzU=",[m
       "requires": {[m
[31m-        "create-error-class": "3.0.2",[m
[31m-        "duplexer2": "0.1.4",[m
[31m-        "is-redirect": "1.0.0",[m
[31m-        "is-retry-allowed": "1.1.0",[m
[31m-        "is-stream": "1.1.0",[m
[31m-        "lowercase-keys": "1.0.0",[m
[31m-        "node-status-codes": "1.0.0",[m
[31m-        "object-assign": "4.1.1",[m
[31m-        "parse-json": "2.2.0",[m
[31m-        "pinkie-promise": "2.0.1",[m
[31m-        "read-all-stream": "3.1.0",[m
[31m-        "readable-stream": "2.3.3",[m
[31m-        "timed-out": "3.1.3",[m
[31m-        "unzip-response": "1.0.2",[m
[31m-        "url-parse-lax": "1.0.0"[m
[32m+[m[32m        "create-error-class": "^3.0.1",[m
[32m+[m[32m        "duplexer2": "^0.1.4",[m
[32m+[m[32m        "is-redirect": "^1.0.0",[m
[32m+[m[32m        "is-retry-allowed": "^1.0.0",[m
[32m+[m[32m        "is-stream": "^1.0.0",[m
[32m+[m[32m        "lowercase-keys": "^1.0.0",[m
[32m+[m[32m        "node-status-codes": "^1.0.0",[m
[32m+[m[32m        "object-assign": "^4.0.1",[m
[32m+[m[32m        "parse-json": "^2.1.0",[m
[32m+[m[32m        "pinkie-promise": "^2.0.0",[m
[32m+[m[32m        "read-all-stream": "^3.0.0",[m
[32m+[m[32m        "readable-stream": "^2.0.5",[m
[32m+[m[32m        "timed-out": "^3.0.0",[m
[32m+[m[32m        "unzip-response": "^1.0.2",[m
[32m+[m[32m        "url-parse-lax": "^1.0.0"[m
       }[m
     },[m
     "graceful-fs": {[m
[36m@@ -4133,7 +4138,7 @@[m
       "resolved": "https://registry.npmjs.org/gzip-size/-/gzip-size-3.0.0.tgz",[m
       "integrity": "sha1-VGGI6b3DN/Zzdy+BZgRks4nc5SA=",[m
       "requires": {[m
[31m-        "duplexer": "0.1.1"[m
[32m+[m[32m        "duplexer": "^0.1.1"[m
       }[m
     },[m
     "handle-thing": {[m
[36m@@ -4146,10 +4151,10 @@[m
       "resolved": "https://registry.npmjs.org/handlebars/-/handlebars-4.0.11.tgz",[m
       "integrity": "sha1-Ywo13+ApS8KB7a5v/F0yn8eYLcw=",[m
       "requires": {[m
[31m-        "async": "1.5.2",[m
[31m-        "optimist": "0.6.1",[m
[31m-        "source-map": "0.4.4",[m
[31m-        "uglify-js": "2.8.29"[m
[32m+[m[32m        "async": "^1.4.0",[m
[32m+[m[32m        "optimist": "^0.6.1",[m
[32m+[m[32m        "source-map": "^0.4.4",[m
[32m+[m[32m        "uglify-js": "^2.6"[m
       },[m
       "dependencies": {[m
         "async": {[m
[36m@@ -4162,7 +4167,7 @@[m
           "resolved": "https://registry.npmjs.org/source-map/-/source-map-0.4.4.tgz",[m
           "integrity": "sha1-66T12pwNyZneaAMti092FzZSA2s=",[m
           "requires": {[m
[31m-            "amdefine": "1.0.1"[m
[32m+[m[32m            "amdefine": ">=0.0.4"[m
           }[m
         },[m
         "uglify-js": {[m
[36m@@ -4171,9 +4176,9 @@[m
           "integrity": "sha1-KcVzMUgFe7Th913zW3qcty5qWd0=",[m
           "optional": true,[m
           "requires": {[m
[31m-            "source-map": "0.5.7",[m
[31m-            "uglify-to-browserify": "1.0.2",[m
[31m-            "yargs": "3.10.0"[m
[32m+[m[32m            "source-map": "~0.5.1",[m
[32m+[m[32m            "uglify-to-browserify": "~1.0.0",[m
[32m+[m[32m            "yargs": "~3.10.0"[m
           },[m
           "dependencies": {[m
             "source-map": {[m
[36m@@ -4190,9 +4195,9 @@[m
           "integrity": "sha1-9+572FfdfB0tOMDnTvvWgdFDH9E=",[m
           "optional": true,[m
           "requires": {[m
[31m-            "camelcase": "1.2.1",[m
[31m-            "cliui": "2.1.0",[m
[31m-            "decamelize": "1.2.0",[m
[32m+[m[32m            "camelcase": "^1.0.2",[m
[32m+[m[32m            "cliui": "^2.1.0",[m
[32m+[m[32m            "decamelize": "^1.0.0",[m
             "window-size": "0.1.0"[m
           }[m
         }[m
[36m@@ -4208,8 +4213,8 @@[m
       "resolved": "https://registry.npmjs.org/har-validator/-/har-validator-5.0.3.tgz",[m
       "integrity": "sha1-ukAsJmGU8VlW7xXg/PJCmT9qff0=",[m
       "requires": {[m
[31m-        "ajv": "5.5.2",[m
[31m-        "har-schema": "2.0.0"[m
[32m+[m[32m        "ajv": "^5.1.0",[m
[32m+[m[32m        "har-schema": "^2.0.0"[m
       }[m
     },[m
     "has": {[m
[36m@@ -4217,7 +4222,7 @@[m
       "resolved": "https://registry.npmjs.org/has/-/has-1.0.1.tgz",[m
       "integrity": "sha1-hGFzP1OLCDfJNh45qauelwTcLyg=",[m
       "requires": {[m
[31m-        "function-bind": "1.1.1"[m
[32m+[m[32m        "function-bind": "^1.0.2"[m
       }[m
     },[m
     "has-ansi": {[m
[36m@@ -4225,7 +4230,7 @@[m
       "resolved": "https://registry.npmjs.org/has-ansi/-/has-ansi-2.0.0.tgz",[m
       "integrity": "sha1-NPUEnOHs3ysGSa8+8k5F7TVBbZE=",[m
       "requires": {[m
[31m-        "ansi-regex": "2.1.1"[m
[32m+[m[32m        "ansi-regex": "^2.0.0"[m
       }[m
     },[m
     "has-flag": {[m
[36m@@ -4238,7 +4243,7 @@[m
       "resolved": "https://registry.npmjs.org/hash-base/-/hash-base-2.0.2.tgz",[m
       "integrity": "sha1-ZuodhW206KVHDK32/OI65SRO8uE=",[m
       "requires": {[m
[31m-        "inherits": "2.0.3"[m
[32m+[m[32m        "inherits": "^2.0.1"[m
       }[m
     },[m
     "hash.js": {[m
[36m@@ -4246,8 +4251,8 @@[m
       "resolved": "https://registry.npmjs.org/hash.js/-/hash.js-1.1.3.tgz",[m
       "integrity": "sha512-/UETyP0W22QILqS+6HowevwhEFJ3MBJnwTf75Qob9Wz9t0DPuisL8kW8YZMK62dHAKE1c1p+gY1TtOLY+USEHA==",[m
       "requires": {[m
[31m-        "inherits": "2.0.3",[m
[31m-        "minimalistic-assert": "1.0.0"[m
[32m+[m[32m        "inherits": "^2.0.3",[m
[32m+[m[32m        "minimalistic-assert": "^1.0.0"[m
       }[m
     },[m
     "hawk": {[m
[36m@@ -4255,10 +4260,10 @@[m
       "resolved": "https://registry.npmjs.org/hawk/-/hawk-6.0.2.tgz",[m
       "integrity": "sha512-miowhl2+U7Qle4vdLqDdPt9m09K6yZhkLDTWGoUiUzrQCn+mHHSmfJgAyGaLRZbPmTqfFFjRV1QWCW0VWUJBbQ==",[m
       "requires": {[m
[31m-        "boom": "4.3.1",[m
[31m-        "cryptiles": "3.1.2",[m
[31m-        "hoek": "4.2.0",[m
[31m-        "sntp": "2.1.0"[m
[32m+[m[32m        "boom": "4.x.x",[m
[32m+[m[32m        "cryptiles": "3.x.x",[m
[32m+[m[32m        "hoek": "4.x.x",[m
[32m+[m[32m        "sntp": "2.x.x"[m
       }[m
     },[m
     "he": {[m
[36m@@ -4271,11 +4276,11 @@[m
       "resolved": "https://registry.npmjs.org/history/-/history-4.7.2.tgz",[m
       "integrity": "sha512-1zkBRWW6XweO0NBcjiphtVJVsIQ+SXF29z9DVkceeaSLVMFXHool+fdCZD4spDCfZJCILPILc3bm7Bc+HRi0nA==",[m
       "requires": {[m
[31m-        "invariant": "2.2.2",[m
[31m-        "loose-envify": "1.3.1",[m
[31m-        "resolve-pathname": "2.2.0",[m
[31m-        "value-equal": "0.4.0",[m
[31m-        "warning": "3.0.0"[m
[32m+[m[32m        "invariant": "^2.2.1",[m
[32m+[m[32m        "loose-envify": "^1.2.0",[m
[32m+[m[32m        "resolve-pathname": "^2.2.0",[m
[32m+[m[32m        "value-equal": "^0.4.0",[m
[32m+[m[32m        "warning": "^3.0.0"[m
       }[m
     },[m
     "hmac-drbg": {[m
[36m@@ -4283,9 +4288,9 @@[m
       "resolved": "https://registry.npmjs.org/hmac-drbg/-/hmac-drbg-1.0.1.tgz",[m
       "integrity": "sha1-0nRXAQJabHdabFRXk+1QL8DGSaE=",[m
       "requires": {[m
[31m-        "hash.js": "1.1.3",[m
[31m-        "minimalistic-assert": "1.0.0",[m
[31m-        "minimalistic-crypto-utils": "1.0.1"[m
[32m+[m[32m        "hash.js": "^1.0.3",[m
[32m+[m[32m        "minimalistic-assert": "^1.0.0",[m
[32m+[m[32m        "minimalistic-crypto-utils": "^1.0.1"[m
       }[m
     },[m
     "hoek": {[m
[36m@@ -4303,8 +4308,8 @@[m
       "resolved": "https://registry.npmjs.org/home-or-tmp/-/home-or-tmp-2.0.0.tgz",[m
       "integrity": "sha1-42w/LSyufXRqhX440Y1fMqeILbg=",[m
       "requires": {[m
[31m-        "os-homedir": "1.0.2",[m
[31m-        "os-tmpdir": "1.0.2"[m
[32m+[m[32m        "os-homedir": "^1.0.0",[m
[32m+[m[32m        "os-tmpdir": "^1.0.1"[m
       }[m
     },[m
     "homedir-polyfill": {[m
[36m@@ -4312,7 +4317,7 @@[m
       "resolved": "https://registry.npmjs.org/homedir-polyfill/-/homedir-polyfill-1.0.1.tgz",[m
       "integrity": "sha1-TCu8inWJmP7r9e1oWA921GdotLw=",[m
       "requires": {[m
[31m-        "parse-passwd": "1.0.0"[m
[32m+[m[32m        "parse-passwd": "^1.0.0"[m
       }[m
     },[m
     "hosted-git-info": {[m
[36m@@ -4325,10 +4330,10 @@[m
       "resolved": "https://registry.npmjs.org/hpack.js/-/hpack.js-2.1.6.tgz",[m
       "integrity": "sha1-h3dMCUnlE/QuhFdbPEVoH63ioLI=",[m
       "requires": {[m
[31m-        "inherits": "2.0.3",[m
[31m-        "obuf": "1.1.1",[m
[31m-        "readable-stream": "2.3.3",[m
[31m-        "wbuf": "1.7.2"[m
[32m+[m[32m        "inherits": "^2.0.1",[m
[32m+[m[32m        "obuf": "^1.0.0",[m
[32m+[m[32m        "readable-stream": "^2.0.1",[m
[32m+[m[32m        "wbuf": "^1.1.0"[m
       }[m
     },[m
     "html-comment-regex": {[m
[36m@@ -4341,7 +4346,7 @@[m
       "resolved": "https://registry.npmjs.org/html-encoding-sniffer/-/html-encoding-sniffer-1.0.2.tgz",[m
       "integrity": "sha512-71lZziiDnsuabfdYiUeWdCVyKuqwWi23L8YeIgV9jSSZHCtb6wB1BKWooH7L3tn4/FuZJMVWyNaIDr4RGmaSYw==",[m
       "requires": {[m
[31m-        "whatwg-encoding": "1.0.3"[m
[32m+[m[32m        "whatwg-encoding": "^1.0.1"[m
       }[m
     },[m
     "html-entities": {[m
[36m@@ -4354,14 +4359,14 @@[m
       "resolved": "https://registry.npmjs.org/html-minifier/-/html-minifier-3.5.8.tgz",[m
       "integrity": "sha512-WX7D6PB9PFq05fZ1/CyxPUuyqXed6vh2fGOM80+zJT5wAO93D/cUjLs0CcbBFjQmlwmCgRvl97RurtArIpOnkw==",[m
       "requires": {[m
[31m-        "camel-case": "3.0.0",[m
[31m-        "clean-css": "4.1.9",[m
[31m-        "commander": "2.12.2",[m
[31m-        "he": "1.1.1",[m
[31m-        "ncname": "1.0.0",[m
[31m-        "param-case": "2.1.1",[m
[31m-        "relateurl": "0.2.7",[m
[31m-        "uglify-js": "3.3.4"[m
[32m+[m[32m        "camel-case": "3.0.x",[m
[32m+[m[32m        "clean-css": "4.1.x",[m
[32m+[m[32m        "commander": "2.12.x",[m
[32m+[m[32m        "he": "1.1.x",[m
[32m+[m[32m        "ncname": "1.0.x",[m
[32m+[m[32m        "param-case": "2.1.x",[m
[32m+[m[32m        "relateurl": "0.2.x",[m
[32m+[m[32m        "uglify-js": "3.3.x"[m
       }[m
     },[m
     "html-webpack-plugin": {[m
[36m@@ -4369,12 +4374,12 @@[m
       "resolved": "https://registry.npmjs.org/html-webpack-plugin/-/html-webpack-plugin-2.29.0.tgz",[m
       "integrity": "sha1-6Yf0IYU9O2k4yMTIFxhC5f0XryM=",[m
       "requires": {[m
[31m-        "bluebird": "3.5.1",[m
[31m-        "html-minifier": "3.5.8",[m
[31m-        "loader-utils": "0.2.17",[m
[31m-        "lodash": "4.17.4",[m
[31m-        "pretty-error": "2.1.1",[m
[31m-        "toposort": "1.0.6"[m
[32m+[m[32m        "bluebird": "^3.4.7",[m
[32m+[m[32m        "html-minifier": "^3.2.3",[m
[32m+[m[32m        "loader-utils": "^0.2.16",[m
[32m+[m[32m        "lodash": "^4.17.3",[m
[32m+[m[32m        "pretty-error": "^2.0.2",[m
[32m+[m[32m        "toposort": "^1.0.0"[m
       },[m
       "dependencies": {[m
         "loader-utils": {[m
[36m@@ -4382,10 +4387,10 @@[m
           "resolved": "https://registry.npmjs.org/loader-utils/-/loader-utils-0.2.17.tgz",[m
           "integrity": "sha1-+G5jdNQyBabmxg6RlvF8Apm/s0g=",[m
           "requires": {[m
[31m-            "big.js": "3.2.0",[m
[31m-            "emojis-list": "2.1.0",[m
[31m-            "json5": "0.5.1",[m
[31m-            "object-assign": "4.1.1"[m
[32m+[m[32m            "big.js": "^3.1.3",[m
[32m+[m[32m            "emojis-list": "^2.0.0",[m
[32m+[m[32m            "json5": "^0.5.0",[m
[32m+[m[32m            "object-assign": "^4.0.1"[m
           }[m
         }[m
       }[m
[36m@@ -4395,10 +4400,10 @@[m
       "resolved": "https://registry.npmjs.org/htmlparser2/-/htmlparser2-3.3.0.tgz",[m
       "integrity": "sha1-zHDQWln2VC5D8OaFyYLhTJJKnv4=",[m
       "requires": {[m
[31m-        "domelementtype": "1.3.0",[m
[31m-        "domhandler": "2.1.0",[m
[31m-        "domutils": "1.1.6",[m
[31m-        "readable-stream": "1.0.34"[m
[32m+[m[32m        "domelementtype": "1",[m
[32m+[m[32m        "domhandler": "2.1",[m
[32m+[m[32m        "domutils": "1.1",[m
[32m+[m[32m        "readable-stream": "1.0"[m
       },[m
       "dependencies": {[m
         "domutils": {[m
[36m@@ -4406,7 +4411,7 @@[m
           "resolved": "https://registry.npmjs.org/domutils/-/domutils-1.1.6.tgz",[m
           "integrity": "sha1-vdw94Jm5ou+sxRxiPyj0FuzFdIU=",[m
           "requires": {[m
[31m-            "domelementtype": "1.3.0"[m
[32m+[m[32m            "domelementtype": "1"[m
           }[m
         },[m
         "readable-stream": {[m
[36m@@ -4414,10 +4419,10 @@[m
           "resolved": "https://registry.npmjs.org/readable-stream/-/readable-stream-1.0.34.tgz",[m
           "integrity": "sha1-Elgg40vIQtLyqq+v5MKRbuMsFXw=",[m
           "requires": {[m
[31m-            "core-util-is": "1.0.2",[m
[31m-            "inherits": "2.0.3",[m
[32m+[m[32m            "core-util-is": "~1.0.0",[m
[32m+[m[32m            "inherits": "~2.0.1",[m
             "isarray": "0.0.1",[m
[31m-            "string_decoder": "0.10.31"[m
[32m+[m[32m            "string_decoder": "~0.10.x"[m
           }[m
         },[m
         "string_decoder": {[m
[36m@@ -4440,7 +4445,7 @@[m
         "depd": "1.1.1",[m
         "inherits": "2.0.3",[m
         "setprototypeof": "1.0.3",[m
[31m-        "statuses": "1.3.1"[m
[32m+[m[32m        "statuses": ">= 1.3.1 < 2"[m
       },[m
       "dependencies": {[m
         "setprototypeof": {[m
[36m@@ -4460,8 +4465,8 @@[m
       "resolved": "https://registry.npmjs.org/http-proxy/-/http-proxy-1.16.2.tgz",[m
       "integrity": "sha1-Bt/ykpUr9k2+hHH6nfcwZtTzd0I=",[m
       "requires": {[m
[31m-        "eventemitter3": "1.2.0",[m
[31m-        "requires-port": "1.0.0"[m
[32m+[m[32m        "eventemitter3": "1.x.x",[m
[32m+[m[32m        "requires-port": "1.x.x"[m
       }[m
     },[m
     "http-proxy-middleware": {[m
[36m@@ -4469,10 +4474,10 @@[m
       "resolved": "https://registry.npmjs.org/http-proxy-middleware/-/http-proxy-middleware-0.17.4.tgz",[m
       "integrity": "sha1-ZC6ISIUdZvCdTxJJEoRtuutBuDM=",[m
       "requires": {[m
[31m-        "http-proxy": "1.16.2",[m
[31m-        "is-glob": "3.1.0",[m
[31m-        "lodash": "4.17.4",[m
[31m-        "micromatch": "2.3.11"[m
[32m+[m[32m        "http-proxy": "^1.16.2",[m
[32m+[m[32m        "is-glob": "^3.1.0",[m
[32m+[m[32m        "lodash": "^4.17.2",[m
[32m+[m[32m        "micromatch": "^2.3.11"[m
       },[m
       "dependencies": {[m
         "is-extglob": {[m
[36m@@ -4485,7 +4490,7 @@[m
           "resolved": "https://registry.npmjs.org/is-glob/-/is-glob-3.1.0.tgz",[m
           "integrity": "sha1-e6WuJCF4BKxwcHuWkiVnSGzD6Eo=",[m
           "requires": {[m
[31m-            "is-extglob": "2.1.1"[m
[32m+[m[32m            "is-extglob": "^2.1.0"[m
           }[m
         }[m
       }[m
[36m@@ -4495,9 +4500,9 @@[m
       "resolved": "https://registry.npmjs.org/http-signature/-/http-signature-1.2.0.tgz",[m
       "integrity": "sha1-muzZJRFHcvPZW2WmCruPfBj7rOE=",[m
       "requires": {[m
[31m-        "assert-plus": "1.0.0",[m
[31m-        "jsprim": "1.4.1",[m
[31m-        "sshpk": "1.13.1"[m
[32m+[m[32m        "assert-plus": "^1.0.0",[m
[32m+[m[32m        "jsprim": "^1.2.2",[m
[32m+[m[32m        "sshpk": "^1.7.0"[m
       }[m
     },[m
     "https-browserify": {[m
[36m@@ -4525,7 +4530,7 @@[m
       "resolved": "https://registry.npmjs.org/icss-utils/-/icss-utils-2.1.0.tgz",[m
       "integrity": "sha1-g/Cg7DeL8yRheLbCrZE28TWxyWI=",[m
       "requires": {[m
[31m-        "postcss": "6.0.15"[m
[32m+[m[32m        "postcss": "^6.0.1"[m
       }[m
     },[m
     "ieee754": {[m
[36m@@ -4543,8 +4548,8 @@[m
       "resolved": "https://registry.npmjs.org/import-local/-/import-local-0.1.1.tgz",[m
       "integrity": "sha1-sReVcqrNwRxqkQCftDDbyrX2aKg=",[m
       "requires": {[m
[31m-        "pkg-dir": "2.0.0",[m
[31m-        "resolve-cwd": "2.0.0"[m
[32m+[m[32m        "pkg-dir": "^2.0.0",[m
[32m+[m[32m        "resolve-cwd": "^2.0.0"[m
       }[m
     },[m
     "imurmurhash": {[m
[36m@@ -4557,7 +4562,7 @@[m
       "resolved": "https://registry.npmjs.org/indent-string/-/indent-string-2.1.0.tgz",[m
       "integrity": "sha1-ji1INIdCEhtKghi3oTfppSBJ3IA=",[m
       "requires": {[m
[31m-        "repeating": "2.0.1"[m
[32m+[m[32m        "repeating": "^2.0.0"[m
       }[m
     },[m
     "indexes-of": {[m
[36m@@ -4575,8 +4580,8 @@[m
       "resolved": "https://registry.npmjs.org/inflight/-/inflight-1.0.6.tgz",[m
       "integrity": "sha1-Sb1jMdfQLQwJvJEKEHW6gWW1bfk=",[m
       "requires": {[m
[31m-        "once": "1.4.0",[m
[31m-        "wrappy": "1.0.2"[m
[32m+[m[32m        "once": "^1.3.0",[m
[32m+[m[32m        "wrappy": "1"[m
       }[m
     },[m
     "inherits": {[m
[36m@@ -4594,8 +4599,8 @@[m
       "resolved": "https://registry.npmjs.org/inline-style-prefixer/-/inline-style-prefixer-2.0.5.tgz",[m
       "integrity": "sha1-wVPH6I/YT+9cYC6VqBaLJ3BnH+c=",[m
       "requires": {[m
[31m-        "bowser": "1.9.4",[m
[31m-        "hyphenate-style-name": "1.0.3"[m
[32m+[m[32m        "bowser": "^1.0.0",[m
[32m+[m[32m        "hyphenate-style-name": "^1.0.1"[m
       }[m
     },[m
     "inquirer": {[m
[36m@@ -4603,20 +4608,20 @@[m
       "resolved": "https://registry.npmjs.org/inquirer/-/inquirer-3.3.0.tgz",[m
       "integrity": "sha512-h+xtnyk4EwKvFWHrUYsWErEVR+igKtLdchu+o0Z1RL7VU/jVMFbYir2bp6bAj8efFNxWqHX0dIss6fJQ+/+qeQ==",[m
       "requires": {[m
[31m-        "ansi-escapes": "3.0.0",[m
[31m-        "chalk": "2.3.0",[m
[31m-        "cli-cursor": "2.1.0",[m
[31m-        "cli-width": "2.2.0",[m
[31m-        "external-editor": "2.1.0",[m
[31m-        "figures": "2.0.0",[m
[31m-        "lodash": "4.17.4",[m
[32m+[m[32m        "ansi-escapes": "^3.0.0",[m
[32m+[m[32m        "chalk": "^2.0.0",[m
[32m+[m[32m        "cli-cursor": "^2.1.0",[m
[32m+[m[32m        "cli-width": "^2.0.0",[m
[32m+[m[32m        "external-editor": "^2.0.4",[m
[32m+[m[32m        "figures": "^2.0.0",[m
[32m+[m[32m        "lodash": "^4.3.0",[m
         "mute-stream": "0.0.7",[m
[31m-        "run-async": "2.3.0",[m
[31m-        "rx-lite": "4.0.8",[m
[31m-        "rx-lite-aggregates": "4.0.8",[m
[31m-        "string-width": "2.1.1",[m
[31m-        "strip-ansi": "4.0.0",[m
[31m-        "through": "2.3.8"[m
[32m+[m[32m        "run-async": "^2.2.0",[m
[32m+[m[32m        "rx-lite": "^4.0.8",[m
[32m+[m[32m        "rx-lite-aggregates": "^4.0.8",[m
[32m+[m[32m        "string-width": "^2.1.0",[m
[32m+[m[32m        "strip-ansi": "^4.0.0",[m
[32m+[m[32m        "through": "^2.3.6"[m
       },[m
       "dependencies": {[m
         "ansi-regex": {[m
[36m@@ -4629,9 +4634,9 @@[m
           "resolved": "https://registry.npmjs.org/chalk/-/chalk-2.3.0.tgz",[m
           "integrity": "sha512-Az5zJR2CBujap2rqXGaJKaPHyJ0IrUimvYNX+ncCy8PJP4ltOGTrHUIo097ZaL2zMeKYpiCdqDvS6zdrTFok3Q==",[m
           "requires": {[m
[31m-            "ansi-styles": "3.2.0",[m
[31m-            "escape-string-regexp": "1.0.5",[m
[31m-            "supports-color": "4.5.0"[m
[32m+[m[32m            "ansi-styles": "^3.1.0",[m
[32m+[m[32m            "escape-string-regexp": "^1.0.5",[m
[32m+[m[32m            "supports-color": "^4.0.0"[m
           }[m
         },[m
         "strip-ansi": {[m
[36m@@ -4639,7 +4644,7 @@[m
           "resolved": "https://registry.npmjs.org/strip-ansi/-/strip-ansi-4.0.0.tgz",[m
           "integrity": "sha1-qEeQIusaw2iocTibY1JixQXuNo8=",[m
           "requires": {[m
[31m-            "ansi-regex": "3.0.0"[m
[32m+[m[32m            "ansi-regex": "^3.0.0"[m
           }[m
         },[m
         "supports-color": {[m
[36m@@ -4647,7 +4652,7 @@[m
           "resolved": "https://registry.npmjs.org/supports-color/-/supports-color-4.5.0.tgz",[m
           "integrity": "sha1-vnoN5ITexcXN34s9WRJQRJEvY1s=",[m
           "requires": {[m
[31m-            "has-flag": "2.0.0"[m
[32m+[m[32m            "has-flag": "^2.0.0"[m
           }[m
         }[m
       }[m
[36m@@ -4657,7 +4662,7 @@[m
       "resolved": "https://registry.npmjs.org/internal-ip/-/internal-ip-1.2.0.tgz",[m
       "integrity": "sha1-rp+/k7mEh4eF1QqN4bNWlWBYz1w=",[m
       "requires": {[m
[31m-        "meow": "3.7.0"[m
[32m+[m[32m        "meow": "^3.3.0"[m
       }[m
     },[m
     "interpret": {[m
[36m@@ -4670,7 +4675,7 @@[m
       "resolved": "https://registry.npmjs.org/invariant/-/invariant-2.2.2.tgz",[m
       "integrity": "sha1-nh9WrArNtr8wMwbzOL47IErmA2A=",[m
       "requires": {[m
[31m-        "loose-envify": "1.3.1"[m
[32m+[m[32m        "loose-envify": "^1.0.0"[m
       }[m
     },[m
     "invert-kv": {[m
[36m@@ -4703,7 +4708,7 @@[m
       "resolved": "https://registry.npmjs.org/is-binary-path/-/is-binary-path-1.0.1.tgz",[m
       "integrity": "sha1-dfFmQrSA8YenEcgUFh/TpKdlWJg=",[m
       "requires": {[m
[31m-        "binary-extensions": "1.11.0"[m
[32m+[m[32m        "binary-extensions": "^1.0.0"[m
       }[m
     },[m
     "is-buffer": {[m
[36m@@ -4716,7 +4721,7 @@[m
       "resolved": "https://registry.npmjs.org/is-builtin-module/-/is-builtin-module-1.0.0.tgz",[m
       "integrity": "sha1-VAVy0096wxGfj3bDDLwbHgN6/74=",[m
       "requires": {[m
[31m-        "builtin-modules": "1.1.1"[m
[32m+[m[32m        "builtin-modules": "^1.0.0"[m
       }[m
     },[m
     "is-callable": {[m
[36m@@ -4729,7 +4734,7 @@[m
       "resolved": "https://registry.npmjs.org/is-ci/-/is-ci-1.1.0.tgz",[m
       "integrity": "sha512-c7TnwxLePuqIlxHgr7xtxzycJPegNHFuIrBkwbf8hc58//+Op1CqFkyS+xnIMkwn9UsJIwc174BIjkyBmSpjKg==",[m
       "requires": {[m
[31m-        "ci-info": "1.1.2"[m
[32m+[m[32m        "ci-info": "^1.0.0"[m
       }[m
     },[m
     "is-date-object": {[m
[36m@@ -4752,7 +4757,7 @@[m
       "resolved": "https://registry.npmjs.org/is-equal-shallow/-/is-equal-shallow-0.1.3.tgz",[m
       "integrity": "sha1-IjgJj8Ih3gvPpdnqxMRdY4qhxTQ=",[m
       "requires": {[m
[31m-        "is-primitive": "2.0.0"[m
[32m+[m[32m        "is-primitive": "^2.0.0"[m
       }[m
     },[m
     "is-extendable": {[m
[36m@@ -4770,7 +4775,7 @@[m
       "resolved": "https://registry.npmjs.org/is-finite/-/is-finite-1.0.2.tgz",[m
       "integrity": "sha1-zGZ3aVYCvlUO8R6LSqYwU0K20Ko=",[m
       "requires": {[m
[31m-        "number-is-nan": "1.0.1"[m
[32m+[m[32m        "number-is-nan": "^1.0.0"[m
       }[m
     },[m
     "is-fullwidth-code-point": {[m
[36m@@ -4783,7 +4788,7 @@[m
       "resolved": "https://registry.npmjs.org/is-glob/-/is-glob-2.0.1.tgz",[m
       "integrity": "sha1-0Jb5JqPe1WAPP9/ZEZjLCIjC2GM=",[m
       "requires": {[m
[31m-        "is-extglob": "1.0.0"[m
[32m+[m[32m        "is-extglob": "^1.0.0"[m
       }[m
     },[m
     "is-npm": {[m
[36m@@ -4796,7 +4801,7 @@[m
       "resolved": "https://registry.npmjs.org/is-number/-/is-number-2.1.0.tgz",[m
       "integrity": "sha1-Afy7s5NGOlSPL0ZszhbezknbkI8=",[m
       "requires": {[m
[31m-        "kind-of": "3.2.2"[m
[32m+[m[32m        "kind-of": "^3.0.2"[m
       }[m
     },[m
     "is-obj": {[m
[36m@@ -4814,7 +4819,7 @@[m
       "resolved": "https://registry.npmjs.org/is-path-in-cwd/-/is-path-in-cwd-1.0.0.tgz",[m
       "integrity": "sha1-ZHdYK4IU1gI0YJRWcAO+ip6sBNw=",[m
       "requires": {[m
[31m-        "is-path-inside": "1.0.1"[m
[32m+[m[32m        "is-path-inside": "^1.0.0"[m
       }[m
     },[m
     "is-path-inside": {[m
[36m@@ -4822,7 +4827,7 @@[m
       "resolved": "https://registry.npmjs.org/is-path-inside/-/is-path-inside-1.0.1.tgz",[m
       "integrity": "sha1-jvW33lBDej/cprToZe96pVy0gDY=",[m
       "requires": {[m
[31m-        "path-is-inside": "1.0.2"[m
[32m+[m[32m        "path-is-inside": "^1.0.1"[m
       }[m
     },[m
     "is-plain-obj": {[m
[36m@@ -4855,7 +4860,7 @@[m
       "resolved": "https://registry.npmjs.org/is-regex/-/is-regex-1.0.4.tgz",[m
       "integrity": "sha1-VRdIm1RwkbCTDglWVM7SXul+lJE=",[m
       "requires": {[m
[31m-        "has": "1.0.1"[m
[32m+[m[32m        "has": "^1.0.1"[m
       }[m
     },[m
     "is-resolvable": {[m
[36m@@ -4883,7 +4888,7 @@[m
       "resolved": "https://registry.npmjs.org/is-svg/-/is-svg-2.1.0.tgz",[m
       "integrity": "sha1-z2EJDaDZ77yrhyLeum8DIgjbsOk=",[m
       "requires": {[m
[31m-        "html-comment-regex": "1.1.1"[m
[32m+[m[32m        "html-comment-regex": "^1.1.0"[m
       }[m
     },[m
     "is-symbol": {[m
[36m@@ -4946,17 +4951,17 @@[m
       "resolved": "https://registry.npmjs.org/istanbul-api/-/istanbul-api-1.2.1.tgz",[m
       "integrity": "sha512-oFCwXvd65amgaPCzqrR+a2XjanS1MvpXN6l/MlMUTv6uiA1NOgGX+I0uyq8Lg3GDxsxPsaP1049krz3hIJ5+KA==",[m
       "requires": {[m
[31m-        "async": "2.6.0",[m
[31m-        "fileset": "2.0.3",[m
[31m-        "istanbul-lib-coverage": "1.1.1",[m
[31m-        "istanbul-lib-hook": "1.1.0",[m
[31m-        "istanbul-lib-instrument": "1.9.1",[m
[31m-        "istanbul-lib-report": "1.1.2",[m
[31m-        "istanbul-lib-source-maps": "1.2.2",[m
[31m-        "istanbul-reports": "1.1.3",[m
[31m-        "js-yaml": "3.7.0",[m
[31m-        "mkdirp": "0.5.1",[m
[31m-        "once": "1.4.0"[m
[32m+[m[32m        "async": "^2.1.4",[m
[32m+[m[32m        "fileset": "^2.0.2",[m
[32m+[m[32m        "istanbul-lib-coverage": "^1.1.1",[m
[32m+[m[32m        "istanbul-lib-hook": "^1.1.0",[m
[32m+[m[32m        "istanbul-lib-instrument": "^1.9.1",[m
[32m+[m[32m        "istanbul-lib-report": "^1.1.2",[m
[32m+[m[32m        "istanbul-lib-source-maps": "^1.2.2",[m
[32m+[m[32m        "istanbul-reports": "^1.1.3",[m
[32m+[m[32m        "js-yaml": "^3.7.0",[m
[32m+[m[32m        "mkdirp": "^0.5.1",[m
[32m+[m[32m        "once": "^1.4.0"[m
       }[m
     },[m
     "istanbul-lib-coverage": {[m
[36m@@ -4969,7 +4974,7 @@[m
       "resolved": "https://registry.npmjs.org/istanbul-lib-hook/-/istanbul-lib-hook-1.1.0.tgz",[m
       "integrity": "sha512-U3qEgwVDUerZ0bt8cfl3dSP3S6opBoOtk3ROO5f2EfBr/SRiD9FQqzwaZBqFORu8W7O0EXpai+k7kxHK13beRg==",[m
       "requires": {[m
[31m-        "append-transform": "0.4.0"[m
[32m+[m[32m        "append-transform": "^0.4.0"[m
       }[m
     },[m
     "istanbul-lib-instrument": {[m
[36m@@ -4977,13 +4982,13 @@[m
       "resolved": "https://registry.npmjs.org/istanbul-lib-instrument/-/istanbul-lib-instrument-1.9.1.tgz",[m
       "integrity": "sha512-RQmXeQ7sphar7k7O1wTNzVczF9igKpaeGQAG9qR2L+BS4DCJNTI9nytRmIVYevwO0bbq+2CXvJmYDuz0gMrywA==",[m
       "requires": {[m
[31m-        "babel-generator": "6.26.0",[m
[31m-        "babel-template": "6.26.0",[m
[31m-        "babel-traverse": "6.26.0",[m
[31m-        "babel-types": "6.26.0",[m
[31m-        "babylon": "6.18.0",[m
[31m-        "istanbul-lib-coverage": "1.1.1",[m
[31m-        "semver": "5.4.1"[m
[32m+[m[32m        "babel-generator": "^6.18.0",[m
[32m+[m[32m        "babel-template": "^6.16.0",[m
[32m+[m[32m        "babel-traverse": "^6.18.0",[m
[32m+[m[32m        "babel-types": "^6.18.0",[m
[32m+[m[32m        "babylon": "^6.18.0",[m
[32m+[m[32m        "istanbul-lib-coverage": "^1.1.1",[m
[32m+[m[32m        "semver": "^5.3.0"[m
       }[m
     },[m
     "istanbul-lib-report": {[m
[36m@@ -4991,10 +4996,10 @@[m
       "resolved": "https://registry.npmjs.org/istanbul-lib-report/-/istanbul-lib-report-1.1.2.tgz",[m
       "integrity": "sha512-UTv4VGx+HZivJQwAo1wnRwe1KTvFpfi/NYwN7DcsrdzMXwpRT/Yb6r4SBPoHWj4VuQPakR32g4PUUeyKkdDkBA==",[m
       "requires": {[m
[31m-        "istanbul-lib-coverage": "1.1.1",[m
[31m-        "mkdirp": "0.5.1",[m
[31m-        "path-parse": "1.0.5",[m
[31m-        "supports-color": "3.2.3"[m
[32m+[m[32m        "istanbul-lib-coverage": "^1.1.1",[m
[32m+[m[32m        "mkdirp": "^0.5.1",[m
[32m+[m[32m        "path-parse": "^1.0.5",[m
[32m+[m[32m        "supports-color": "^3.1.2"[m
       },[m
       "dependencies": {[m
         "has-flag": {[m
[36m@@ -5007,7 +5012,7 @@[m
           "resolved": "https://registry.npmjs.org/supports-color/-/supports-color-3.2.3.tgz",[m
           "integrity": "sha1-ZawFBLOVQXHYpklGsq48u4pfVPY=",[m
           "requires": {[m
[31m-            "has-flag": "1.0.0"[m
[32m+[m[32m            "has-flag": "^1.0.0"[m
           }[m
         }[m
       }[m
[36m@@ -5017,11 +5022,11 @@[m
       "resolved": "https://registry.npmjs.org/istanbul-lib-source-maps/-/istanbul-lib-source-maps-1.2.2.tgz",[m
       "integrity": "sha512-8BfdqSfEdtip7/wo1RnrvLpHVEd8zMZEDmOFEnpC6dg0vXflHt9nvoAyQUzig2uMSXfF2OBEYBV3CVjIL9JvaQ==",[m
       "requires": {[m
[31m-        "debug": "3.1.0",[m
[31m-        "istanbul-lib-coverage": "1.1.1",[m
[31m-        "mkdirp": "0.5.1",[m
[31m-        "rimraf": "2.6.2",[m
[31m-        "source-map": "0.5.7"[m
[32m+[m[32m        "debug": "^3.1.0",[m
[32m+[m[32m        "istanbul-lib-coverage": "^1.1.1",[m
[32m+[m[32m        "mkdirp": "^0.5.1",[m
[32m+[m[32m        "rimraf": "^2.6.1",[m
[32m+[m[32m        "source-map": "^0.5.3"[m
       },[m
       "dependencies": {[m
         "debug": {[m
[36m@@ -5044,7 +5049,7 @@[m
       "resolved": "https://registry.npmjs.org/istanbul-reports/-/istanbul-reports-1.1.3.tgz",[m
       "integrity": "sha512-ZEelkHh8hrZNI5xDaKwPMFwDsUf5wIEI2bXAFGp1e6deR2mnEKBPhLJEgr4ZBt8Gi6Mj38E/C8kcy9XLggVO2Q==",[m
       "requires": {[m
[31m-        "handlebars": "4.0.11"[m
[32m+[m[32m        "handlebars": "^4.0.3"[m
       }[m
     },[m
     "jest": {[m
[36m@@ -5052,7 +5057,7 @@[m
       "resolved": "https://registry.npmjs.org/jest/-/jest-20.0.4.tgz",[m
       "integrity": "sha1-PdJgwpidba1nix6cxNkZRPbWAqw=",[m
       "requires": {[m
[31m-        "jest-cli": "20.0.4"[m
[32m+[m[32m        "jest-cli": "^20.0.4"[m
       },[m
       "dependencies": {[m
         "ansi-escapes": {[m
[36m@@ -5070,36 +5075,36 @@[m
           "resolved": "https://registry.npmjs.org/jest-cli/-/jest-cli-20.0.4.tgz",[m
           "integrity": "sha1-5TKxnYiuW8bEF+iwWTpv6VSx3JM=",[m
           "requires": {[m
[31m-            "ansi-escapes": "1.4.0",[m
[31m-            "callsites": "2.0.0",[m
[31m-            "chalk": "1.1.3",[m
[31m-            "graceful-fs": "4.1.11",[m
[31m-            "is-ci": "1.1.0",[m
[31m-            "istanbul-api": "1.2.1",[m
[31m-            "istanbul-lib-coverage": "1.1.1",[m
[31m-            "istanbul-lib-instrument": "1.9.1",[m
[31m-            "istanbul-lib-source-maps": "1.2.2",[m
[31m-            "jest-changed-files": "20.0.3",[m
[31m-            "jest-config": "20.0.4",[m
[31m-            "jest-docblock": "20.0.3",[m
[31m-            "jest-environment-jsdom": "20.0.3",[m
[31m-            "jest-haste-map": "20.0.5",[m
[31m-            "jest-jasmine2": "20.0.4",[m
[31m-            "jest-message-util": "20.0.3",[m
[31m-            "jest-regex-util": "20.0.3",[m
[31m-            "jest-resolve-dependencies": "20.0.3",[m
[31m-            "jest-runtime": "20.0.4",[m
[31m-            "jest-snapshot": "20.0.3",[m
[31m-            "jest-util": "20.0.3",[m
[31m-            "micromatch": "2.3.11",[m
[31m-            "node-notifier": "5.1.2",[m
[31m-            "pify": "2.3.0",[m
[31m-            "slash": "1.0.0",[m
[31m-            "string-length": "1.0.1",[m
[31m-            "throat": "3.2.0",[m
[31m-            "which": "1.3.0",[m
[31m-            "worker-farm": "1.5.2",[m
[31m-            "yargs": "7.1.0"[m
[32m+[m[32m            "ansi-escapes": "^1.4.0",[m
[32m+[m[32m            "callsites": "^2.0.0",[m
[32m+[m[32m            "chalk": "^1.1.3",[m
[32m+[m[32m            "graceful-fs": "^4.1.11",[m
[32m+[m[32m            "is-ci": "^1.0.10",[m
[32m+[m[32m            "istanbul-api": "^1.1.1",[m
[32m+[m[32m            "istanbul-lib-coverage": "^1.0.1",[m
[32m+[m[32m            "istanbul-lib-instrument": "^1.4.2",[m
[32m+[m[32m            "istanbul-lib-source-maps": "^1.1.0",[m
[32m+[m[32m            "jest-changed-files": "^20.0.3",[m
[32m+[m[32m            "jest-config": "^20.0.4",[m
[32m+[m[32m            "jest-docblock": "^20.0.3",[m
[32m+[m[32m            "jest-environment-jsdom": "^20.0.3",[m
[32m+[m[32m            "jest-haste-map": "^20.0.4",[m
[32m+[m[32m            "jest-jasmine2": "^20.0.4",[m
[32m+[m[32m            "jest-message-util": "^20.0.3",[m
[32m+[m[32m            "jest-regex-util": "^20.0.3",[m
[32m+[m[32m            "jest-resolve-dependencies": "^20.0.3",[m
[32m+[m[32m            "jest-runtime": "^20.0.4",[m
[32m+[m[32m            "jest-snapshot": "^20.0.3",[m
[32m+[m[32m            "jest-util": "^20.0.3",[m
[32m+[m[32m            "micromatch": "^2.3.11",[m
[32m+[m[32m            "node-notifier": "^5.0.2",[m
[32m+[m[32m            "pify": "^2.3.0",[m
[32m+[m[32m            "slash": "^1.0.0",[m
[32m+[m[32m            "string-length": "^1.0.1",[m
[32m+[m[32m            "throat": "^3.0.0",[m
[32m+[m[32m            "which": "^1.2.12",[m
[32m+[m[32m            "worker-farm": "^1.3.1",[m
[32m+[m[32m            "yargs": "^7.0.2"[m
           }[m
         }[m
       }[m
[36m@@ -5114,16 +5119,16 @@[m
       "resolved": "https://registry.npmjs.org/jest-config/-/jest-config-20.0.4.tgz",[m
       "integrity": "sha1-43kwqyIXyRNgXv8T5712PsSPruo=",[m
       "requires": {[m
[31m-        "chalk": "1.1.3",[m
[31m-        "glob": "7.1.2",[m
[31m-        "jest-environment-jsdom": "20.0.3",[m
[31m-        "jest-environment-node": "20.0.3",[m
[31m-        "jest-jasmine2": "20.0.4",[m
[31m-        "jest-matcher-utils": "20.0.3",[m
[31m-        "jest-regex-util": "20.0.3",[m
[31m-        "jest-resolve": "20.0.4",[m
[31m-        "jest-validate": "20.0.3",[m
[31m-        "pretty-format": "20.0.3"[m
[32m+[m[32m        "chalk": "^1.1.3",[m
[32m+[m[32m        "glob": "^7.1.1",[m
[32m+[m[32m        "jest-environment-jsdom": "^20.0.3",[m
[32m+[m[32m        "jest-environment-node": "^20.0.3",[m
[32m+[m[32m        "jest-jasmine2": "^20.0.4",[m
[32m+[m[32m        "jest-matcher-utils": "^20.0.3",[m
[32m+[m[32m        "jest-regex-util": "^20.0.3",[m
[32m+[m[32m        "jest-resolve": "^20.0.4",[m
[32m+[m[32m        "jest-validate": "^20.0.3",[m
[32m+[m[32m        "pretty-format": "^20.0.3"[m
       }[m
     },[m
     "jest-diff": {[m
[36m@@ -5131,10 +5136,10 @@[m
       "resolved": "https://registry.npmjs.org/jest-diff/-/jest-diff-20.0.3.tgz",[m
       "integrity": "sha1-gfKI/Z5nXw+yPHXxwrGURf5YZhc=",[m
       "requires": {[m
[31m-        "chalk": "1.1.3",[m
[31m-        "diff": "3.4.0",[m
[31m-        "jest-matcher-utils": "20.0.3",[m
[31m-        "pretty-format": "20.0.3"[m
[32m+[m[32m        "chalk": "^1.1.3",[m
[32m+[m[32m        "diff": "^3.2.0",[m
[32m+[m[32m        "jest-matcher-utils": "^20.0.3",[m
[32m+[m[32m        "pretty-format": "^20.0.3"[m
       }[m
     },[m
     "jest-docblock": {[m
[36m@@ -5147,9 +5152,9 @@[m
       "resolved": "https://registry.npmjs.org/jest-environment-jsdom/-/jest-environment-jsdom-20.0.3.tgz",[m
       "integrity": "sha1-BIqKwS7iJfcZBBdxODS7mZeH3pk=",[m
       "requires": {[m
[31m-        "jest-mock": "20.0.3",[m
[31m-        "jest-util": "20.0.3",[m
[31m-        "jsdom": "9.12.0"[m
[32m+[m[32m        "jest-mock": "^20.0.3",[m
[32m+[m[32m        "jest-util": "^20.0.3",[m
[32m+[m[32m        "jsdom": "^9.12.0"[m
       }[m
     },[m
     "jest-environment-node": {[m
[36m@@ -5157,8 +5162,8 @@[m
       "resolved": "https://registry.npmjs.org/jest-environment-node/-/jest-environment-node-20.0.3.tgz",[m
       "integrity": "sha1-1Ii8RhKvLCRumG6K52caCZFj1AM=",[m
       "requires": {[m
[31m-        "jest-mock": "20.0.3",[m
[31m-        "jest-util": "20.0.3"[m
[32m+[m[32m        "jest-mock": "^20.0.3",[m
[32m+[m[32m        "jest-util": "^20.0.3"[m
       }[m
     },[m
     "jest-haste-map": {[m
[36m@@ -5166,12 +5171,12 @@[m
       "resolved": "https://registry.npmjs.org/jest-haste-map/-/jest-haste-map-20.0.5.tgz",[m
       "integrity": "sha512-0IKAQjUvuZjMCNi/0VNQQF74/H9KB67hsHJqGiwTWQC6XO5Azs7kLWm+6Q/dwuhvDUvABDOBMFK2/FwZ3sZ07Q==",[m
       "requires": {[m
[31m-        "fb-watchman": "2.0.0",[m
[31m-        "graceful-fs": "4.1.11",[m
[31m-        "jest-docblock": "20.0.3",[m
[31m-        "micromatch": "2.3.11",[m
[31m-        "sane": "1.6.0",[m
[31m-        "worker-farm": "1.5.2"[m
[32m+[m[32m        "fb-watchman": "^2.0.0",[m
[32m+[m[32m        "graceful-fs": "^4.1.11",[m
[32m+[m[32m        "jest-docblock": "^20.0.3",[m
[32m+[m[32m        "micromatch": "^2.3.11",[m
[32m+[m[32m        "sane": "~1.6.0",[m
[32m+[m[32m        "worker-farm": "^1.3.1"[m
       }[m
     },[m
     "jest-jasmine2": {[m
[36m@@ -5179,15 +5184,15 @@[m
       "resolved": "https://registry.npmjs.org/jest-jasmine2/-/jest-jasmine2-20.0.4.tgz",[m
       "integrity": "sha1-/MWxQReA2RHQQpAu8YWehS5g1eE=",[m
       "requires": {[m
[31m-        "chalk": "1.1.3",[m
[31m-        "graceful-fs": "4.1.11",[m
[31m-        "jest-diff": "20.0.3",[m
[31m-        "jest-matcher-utils": "20.0.3",[m
[31m-        "jest-matchers": "20.0.3",[m
[31m-        "jest-message-util": "20.0.3",[m
[31m-        "jest-snapshot": "20.0.3",[m
[31m-        "once": "1.4.0",[m
[31m-        "p-map": "1.2.0"[m
[32m+[m[32m        "chalk": "^1.1.3",[m
[32m+[m[32m        "graceful-fs": "^4.1.11",[m
[32m+[m[32m        "jest-diff": "^20.0.3",[m
[32m+[m[32m        "jest-matcher-utils": "^20.0.3",[m
[32m+[m[32m        "jest-matchers": "^20.0.3",[m
[32m+[m[32m        "jest-message-util": "^20.0.3",[m
[32m+[m[32m        "jest-snapshot": "^20.0.3",[m
[32m+[m[32m        "once": "^1.4.0",[m
[32m+[m[32m        "p-map": "^1.1.1"[m
       }[m
     },[m
     "jest-matcher-utils": {[m
[36m@@ -5195,8 +5200,8 @@[m
       "resolved": "https://registry.npmjs.org/jest-matcher-utils/-/jest-matcher-utils-20.0.3.tgz",[m
       "integrity": "sha1-s6a443yld4A7CDKpixZPRLeBVhI=",[m
       "requires": {[m
[31m-        "chalk": "1.1.3",[m
[31m-        "pretty-format": "20.0.3"[m
[32m+[m[32m        "chalk": "^1.1.3",[m
[32m+[m[32m        "pretty-format": "^20.0.3"[m
       }[m
     },[m
     "jest-matchers": {[m
[36m@@ -5204,10 +5209,10 @@[m
       "resolved": "https://registry.npmjs.org/jest-matchers/-/jest-matchers-20.0.3.tgz",[m
       "integrity": "sha1-ymnbHDLbWm9wf6XgQBq7VXAN/WA=",[m
       "requires": {[m
[31m-        "jest-diff": "20.0.3",[m
[31m-        "jest-matcher-utils": "20.0.3",[m
[31m-        "jest-message-util": "20.0.3",[m
[31m-        "jest-regex-util": "20.0.3"[m
[32m+[m[32m        "jest-diff": "^20.0.3",[m
[32m+[m[32m        "jest-matcher-utils": "^20.0.3",[m
[32m+[m[32m        "jest-message-util": "^20.0.3",[m
[32m+[m[32m        "jest-regex-util": "^20.0.3"[m
       }[m
     },[m
     "jest-message-util": {[m
[36m@@ -5215,9 +5220,9 @@[m
       "resolved": "https://registry.npmjs.org/jest-message-util/-/jest-message-util-20.0.3.tgz",[m
       "integrity": "sha1-auwoRDBvyw5udNV5bBAG2W/dgxw=",[m
       "requires": {[m
[31m-        "chalk": "1.1.3",[m
[31m-        "micromatch": "2.3.11",[m
[31m-        "slash": "1.0.0"[m
[32m+[m[32m        "chalk": "^1.1.3",[m
[32m+[m[32m        "micromatch": "^2.3.11",[m
[32m+[m[32m        "slash": "^1.0.0"[m
       }[m
     },[m
     "jest-mock": {[m
[36m@@ -5235,9 +5240,9 @@[m
       "resolved": "https://registry.npmjs.org/jest-resolve/-/jest-resolve-20.0.4.tgz",[m
       "integrity": "sha1-lEiz6La6/BVHlETGSZBFt//ll6U=",[m
       "requires": {[m
[31m-        "browser-resolve": "1.11.2",[m
[31m-        "is-builtin-module": "1.0.0",[m
[31m-        "resolve": "1.5.0"[m
[32m+[m[32m        "browser-resolve": "^1.11.2",[m
[32m+[m[32m        "is-builtin-module": "^1.0.0",[m
[32m+[m[32m        "resolve": "^1.3.2"[m
       }[m
     },[m
     "jest-resolve-dependencies": {[m
[36m@@ -5245,7 +5250,7 @@[m
       "resolved": "https://registry.npmjs.org/jest-resolve-dependencies/-/jest-resolve-dependencies-20.0.3.tgz",[m
       "integrity": "sha1-bhSntxevDyyzZnxUneQK8Bexcjo=",[m
       "requires": {[m
[31m-        "jest-regex-util": "20.0.3"[m
[32m+[m[32m        "jest-regex-util": "^20.0.3"[m
       }[m
     },[m
     "jest-runtime": {[m
[36m@@ -5253,21 +5258,21 @@[m
       "resolved": "https://registry.npmjs.org/jest-runtime/-/jest-runtime-20.0.4.tgz",[m
       "integrity": "sha1-osgCIZxCA/dU3xQE5JAYYWnRJNg=",[m
       "requires": {[m
[31m-        "babel-core": "6.26.0",[m
[31m-        "babel-jest": "20.0.3",[m
[31m-        "babel-plugin-istanbul": "4.1.5",[m
[31m-        "chalk": "1.1.3",[m
[31m-        "convert-source-map": "1.5.1",[m
[31m-        "graceful-fs": "4.1.11",[m
[31m-        "jest-config": "20.0.4",[m
[31m-        "jest-haste-map": "20.0.5",[m
[31m-        "jest-regex-util": "20.0.3",[m
[31m-        "jest-resolve": "20.0.4",[m
[31m-        "jest-util": "20.0.3",[m
[31m-        "json-stable-stringify": "1.0.1",[m
[31m-        "micromatch": "2.3.11",[m
[32m+[m[32m        "babel-core": "^6.0.0",[m
[32m+[m[32m        "babel-jest": "^20.0.3",[m
[32m+[m[32m        "babel-plugin-istanbul": "^4.0.0",[m
[32m+[m[32m        "chalk": "^1.1.3",[m
[32m+[m[32m        "convert-source-map": "^1.4.0",[m
[32m+[m[32m        "graceful-fs": "^4.1.11",[m
[32m+[m[32m        "jest-config": "^20.0.4",[m
[32m+[m[32m        "jest-haste-map": "^20.0.4",[m
[32m+[m[32m        "jest-regex-util": "^20.0.3",[m
[32m+[m[32m        "jest-resolve": "^20.0.4",[m
[32m+[m[32m        "jest-util": "^20.0.3",[m
[32m+[m[32m        "json-stable-stringify": "^1.0.1",[m
[32m+[m[32m        "micromatch": "^2.3.11",[m
         "strip-bom": "3.0.0",[m
[31m-        "yargs": "7.1.0"[m
[32m+[m[32m        "yargs": "^7.0.2"[m
       },[m
       "dependencies": {[m
         "strip-bom": {[m
[36m@@ -5282,12 +5287,12 @@[m
       "resolved": "https://registry.npmjs.org/jest-snapshot/-/jest-snapshot-20.0.3.tgz",[m
       "integrity": "sha1-W4R+GtsaTZCFKn+fElCG4YfHZWY=",[m
       "requires": {[m
[31m-        "chalk": "1.1.3",[m
[31m-        "jest-diff": "20.0.3",[m
[31m-        "jest-matcher-utils": "20.0.3",[m
[31m-        "jest-util": "20.0.3",[m
[31m-        "natural-compare": "1.4.0",[m
[31m-        "pretty-format": "20.0.3"[m
[32m+[m[32m        "chalk": "^1.1.3",[m
[32m+[m[32m        "jest-diff": "^20.0.3",[m
[32m+[m[32m        "jest-matcher-utils": "^20.0.3",[m
[32m+[m[32m        "jest-util": "^20.0.3",[m
[32m+[m[32m        "natural-compare": "^1.4.0",[m
[32m+[m[32m        "pretty-format": "^20.0.3"[m
       }[m
     },[m
     "jest-util": {[m
[36m@@ -5295,13 +5300,13 @@[m
       "resolved": "https://registry.npmjs.org/jest-util/-/jest-util-20.0.3.tgz",[m
       "integrity": "sha1-DAf32A2C9OWmfG+LnD/n9lz9Mq0=",[m
       "requires": {[m
[31m-        "chalk": "1.1.3",[m
[31m-        "graceful-fs": "4.1.11",[m
[31m-        "jest-message-util": "20.0.3",[m
[31m-        "jest-mock": "20.0.3",[m
[31m-        "jest-validate": "20.0.3",[m
[31m-        "leven": "2.1.0",[m
[31m-        "mkdirp": "0.5.1"[m
[32m+[m[32m        "chalk": "^1.1.3",[m
[32m+[m[32m        "graceful-fs": "^4.1.11",[m
[32m+[m[32m        "jest-message-util": "^20.0.3",[m
[32m+[m[32m        "jest-mock": "^20.0.3",[m
[32m+[m[32m        "jest-validate": "^20.0.3",[m
[32m+[m[32m        "leven": "^2.1.0",[m
[32m+[m[32m        "mkdirp": "^0.5.1"[m
       }[m
     },[m
     "jest-validate": {[m
[36m@@ -5309,10 +5314,10 @@[m
       "resolved": "https://registry.npmjs.org/jest-validate/-/jest-validate-20.0.3.tgz",[m
       "integrity": "sha1-0M/R3k9XnymEhJJcKA+PHZTsPKs=",[m
       "requires": {[m
[31m-        "chalk": "1.1.3",[m
[31m-        "jest-matcher-utils": "20.0.3",[m
[31m-        "leven": "2.1.0",[m
[31m-        "pretty-format": "20.0.3"[m
[32m+[m[32m        "chalk": "^1.1.3",[m
[32m+[m[32m        "jest-matcher-utils": "^20.0.3",[m
[32m+[m[32m        "leven": "^2.1.0",[m
[32m+[m[32m        "pretty-format": "^20.0.3"[m
       }[m
     },[m
     "js-base64": {[m
[36m@@ -5330,8 +5335,8 @@[m
       "resolved": "https://registry.npmjs.org/js-yaml/-/js-yaml-3.7.0.tgz",[m
       "integrity": "sha1-XJZ93YN6m/3KXy3oQlOr6KHAO4A=",[m
       "requires": {[m
[31m-        "argparse": "1.0.9",[m
[31m-        "esprima": "2.7.3"[m
[32m+[m[32m        "argparse": "^1.0.7",[m
[32m+[m[32m        "esprima": "^2.6.0"[m
       }[m
     },[m
     "jsbn": {[m
[36m@@ -5345,25 +5350,25 @@[m
       "resolved": "https://registry.npmjs.org/jsdom/-/jsdom-9.12.0.tgz",[m
       "integrity": "sha1-6MVG//ywbADUgzyoRBD+1/igl9Q=",[m
       "requires": {[m
[31m-        "abab": "1.0.4",[m
[31m-        "acorn": "4.0.13",[m
[31m-        "acorn-globals": "3.1.0",[m
[31m-        "array-equal": "1.0.0",[m
[31m-        "content-type-parser": "1.0.2",[m
[31m-        "cssom": "0.3.2",[m
[31m-        "cssstyle": "0.2.37",[m
[31m-        "escodegen": "1.9.0",[m
[31m-        "html-encoding-sniffer": "1.0.2",[m
[31m-        "nwmatcher": "1.4.3",[m
[31m-        "parse5": "1.5.1",[m
[31m-        "request": "2.83.0",[m
[31m-        "sax": "1.2.4",[m
[31m-        "symbol-tree": "3.2.2",[m
[31m-        "tough-cookie": "2.3.3",[m
[31m-        "webidl-conversions": "4.0.2",[m
[31m-        "whatwg-encoding": "1.0.3",[m
[31m-        "whatwg-url": "4.8.0",[m
[31m-        "xml-name-validator": "2.0.1"[m
[32m+[m[32m        "abab": "^1.0.3",[m
[32m+[m[32m        "acorn": "^4.0.4",[m
[32m+[m[32m        "acorn-globals": "^3.1.0",[m
[32m+[m[32m        "array-equal": "^1.0.0",[m
[32m+[m[32m        "content-type-parser": "^1.0.1",[m
[32m+[m[32m        "cssom": ">= 0.3.2 < 0.4.0",[m
[32m+[m[32m        "cssstyle": ">= 0.2.37 < 0.3.0",[m
[32m+[m[32m        "escodegen": "^1.6.1",[m
[32m+[m[32m        "html-encoding-sniffer": "^1.0.1",[m
[32m+[m[32m        "nwmatcher": ">= 1.3.9 < 2.0.0",[m
[32m+[m[32m        "parse5": "^1.5.1",[m
[32m+[m[32m        "request": "^2.79.0",[m
[32m+[m[32m        "sax": "^1.2.1",[m
[32m+[m[32m        "symbol-tree": "^3.2.1",[m
[32m+[m[32m        "tough-cookie": "^2.3.2",[m
[32m+[m[32m        "webidl-conversions": "^4.0.0",[m
[32m+[m[32m        "whatwg-encoding": "^1.0.1",[m
[32m+[m[32m        "whatwg-url": "^4.3.0",[m
[32m+[m[32m        "xml-name-validator": "^2.0.1"[m
       },[m
       "dependencies": {[m
         "acorn": {[m
[36m@@ -5398,7 +5403,7 @@[m
       "resolved": "https://registry.npmjs.org/json-stable-stringify/-/json-stable-stringify-1.0.1.tgz",[m
       "integrity": "sha1-mnWdOcXy/1A/1TAGRu1EX4jE+a8=",[m
       "requires": {[m
[31m-        "jsonify": "0.0.0"[m
[32m+[m[32m        "jsonify": "~0.0.0"[m
       }[m
     },[m
     "json-stringify-safe": {[m
[36m@@ -5421,7 +5426,7 @@[m
       "resolved": "https://registry.npmjs.org/jsonfile/-/jsonfile-3.0.1.tgz",[m
       "integrity": "sha1-pezG9l9T9mLEQVx2daAzHQmS7GY=",[m
       "requires": {[m
[31m-        "graceful-fs": "4.1.11"[m
[32m+[m[32m        "graceful-fs": "^4.1.6"[m
       }[m
     },[m
     "jsonify": {[m
[36m@@ -5450,6 +5455,11 @@[m
       "resolved": "https://registry.npmjs.org/keycode/-/keycode-2.2.0.tgz",[m
       "integrity": "sha1-PQr1bce4uOXLqNCpfxByBO7CKwQ="[m
     },[m
[32m+[m[32m    "keymaster": {[m
[32m+[m[32m      "version": "1.6.2",[m
[32m+[m[32m      "resolved": "https://registry.npmjs.org/keymaster/-/keymaster-1.6.2.tgz",[m
[32m+[m[32m      "integrity": "sha1-4a5U0OqUiPn2C2a2aPAumhlGxus="[m
[32m+[m[32m    },[m
     "killable": {[m
       "version": "1.0.0",[m
       "resolved": "https://registry.npmjs.org/killable/-/killable-1.0.0.tgz",[m
[36m@@ -5460,7 +5470,7 @@[m
       "resolved": "https://registry.npmjs.org/kind-of/-/kind-of-3.2.2.tgz",[m
       "integrity": "sha1-MeohpzS6ubuw8yRm2JOupR5KPGQ=",[m
       "requires": {[m
[31m-        "is-buffer": "1.1.6"[m
[32m+[m[32m        "is-buffer": "^1.1.5"[m
       }[m
     },[m
     "klaw": {[m
[36m@@ -5468,7 +5478,7 @@[m
       "resolved": "https://registry.npmjs.org/klaw/-/klaw-1.3.1.tgz",[m
       "integrity": "sha1-QIhDO0azsbolnXh4XY6W9zugJDk=",[m
       "requires": {[m
[31m-        "graceful-fs": "4.1.11"[m
[32m+[m[32m        "graceful-fs": "^4.1.9"[m
       }[m
     },[m
     "latest-version": {[m
[36m@@ -5476,7 +5486,7 @@[m
       "resolved": "https://registry.npmjs.org/latest-version/-/latest-version-2.0.0.tgz",[m
       "integrity": "sha1-VvjWE5YghHuAF/jx9NeOIRMkFos=",[m
       "requires": {[m
[31m-        "package-json": "2.4.0"[m
[32m+[m[32m        "package-json": "^2.0.0"[m
       }[m
     },[m
     "lazy-cache": {[m
[36m@@ -5494,7 +5504,7 @@[m
       "resolved": "https://registry.npmjs.org/lcid/-/lcid-1.0.0.tgz",[m
       "integrity": "sha1-MIrMr6C8SDo4Z7S28rlQYlHRuDU=",[m
       "requires": {[m
[31m-        "invert-kv": "1.0.0"[m
[32m+[m[32m        "invert-kv": "^1.0.0"[m
       }[m
     },[m
     "leven": {[m
[36m@@ -5507,8 +5517,8 @@[m
       "resolved": "https://registry.npmjs.org/levn/-/levn-0.3.0.tgz",[m
       "integrity": "sha1-OwmSTt+fCDwEkP3UwLxEIeBHZO4=",[m
       "requires": {[m
[31m-        "prelude-ls": "1.1.2",[m
[31m-        "type-check": "0.3.2"[m
[32m+[m[32m        "prelude-ls": "~1.1.2",[m
[32m+[m[32m        "type-check": "~0.3.2"[m
       }[m
     },[m
     "load-json-file": {[m
[36m@@ -5516,11 +5526,11 @@[m
       "resolved": "https://registry.npmjs.org/load-json-file/-/load-json-file-1.1.0.tgz",[m
       "integrity": "sha1-lWkFcI1YtLq0wiYbBPWfMcmTdMA=",[m
       "requires": {[m
[31m-        "graceful-fs": "4.1.11",[m
[31m-        "parse-json": "2.2.0",[m
[31m-        "pify": "2.3.0",[m
[31m-        "pinkie-promise": "2.0.1",[m
[31m-        "strip-bom": "2.0.0"[m
[32m+[m[32m        "graceful-fs": "^4.1.2",[m
[32m+[m[32m        "parse-json": "^2.2.0",[m
[32m+[m[32m        "pify": "^2.0.0",[m
[32m+[m[32m        "pinkie-promise": "^2.0.0",[m
[32m+[m[32m        "strip-bom": "^2.0.0"[m
       }[m
     },[m
     "loader-fs-cache": {[m
[36m@@ -5528,7 +5538,7 @@[m
       "resolved": "https://registry.npmjs.org/loader-fs-cache/-/loader-fs-cache-1.0.1.tgz",[m
       "integrity": "sha1-VuC/CL2XCLJqdltoUJhAyN7J/bw=",[m
       "requires": {[m
[31m-        "find-cache-dir": "0.1.1",[m
[32m+[m[32m        "find-cache-dir": "^0.1.1",[m
         "mkdirp": "0.5.1"[m
       },[m
       "dependencies": {[m
[36m@@ -5537,9 +5547,9 @@[m
           "resolved": "https://registry.npmjs.org/find-cache-dir/-/find-cache-dir-0.1.1.tgz",[m
           "integrity": "sha1-yN765XyKUqinhPnjHFfHQumToLk=",[m
           "requires": {[m
[31m-            "commondir": "1.0.1",[m
[31m-            "mkdirp": "0.5.1",[m
[31m-            "pkg-dir": "1.0.0"[m
[32m+[m[32m            "commondir": "^1.0.1",[m
[32m+[m[32m            "mkdirp": "^0.5.1",[m
[32m+[m[32m            "pkg-dir": "^1.0.0"[m
           }[m
         },[m
         "find-up": {[m
[36m@@ -5547,8 +5557,8 @@[m
           "resolved": "https://registry.npmjs.org/find-up/-/find-up-1.1.2.tgz",[m
           "integrity": "sha1-ay6YIrGizgpgq2TWEOzK1TyyTQ8=",[m
           "requires": {[m
[31m-            "path-exists": "2.1.0",[m
[31m-            "pinkie-promise": "2.0.1"[m
[32m+[m[32m            "path-exists": "^2.0.0",[m
[32m+[m[32m            "pinkie-promise": "^2.0.0"[m
           }[m
         },[m
         "path-exists": {[m
[36m@@ -5556,7 +5566,7 @@[m
           "resolved": "https://registry.npmjs.org/path-exists/-/path-exists-2.1.0.tgz",[m
           "integrity": "sha1-D+tsZPD8UY2adU3V77YscCJ2H0s=",[m
           "requires": {[m
[31m-            "pinkie-promise": "2.0.1"[m
[32m+[m[32m            "pinkie-promise": "^2.0.0"[m
           }[m
         },[m
         "pkg-dir": {[m
[36m@@ -5564,7 +5574,7 @@[m
           "resolved": "https://registry.npmjs.org/pkg-dir/-/pkg-dir-1.0.0.tgz",[m
           "integrity": "sha1-ektQio1bstYp1EcFb/TpyTFM89Q=",[m
           "requires": {[m
[31m-            "find-up": "1.1.2"[m
[32m+[m[32m            "find-up": "^1.0.0"[m
           }[m
         }[m
       }[m
[36m@@ -5579,9 +5589,9 @@[m
       "resolved": "https://registry.npmjs.org/loader-utils/-/loader-utils-1.1.0.tgz",[m
       "integrity": "sha1-yYrvSIvM7aL/teLeZG1qdUQp9c0=",[m
       "requires": {[m
[31m-        "big.js": "3.2.0",[m
[31m-        "emojis-list": "2.1.0",[m
[31m-        "json5": "0.5.1"[m
[32m+[m[32m        "big.js": "^3.1.3",[m
[32m+[m[32m        "emojis-list": "^2.0.0",[m
[32m+[m[32m        "json5": "^0.5.0"[m
       }[m
     },[m
     "locate-path": {[m
[36m@@ -5589,8 +5599,8 @@[m
       "resolved": "https://registry.npmjs.org/locate-path/-/locate-path-2.0.0.tgz",[m
       "integrity": "sha1-K1aLJl7slExtnA3pw9u7ygNUzY4=",[m
       "requires": {[m
[31m-        "p-locate": "2.0.0",[m
[31m-        "path-exists": "3.0.0"[m
[32m+[m[32m        "p-locate": "^2.0.0",[m
[32m+[m[32m        "path-exists": "^3.0.0"[m
       }[m
     },[m
     "lodash": {[m
[36m@@ -5633,8 +5643,8 @@[m
       "resolved": "https://registry.npmjs.org/lodash.template/-/lodash.template-4.4.0.tgz",[m
       "integrity": "sha1-5zoDhcg1VZF0bgILmWecaQ5o+6A=",[m
       "requires": {[m
[31m-        "lodash._reinterpolate": "3.0.0",[m
[31m-        "lodash.templatesettings": "4.1.0"[m
[32m+[m[32m        "lodash._reinterpolate": "~3.0.0",[m
[32m+[m[32m        "lodash.templatesettings": "^4.0.0"[m
       }[m
     },[m
     "lodash.templatesettings": {[m
[36m@@ -5642,7 +5652,7 @@[m
       "resolved": "https://registry.npmjs.org/lodash.templatesettings/-/lodash.templatesettings-4.1.0.tgz",[m
       "integrity": "sha1-K01OlbpEDZFf8IvImeRVNmZxMxY=",[m
       "requires": {[m
[31m-        "lodash._reinterpolate": "3.0.0"[m
[32m+[m[32m        "lodash._reinterpolate": "~3.0.0"[m
       }[m
     },[m
     "lodash.throttle": {[m
[36m@@ -5670,7 +5680,7 @@[m
       "resolved": "https://registry.npmjs.org/loose-envify/-/loose-envify-1.3.1.tgz",[m
       "integrity": "sha1-0aitM/qc4OcT1l/dCsi3SNR4yEg=",[m
       "requires": {[m
[31m-        "js-tokens": "3.0.2"[m
[32m+[m[32m        "js-tokens": "^3.0.0"[m
       }[m
     },[m
     "loud-rejection": {[m
[36m@@ -5678,8 +5688,8 @@[m
       "resolved": "https://registry.npmjs.org/loud-rejection/-/loud-rejection-1.6.0.tgz",[m
       "integrity": "sha1-W0b4AUft7leIcPCG0Eghz5mOVR8=",[m
       "requires": {[m
[31m-        "currently-unhandled": "0.4.1",[m
[31m-        "signal-exit": "3.0.2"[m
[32m+[m[32m        "currently-unhandled": "^0.4.1",[m
[32m+[m[32m        "signal-exit": "^3.0.0"[m
       }[m
     },[m
     "lower-case": {[m
[36m@@ -5697,8 +5707,8 @@[m
       "resolved": "https://registry.npmjs.org/lru-cache/-/lru-cache-4.1.1.tgz",[m
       "integrity": "sha512-q4spe4KTfsAS1SUHLO0wz8Qiyf1+vMIAgpRYioFYDMNqKfHQbg+AVDH3i4fvpl71/P1L0dBl+fQi+P37UYf0ew==",[m
       "requires": {[m
[31m-        "pseudomap": "1.0.2",[m
[31m-        "yallist": "2.1.2"[m
[32m+[m[32m        "pseudomap": "^1.0.2",[m
[32m+[m[32m        "yallist": "^2.1.2"[m
       }[m
     },[m
     "macaddress": {[m
[36m@@ -5711,7 +5721,7 @@[m
       "resolved": "https://registry.npmjs.org/make-dir/-/make-dir-1.1.0.tgz",[m
       "integrity": "sha512-0Pkui4wLJ7rxvmfUvs87skoEaxmu0hCUApF8nonzpl7q//FWp9zu8W61Scz4sd/kUiqDxvUhtoam2efDyiBzcA==",[m
       "requires": {[m
[31m-        "pify": "3.0.0"[m
[32m+[m[32m        "pify": "^3.0.0"[m
       },[m
       "dependencies": {[m
         "pify": {[m
[36m@@ -5726,7 +5736,7 @@[m
       "resolved": "https://registry.npmjs.org/makeerror/-/makeerror-1.0.11.tgz",[m
       "integrity": "sha1-4BpckQnyr3lmDk6LlYd5AYT1qWw=",[m
       "requires": {[m
[31m-        "tmpl": "1.0.4"[m
[32m+[m[32m        "tmpl": "1.0.x"[m
       }[m
     },[m
     "map-obj": {[m
[36m@@ -5744,8 +5754,8 @@[m
       "resolved": "https://registry.npmjs.org/md5.js/-/md5.js-1.3.4.tgz",[m
       "integrity": "sha1-6b296UogpawYsENA/Fdk1bCdkB0=",[m
       "requires": {[m
[31m-        "hash-base": "3.0.4",[m
[31m-        "inherits": "2.0.3"[m
[32m+[m[32m        "hash-base": "^3.0.0",[m
[32m+[m[32m        "inherits": "^2.0.1"[m
       },[m
       "dependencies": {[m
         "hash-base": {[m
[36m@@ -5753,8 +5763,8 @@[m
           "resolved": "https://registry.npmjs.org/hash-base/-/hash-base-3.0.4.tgz",[m
           "integrity": "sha1-X8hoaEfs1zSZQDMZprCj8/auSRg=",[m
           "requires": {[m
[31m-            "inherits": "2.0.3",[m
[31m-            "safe-buffer": "5.1.1"[m
[32m+[m[32m            "inherits": "^2.0.1",[m
[32m+[m[32m            "safe-buffer": "^5.0.1"[m
           }[m
         }[m
       }[m
[36m@@ -5769,7 +5779,7 @@[m
       "resolved": "https://registry.npmjs.org/mem/-/mem-1.1.0.tgz",[m
       "integrity": "sha1-Xt1StIXKHZAP5kiVUFOZoN+kX3Y=",[m
       "requires": {[m
[31m-        "mimic-fn": "1.1.0"[m
[32m+[m[32m        "mimic-fn": "^1.0.0"[m
       }[m
     },[m
     "memory-fs": {[m
[36m@@ -5777,8 +5787,8 @@[m
       "resolved": "https://registry.npmjs.org/memory-fs/-/memory-fs-0.4.1.tgz",[m
       "integrity": "sha1-OpoguEYlI+RHz7x+i7gO1me/xVI=",[m
       "requires": {[m
[31m-        "errno": "0.1.6",[m
[31m-        "readable-stream": "2.3.3"[m
[32m+[m[32m        "errno": "^0.1.3",[m
[32m+[m[32m        "readable-stream": "^2.0.1"[m
       }[m
     },[m
     "meow": {[m
[36m@@ -5786,16 +5796,16 @@[m
       "resolved": "https://registry.npmjs.org/meow/-/meow-3.7.0.tgz",[m
       "integrity": "sha1-cstmi0JSKCkKu/qFaJJYcwioAfs=",[m
       "requires": {[m
[31m-        "camelcase-keys": "2.1.0",[m
[31m-        "decamelize": "1.2.0",[m
[31m-        "loud-rejection": "1.6.0",[m
[31m-        "map-obj": "1.0.1",[m
[31m-        "minimist": "1.2.0",[m
[31m-        "normalize-package-data": "2.4.0",[m
[31m-        "object-assign": "4.1.1",[m
[31m-        "read-pkg-up": "1.0.1",[m
[31m-        "redent": "1.0.0",[m
[31m-        "trim-newlines": "1.0.0"[m
[32m+[m[32m        "camelcase-keys": "^2.0.0",[m
[32m+[m[32m        "decamelize": "^1.1.2",[m
[32m+[m[32m        "loud-rejection": "^1.0.0",[m
[32m+[m[32m        "map-obj": "^1.0.1",[m
[32m+[m[32m        "minimist": "^1.1.3",[m
[32m+[m[32m        "normalize-package-data": "^2.3.4",[m
[32m+[m[32m        "object-assign": "^4.0.1",[m
[32m+[m[32m        "read-pkg-up": "^1.0.1",[m
[32m+[m[32m        "redent": "^1.0.0",[m
[32m+[m[32m        "trim-newlines": "^1.0.0"[m
       },[m
       "dependencies": {[m
         "minimist": {[m
[36m@@ -5825,19 +5835,19 @@[m
       "resolved": "https://registry.npmjs.org/micromatch/-/micromatch-2.3.11.tgz",[m
       "integrity": "sha1-hmd8l9FyCzY0MdBNDRUpO9OMFWU=",[m
       "requires": {[m
[31m-        "arr-diff": "2.0.0",[m
[31m-        "array-unique": "0.2.1",[m
[31m-        "braces": "1.8.5",[m
[31m-        "expand-brackets": "0.1.5",[m
[31m-        "extglob": "0.3.2",[m
[31m-        "filename-regex": "2.0.1",[m
[31m-        "is-extglob": "1.0.0",[m
[31m-        "is-glob": "2.0.1",[m
[31m-        "kind-of": "3.2.2",[m
[31m-        "normalize-path": "2.1.1",[m
[31m-        "object.omit": "2.0.1",[m
[31m-        "parse-glob": "3.0.4",[m
[31m-        "regex-cache": "0.4.4"[m
[32m+[m[32m        "arr-diff": "^2.0.0",[m
[32m+[m[32m        "array-unique": "^0.2.1",[m
[32m+[m[32m        "braces": "^1.8.2",[m
[32m+[m[32m        "expand-brackets": "^0.1.4",[m
[32m+[m[32m        "extglob": "^0.3.1",[m
[32m+[m[32m        "filename-regex": "^2.0.0",[m
[32m+[m[32m        "is-extglob": "^1.0.0",[m
[32m+[m[32m        "is-glob": "^2.0.1",[m
[32m+[m[32m        "kind-of": "^3.0.2",[m
[32m+[m[32m        "normalize-path": "^2.0.1",[m
[32m+[m[32m        "object.omit": "^2.0.0",[m
[32m+[m[32m        "parse-glob": "^3.0.4",[m
[32m+[m[32m        "regex-cache": "^0.4.2"[m
       }[m
     },[m
     "miller-rabin": {[m
[36m@@ -5845,8 +5855,8 @@[m
       "resolved": "https://registry.npmjs.org/miller-rabin/-/miller-rabin-4.0.1.tgz",[m
       "integrity": "sha512-115fLhvZVqWwHPbClyntxEVfVDfl9DLLTuJvq3g2O/Oxi8AiNouAHvDSzHS0viUJc+V5vm3eq91Xwqn9dp4jRA==",[m
       "requires": {[m
[31m-        "bn.js": "4.11.8",[m
[31m-        "brorand": "1.1.0"[m
[32m+[m[32m        "bn.js": "^4.0.0",[m
[32m+[m[32m        "brorand": "^1.0.1"[m
       }[m
     },[m
     "mime": {[m
[36m@@ -5864,7 +5874,7 @@[m
       "resolved": "https://registry.npmjs.org/mime-types/-/mime-types-2.1.17.tgz",[m
       "integrity": "sha1-Cdejk/A+mVp5+K+Fe3Cp4KsWVXo=",[m
       "requires": {[m
[31m-        "mime-db": "1.30.0"[m
[32m+[m[32m        "mime-db": "~1.30.0"[m
       }[m
     },[m
     "mimic-fn": {[m
[36m@@ -5887,7 +5897,7 @@[m
       "resolved": "https://registry.npmjs.org/minimatch/-/minimatch-3.0.4.tgz",[m
       "integrity": "sha512-yJHVQEhyqPLUTgt9B83PXu6W3rx4MvvHvSUvToogpwoGDOUQ+yDrR0HRot+yOCdCO7u4hX3pWft6kWBBcqh0UA==",[m
       "requires": {[m
[31m-        "brace-expansion": "1.1.8"[m
[32m+[m[32m        "brace-expansion": "^1.1.7"[m
       }[m
     },[m
     "minimist": {[m
[36m@@ -5913,8 +5923,8 @@[m
       "resolved": "https://registry.npmjs.org/multicast-dns/-/multicast-dns-6.2.1.tgz",[m
       "integrity": "sha512-uV3/ckdsffHx9IrGQrx613mturMdMqQ06WTq+C09NsStJ9iNG6RcUWgPKs1Rfjy+idZT6tfQoXEusGNnEZhT3w==",[m
       "requires": {[m
[31m-        "dns-packet": "1.2.2",[m
[31m-        "thunky": "0.1.0"[m
[32m+[m[32m        "dns-packet": "^1.0.1",[m
[32m+[m[32m        "thunky": "^0.1.0"[m
       }[m
     },[m
     "multicast-dns-service-types": {[m
[36m@@ -5943,7 +5953,7 @@[m
       "resolved": "https://registry.npmjs.org/ncname/-/ncname-1.0.0.tgz",[m
       "integrity": "sha1-W1etGLHKCShk72Kwse2BlPODtxw=",[m
       "requires": {[m
[31m-        "xml-char-classes": "1.0.0"[m
[32m+[m[32m        "xml-char-classes": "^1.0.0"[m
       }[m
     },[m
     "negotiator": {[m
[36m@@ -5956,7 +5966,7 @@[m
       "resolved": "https://registry.npmjs.org/no-case/-/no-case-2.3.2.tgz",[m
       "integrity": "sha512-rmTZ9kz+f3rCvK2TD1Ue/oZlns7OGoIWP4fc3llxxRXlOkHKoWPPWJOfFYpITabSow43QJbRIoHQXtt10VldyQ==",[m
       "requires": {[m
[31m-        "lower-case": "1.1.4"[m
[32m+[m[32m        "lower-case": "^1.1.1"[m
       }[m
     },[m
     "node-forge": {[m
[36m@@ -5974,28 +5984,28 @@[m
       "resolved": "https://registry.npmjs.org/node-libs-browser/-/node-libs-browser-2.1.0.tgz",[m
       "integrity": "sha512-5AzFzdoIMb89hBGMZglEegffzgRg+ZFoUmisQ8HI4j1KDdpx13J0taNp2y9xPbur6W61gepGDDotGBVQ7mfUCg==",[m
       "requires": {[m
[31m-        "assert": "1.4.1",[m
[31m-        "browserify-zlib": "0.2.0",[m
[31m-        "buffer": "4.9.1",[m
[31m-        "console-browserify": "1.1.0",[m
[31m-        "constants-browserify": "1.0.0",[m
[31m-        "crypto-browserify": "3.12.0",[m
[31m-        "domain-browser": "1.1.7",[m
[31m-        "events": "1.1.1",[m
[31m-        "https-browserify": "1.0.0",[m
[31m-        "os-browserify": "0.3.0",[m
[32m+[m[32m        "assert": "^1.1.1",[m
[32m+[m[32m        "browserify-zlib": "^0.2.0",[m
[32m+[m[32m        "buffer": "^4.3.0",[m
[32m+[m[32m        "console-browserify": "^1.1.0",[m
[32m+[m[32m        "constants-browserify": "^1.0.0",[m
[32m+[m[32m        "crypto-browserify": "^3.11.0",[m
[32m+[m[32m        "domain-browser": "^1.1.1",[m
[32m+[m[32m        "events": "^1.0.0",[m
[32m+[m[32m        "https-browserify": "^1.0.0",[m
[32m+[m[32m        "os-browserify": "^0.3.0",[m
         "path-browserify": "0.0.0",[m
[31m-        "process": "0.11.10",[m
[31m-        "punycode": "1.4.1",[m
[31m-        "querystring-es3": "0.2.1",[m
[31m-        "readable-stream": "2.3.3",[m
[31m-        "stream-browserify": "2.0.1",[m
[31m-        "stream-http": "2.7.2",[m
[31m-        "string_decoder": "1.0.3",[m
[31m-        "timers-browserify": "2.0.4",[m
[32m+[m[32m        "process": "^0.11.10",[m
[32m+[m[32m        "punycode": "^1.2.4",[m
[32m+[m[32m        "querystring-es3": "^0.2.0",[m
[32m+[m[32m        "readable-stream": "^2.3.3",[m
[32m+[m[32m        "stream-browserify": "^2.0.1",[m
[32m+[m[32m        "stream-http": "^2.7.2",[m
[32m+[m[32m        "string_decoder": "^1.0.0",[m
[32m+[m[32m        "timers-browserify": "^2.0.4",[m
         "tty-browserify": "0.0.0",[m
[31m-        "url": "0.11.0",[m
[31m-        "util": "0.10.3",[m
[32m+[m[32m        "url": "^0.11.0",[m
[32m+[m[32m        "util": "^0.10.3",[m
         "vm-browserify": "0.0.4"[m
       }[m
     },[m
[36m@@ -6004,10 +6014,10 @@[m
       "resolved": "https://registry.npmjs.org/node-notifier/-/node-notifier-5.1.2.tgz",[m
       "integrity": "sha1-L6nhJgX6EACdRFSdb82KY93g5P8=",[m
       "requires": {[m
[31m-        "growly": "1.3.0",[m
[31m-        "semver": "5.4.1",[m
[31m-        "shellwords": "0.1.1",[m
[31m-        "which": "1.3.0"[m
[32m+[m[32m        "growly": "^1.3.0",[m
[32m+[m[32m        "semver": "^5.3.0",[m
[32m+[m[32m        "shellwords": "^0.1.0",[m
[32m+[m[32m        "which": "^1.2.12"[m
       }[m
     },[m
     "node-status-codes": {[m
[36m@@ -6020,10 +6030,10 @@[m
       "resolved": "https://registry.npmjs.org/normalize-package-data/-/normalize-package-data-2.4.0.tgz",[m
       "integrity": "sha512-9jjUFbTPfEy3R/ad/2oNbKtW9Hgovl5O1FvFWKkKblNXoN/Oou6+9+KKohPK13Yc3/TyunyWhJp6gvRNR/PPAw==",[m
       "requires": {[m
[31m-        "hosted-git-info": "2.5.0",[m
[31m-        "is-builtin-module": "1.0.0",[m
[31m-        "semver": "5.4.1",[m
[31m-        "validate-npm-package-license": "3.0.1"[m
[32m+[m[32m        "hosted-git-info": "^2.1.4",[m
[32m+[m[32m        "is-builtin-module": "^1.0.0",[m
[32m+[m[32m        "semver": "2 || 3 || 4 || 5",[m
[32m+[m[32m        "validate-npm-package-license": "^3.0.1"[m
       }[m
     },[m
     "normalize-path": {[m
[36m@@ -6031,7 +6041,7 @@[m
       "resolved": "https://registry.npmjs.org/normalize-path/-/normalize-path-2.1.1.tgz",[m
       "integrity": "sha1-GrKLVW4Zg2Oowab35vogE3/mrtk=",[m
       "requires": {[m
[31m-        "remove-trailing-separator": "1.1.0"[m
[32m+[m[32m        "remove-trailing-separator": "^1.0.1"[m
       }[m
     },[m
     "normalize-range": {[m
[36m@@ -6044,10 +6054,10 @@[m
       "resolved": "https://registry.npmjs.org/normalize-url/-/normalize-url-1.9.1.tgz",[m
       "integrity": "sha1-LMDWazHqIwNkWENuNiDYWVTGbDw=",[m
       "requires": {[m
[31m-        "object-assign": "4.1.1",[m
[31m-        "prepend-http": "1.0.4",[m
[31m-        "query-string": "4.3.4",[m
[31m-        "sort-keys": "1.1.2"[m
[32m+[m[32m        "object-assign": "^4.0.1",[m
[32m+[m[32m        "prepend-http": "^1.0.0",[m
[32m+[m[32m        "query-string": "^4.1.0",[m
[32m+[m[32m        "sort-keys": "^1.0.0"[m
       }[m
     },[m
     "npm-run-path": {[m
[36m@@ -6055,7 +6065,7 @@[m
       "resolved": "https://registry.npmjs.org/npm-run-path/-/npm-run-path-2.0.2.tgz",[m
       "integrity": "sha1-NakjLfo11wZ7TLLd8jV7GHFTbF8=",[m
       "requires": {[m
[31m-        "path-key": "2.0.1"[m
[32m+[m[32m        "path-key": "^2.0.0"[m
       }[m
     },[m
     "nth-check": {[m
[36m@@ -6063,7 +6073,7 @@[m
       "resolved": "https://registry.npmjs.org/nth-check/-/nth-check-1.0.1.tgz",[m
       "integrity": "sha1-mSms32KPwsQQmN6rgqxYDPFJquQ=",[m
       "requires": {[m
[31m-        "boolbase": "1.0.0"[m
[32m+[m[32m        "boolbase": "~1.0.0"[m
       }[m
     },[m
     "num2fraction": {[m
[36m@@ -6106,8 +6116,8 @@[m
       "resolved": "https://registry.npmjs.org/object.omit/-/object.omit-2.0.1.tgz",[m
       "integrity": "sha1-Gpx0SCnznbuFjHbKNXmuKlTr0fo=",[m
       "requires": {[m
[31m-        "for-own": "0.1.5",[m
[31m-        "is-extendable": "0.1.1"[m
[32m+[m[32m        "for-own": "^0.1.4",[m
[32m+[m[32m        "is-extendable": "^0.1.1"[m
       }[m
     },[m
     "obuf": {[m
[36m@@ -6133,7 +6143,7 @@[m
       "resolved": "https://registry.npmjs.org/once/-/once-1.4.0.tgz",[m
       "integrity": "sha1-WDsap3WWHUsROsF9nFC6753Xa9E=",[m
       "requires": {[m
[31m-        "wrappy": "1.0.2"[m
[32m+[m[32m        "wrappy": "1"[m
       }[m
     },[m
     "onetime": {[m
[36m@@ -6141,7 +6151,7 @@[m
       "resolved": "https://registry.npmjs.org/onetime/-/onetime-2.0.1.tgz",[m
       "integrity": "sha1-BnQoIw/WdEOyeUsiu6UotoZ5YtQ=",[m
       "requires": {[m
[31m-        "mimic-fn": "1.1.0"[m
[32m+[m[32m        "mimic-fn": "^1.0.0"[m
       }[m
     },[m
     "opn": {[m
[36m@@ -6149,7 +6159,7 @@[m
       "resolved": "https://registry.npmjs.org/opn/-/opn-5.1.0.tgz",[m
       "integrity": "sha512-iPNl7SyM8L30Rm1sjGdLLheyHVw5YXVfi3SKWJzBI7efxRwHojfRFjwE/OLM6qp9xJYMgab8WicTU1cPoY+Hpg==",[m
       "requires": {[m
[31m-        "is-wsl": "1.1.0"[m
[32m+[m[32m        "is-wsl": "^1.1.0"[m
       }[m
     },[m
     "optimist": {[m
[36m@@ -6157,8 +6167,8 @@[m
       "resolved": "https://registry.npmjs.org/optimist/-/optimist-0.6.1.tgz",[m
       "integrity": "sha1-2j6nRob6IaGaERwybpDrFaAZZoY=",[m
       "requires": {[m
[31m-        "minimist": "0.0.8",[m
[31m-        "wordwrap": "0.0.3"[m
[32m+[m[32m        "minimist": "~0.0.1",[m
[32m+[m[32m        "wordwrap": "~0.0.2"[m
       },[m
       "dependencies": {[m
         "wordwrap": {[m
[36m@@ -6173,12 +6183,12 @@[m
       "resolved": "https://registry.npmjs.org/optionator/-/optionator-0.8.2.tgz",[m
       "integrity": "sha1-NkxeQJ0/TWMB1sC0wFu6UBgK62Q=",[m
       "requires": {[m
[31m-        "deep-is": "0.1.3",[m
[31m-        "fast-levenshtein": "2.0.6",[m
[31m-        "levn": "0.3.0",[m
[31m-        "prelude-ls": "1.1.2",[m
[31m-        "type-check": "0.3.2",[m
[31m-        "wordwrap": "1.0.0"[m
[32m+[m[32m        "deep-is": "~0.1.3",[m
[32m+[m[32m        "fast-levenshtein": "~2.0.4",[m
[32m+[m[32m        "levn": "~0.3.0",[m
[32m+[m[32m        "prelude-ls": "~1.1.2",[m
[32m+[m[32m        "type-check": "~0.3.2",[m
[32m+[m[32m        "wordwrap": "~1.0.0"[m
       }[m
     },[m
     "original": {[m
[36m@@ -6186,7 +6196,7 @@[m
       "resolved": "https://registry.npmjs.org/original/-/original-1.0.0.tgz",[m
       "integrity": "sha1-kUf5P6FpbQS+YeAb1QuurKZWvTs=",[m
       "requires": {[m
[31m-        "url-parse": "1.0.5"[m
[32m+[m[32m        "url-parse": "1.0.x"[m
       },[m
       "dependencies": {[m
         "url-parse": {[m
[36m@@ -6194,8 +6204,8 @@[m
           "resolved": "https://registry.npmjs.org/url-parse/-/url-parse-1.0.5.tgz",[m
           "integrity": "sha1-CFSGBCKv3P7+tsllxmLUgAFpkns=",[m
           "requires": {[m
[31m-            "querystringify": "0.0.4",[m
[31m-            "requires-port": "1.0.0"[m
[32m+[m[32m            "querystringify": "0.0.x",[m
[32m+[m[32m            "requires-port": "1.0.x"[m
           }[m
         }[m
       }[m
[36m@@ -6215,7 +6225,7 @@[m
       "resolved": "https://registry.npmjs.org/os-locale/-/os-locale-1.4.0.tgz",[m
       "integrity": "sha1-IPnxeuKe00XoveWDsT0gCYA8FNk=",[m
       "requires": {[m
[31m-        "lcid": "1.0.0"[m
[32m+[m[32m        "lcid": "^1.0.0"[m
       }[m
     },[m
     "os-tmpdir": {[m
[36m@@ -6228,8 +6238,8 @@[m
       "resolved": "https://registry.npmjs.org/osenv/-/osenv-0.1.4.tgz",[m
       "integrity": "sha1-Qv5tWVPfBsgGS+bxdsPQWqqjRkQ=",[m
       "requires": {[m
[31m-        "os-homedir": "1.0.2",[m
[31m-        "os-tmpdir": "1.0.2"[m
[32m+[m[32m        "os-homedir": "^1.0.0",[m
[32m+[m[32m        "os-tmpdir": "^1.0.0"[m
       }[m
     },[m
     "p-finally": {[m
[36m@@ -6242,7 +6252,7 @@[m
       "resolved": "https://registry.npmjs.org/p-limit/-/p-limit-1.2.0.tgz",[m
       "integrity": "sha512-Y/OtIaXtUPr4/YpMv1pCL5L5ed0rumAaAeBSj12F+bSlMdys7i8oQF/GUJmfpTS/QoaRrS/k6pma29haJpsMng==",[m
       "requires": {[m
[31m-        "p-try": "1.0.0"[m
[32m+[m[32m        "p-try": "^1.0.0"[m
       }[m
     },[m
     "p-locate": {[m
[36m@@ -6250,7 +6260,7 @@[m
       "resolved": "https://registry.npmjs.org/p-locate/-/p-locate-2.0.0.tgz",[m
       "integrity": "sha1-IKAQOyIqcMj9OcwuWAaA893l7EM=",[m
       "requires": {[m
[31m-        "p-limit": "1.2.0"[m
[32m+[m[32m        "p-limit": "^1.1.0"[m
       }[m
     },[m
     "p-map": {[m
[36m@@ -6268,10 +6278,10 @@[m
       "resolved": "https://registry.npmjs.org/package-json/-/package-json-2.4.0.tgz",[m
       "integrity": "sha1-DRW9Z9HLvduyyiIv8u24a8sxqLs=",[m
       "requires": {[m
[31m-        "got": "5.7.1",[m
[31m-        "registry-auth-token": "3.3.1",[m
[31m-        "registry-url": "3.1.0",[m
[31m-        "semver": "5.4.1"[m
[32m+[m[32m        "got": "^5.0.0",[m
[32m+[m[32m        "registry-auth-token": "^3.0.1",[m
[32m+[m[32m        "registry-url": "^3.0.3",[m
[32m+[m[32m        "semver": "^5.1.0"[m
       }[m
     },[m
     "pako": {[m
[36m@@ -6284,7 +6294,7 @@[m
       "resolved": "https://registry.npmjs.org/param-case/-/param-case-2.1.1.tgz",[m
       "integrity": "sha1-35T9jPZTHs915r75oIWPvHK+Ikc=",[m
       "requires": {[m
[31m-        "no-case": "2.3.2"[m
[32m+[m[32m        "no-case": "^2.2.0"[m
       }[m
     },[m
     "parse-asn1": {[m
[36m@@ -6292,11 +6302,11 @@[m
       "resolved": "https://registry.npmjs.org/parse-asn1/-/parse-asn1-5.1.0.tgz",[m
       "integrity": "sha1-N8T5t+06tlx0gXtfJICTf7+XxxI=",[m
       "requires": {[m
[31m-        "asn1.js": "4.9.2",[m
[31m-        "browserify-aes": "1.1.1",[m
[31m-        "create-hash": "1.1.3",[m
[31m-        "evp_bytestokey": "1.0.3",[m
[31m-        "pbkdf2": "3.0.14"[m
[32m+[m[32m        "asn1.js": "^4.0.0",[m
[32m+[m[32m        "browserify-aes": "^1.0.0",[m
[32m+[m[32m        "create-hash": "^1.1.0",[m
[32m+[m[32m        "evp_bytestokey": "^1.0.0",[m
[32m+[m[32m        "pbkdf2": "^3.0.3"[m
       }[m
     },[m
     "parse-glob": {[m
[36m@@ -6304,10 +6314,10 @@[m
       "resolved": "https://registry.npmjs.org/parse-glob/-/parse-glob-3.0.4.tgz",[m
       "integrity": "sha1-ssN2z7EfNVE7rdFz7wu246OIORw=",[m
       "requires": {[m
[31m-        "glob-base": "0.3.0",[m
[31m-        "is-dotfile": "1.0.3",[m
[31m-        "is-extglob": "1.0.0",[m
[31m-        "is-glob": "2.0.1"[m
[32m+[m[32m        "glob-base": "^0.3.0",[m
[32m+[m[32m        "is-dotfile": "^1.0.0",[m
[32m+[m[32m        "is-extglob": "^1.0.0",[m
[32m+[m[32m        "is-glob": "^2.0.0"[m
       }[m
     },[m
     "parse-json": {[m
[36m@@ -6315,7 +6325,7 @@[m
       "resolved": "https://registry.npmjs.org/parse-json/-/parse-json-2.2.0.tgz",[m
       "integrity": "sha1-9ID0BDTvgHQfhGkJn43qGPVaTck=",[m
       "requires": {[m
[31m-        "error-ex": "1.3.1"[m
[32m+[m[32m        "error-ex": "^1.2.0"[m
       }[m
     },[m
     "parse-passwd": {[m
[36m@@ -6376,9 +6386,9 @@[m
       "resolved": "https://registry.npmjs.org/path-type/-/path-type-1.1.0.tgz",[m
       "integrity": "sha1-WcRPfuSR2nBNpBXaWkBwuk+P5EE=",[m
       "requires": {[m
[31m-        "graceful-fs": "4.1.11",[m
[31m-        "pify": "2.3.0",[m
[31m-        "pinkie-promise": "2.0.1"[m
[32m+[m[32m        "graceful-fs": "^4.1.2",[m
[32m+[m[32m        "pify": "^2.0.0",[m
[32m+[m[32m        "pinkie-promise": "^2.0.0"[m
       }[m
     },[m
     "pbkdf2": {[m
[36m@@ -6386,11 +6396,11 @@[m
       "resolved": "https://registry.npmjs.org/pbkdf2/-/pbkdf2-3.0.14.tgz",[m
       "integrity": "sha512-gjsZW9O34fm0R7PaLHRJmLLVfSoesxztjPjE9o6R+qtVJij90ltg1joIovN9GKrRW3t1PzhDDG3UMEMFfZ+1wA==",[m
       "requires": {[m
[31m-        "create-hash": "1.1.3",[m
[31m-        "create-hmac": "1.1.6",[m
[31m-        "ripemd160": "2.0.1",[m
[31m-        "safe-buffer": "5.1.1",[m
[31m-        "sha.js": "2.4.9"[m
[32m+[m[32m        "create-hash": "^1.1.2",[m
[32m+[m[32m        "create-hmac": "^1.1.4",[m
[32m+[m[32m        "ripemd160": "^2.0.1",[m
[32m+[m[32m        "safe-buffer": "^5.0.1",[m
[32m+[m[32m        "sha.js": "^2.4.8"[m
       }[m
     },[m
     "performance-now": {[m
[36m@@ -6413,7 +6423,7 @@[m
       "resolved": "https://registry.npmjs.org/pinkie-promise/-/pinkie-promise-2.0.1.tgz",[m
       "integrity": "sha1-ITXW36ejWMBprJsXh3YogihFD/o=",[m
       "requires": {[m
[31m-        "pinkie": "2.0.4"[m
[32m+[m[32m        "pinkie": "^2.0.0"[m
       }[m
     },[m
     "pkg-dir": {[m
[36m@@ -6421,7 +6431,7 @@[m
       "resolved": "https://registry.npmjs.org/pkg-dir/-/pkg-dir-2.0.0.tgz",[m
       "integrity": "sha1-9tXREJ4Z1j7fQo4L1X4Sd3YVM0s=",[m
       "requires": {[m
[31m-        "find-up": "2.1.0"[m
[32m+[m[32m        "find-up": "^2.1.0"[m
       }[m
     },[m
     "pluralize": {[m
[36m@@ -6434,9 +6444,9 @@[m
       "resolved": "https://registry.npmjs.org/portfinder/-/portfinder-1.0.13.tgz",[m
       "integrity": "sha1-uzLs2HwnEErm7kS1o8y/Drsa7ek=",[m
       "requires": {[m
[31m-        "async": "1.5.2",[m
[31m-        "debug": "2.6.9",[m
[31m-        "mkdirp": "0.5.1"[m
[32m+[m[32m        "async": "^1.5.2",[m
[32m+[m[32m        "debug": "^2.2.0",[m
[32m+[m[32m        "mkdirp": "0.5.x"[m
       },[m
       "dependencies": {[m
         "async": {[m
[36m@@ -6451,9 +6461,9 @@[m
       "resolved": "https://registry.npmjs.org/postcss/-/postcss-6.0.15.tgz",[m
       "integrity": "sha512-v/SpyMzLbtkmh45zUdaqLAaqXqzPdSrw8p4cQVO0/w6YiYfpj4k+Wkzhn68qk9br+H+0qfddhdPEVnbmBPfXVQ==",[m
       "requires": {[m
[31m-        "chalk": "2.3.0",[m
[31m-        "source-map": "0.6.1",[m
[31m-        "supports-color": "5.1.0"[m
[32m+[m[32m        "chalk": "^2.3.0",[m
[32m+[m[32m        "source-map": "^0.6.1",[m
[32m+[m[32m        "supports-color": "^5.1.0"[m
       },[m
       "dependencies": {[m
         "chalk": {[m
[36m@@ -6461,9 +6471,9 @@[m
           "resolved": "https://registry.npmjs.org/chalk/-/chalk-2.3.0.tgz",[m
           "integrity": "sha512-Az5zJR2CBujap2rqXGaJKaPHyJ0IrUimvYNX+ncCy8PJP4ltOGTrHUIo097ZaL2zMeKYpiCdqDvS6zdrTFok3Q==",[m
           "requires": {[m
[31m-            "ansi-styles": "3.2.0",[m
[31m-            "escape-string-regexp": "1.0.5",[m
[31m-            "supports-color": "4.5.0"[m
[32m+[m[32m            "ansi-styles": "^3.1.0",[m
[32m+[m[32m            "escape-string-regexp": "^1.0.5",[m
[32m+[m[32m            "supports-color": "^4.0.0"[m
           },[m
           "dependencies": {[m
             "supports-color": {[m
[36m@@ -6471,7 +6481,7 @@[m
               "resolved": "https://registry.npmjs.org/supports-color/-/supports-color-4.5.0.tgz",[m
               "integrity": "sha1-vnoN5ITexcXN34s9WRJQRJEvY1s=",[m
               "requires": {[m
[31m-                "has-flag": "2.0.0"[m
[32m+[m[32m                "has-flag": "^2.0.0"[m
               }[m
             }[m
           }[m
[36m@@ -6483,9 +6493,9 @@[m
       "resolved": "https://registry.npmjs.org/postcss-calc/-/postcss-calc-5.3.1.tgz",[m
       "integrity": "sha1-d7rnypKK2FcW4v2kLyYb98HWW14=",[m
       "requires": {[m
[31m-        "postcss": "5.2.18",[m
[31m-        "postcss-message-helpers": "2.0.0",[m
[31m-        "reduce-css-calc": "1.3.0"[m
[32m+[m[32m        "postcss": "^5.0.2",[m
[32m+[m[32m        "postcss-message-helpers": "^2.0.0",[m
[32m+[m[32m        "reduce-css-calc": "^1.2.6"[m
       },[m
       "dependencies": {[m
         "has-flag": {[m
[36m@@ -6498,10 +6508,10 @@[m
           "resolved": "https://registry.npmjs.org/postcss/-/postcss-5.2.18.tgz",[m
           "integrity": "sha512-zrUjRRe1bpXKsX1qAJNJjqZViErVuyEkMTRrwu4ud4sbTtIBRmtaYDrHmcGgmrbsW3MHfmtIf+vJumgQn+PrXg==",[m
           "requires": {[m
[31m-            "chalk": "1.1.3",[m
[31m-            "js-base64": "2.4.0",[m
[31m-            "source-map": "0.5.7",[m
[31m-            "supports-color": "3.2.3"[m
[32m+[m[32m            "chalk": "^1.1.3",[m
[32m+[m[32m            "js-base64": "^2.1.9",[m
[32m+[m[32m            "source-map": "^0.5.6",[m
[32m+[m[32m            "supports-color": "^3.2.3"[m
           }[m
         },[m
         "source-map": {[m
[36m@@ -6514,7 +6524,7 @@[m
           "resolved": "https://registry.npmjs.org/supports-color/-/supports-color-3.2.3.tgz",[m
           "integrity": "sha1-ZawFBLOVQXHYpklGsq48u4pfVPY=",[m
           "requires": {[m
[31m-            "has-flag": "1.0.0"[m
[32m+[m[32m            "has-flag": "^1.0.0"[m
           }[m
         }[m
       }[m
[36m@@ -6524,9 +6534,9 @@[m
       "resolved": "https://registry.npmjs.org/postcss-colormin/-/postcss-colormin-2.2.2.tgz",[m
       "integrity": "sha1-ZjFBfV8OkJo9fsJrJMio0eT5bks=",[m
       "requires": {[m
[31m-        "colormin": "1.1.2",[m
[31m-        "postcss": "5.2.18",[m
[31m-        "postcss-value-parser": "3.3.0"[m
[32m+[m[32m        "colormin": "^1.0.5",[m
[32m+[m[32m        "postcss": "^5.0.13",[m
[32m+[m[32m        "postcss-value-parser": "^3.2.3"[m
       },[m
       "dependencies": {[m
         "has-flag": {[m
[36m@@ -6539,10 +6549,10 @@[m
           "resolved": "https://registry.npmjs.org/postcss/-/postcss-5.2.18.tgz",[m
           "integrity": "sha512-zrUjRRe1bpXKsX1qAJNJjqZViErVuyEkMTRrwu4ud4sbTtIBRmtaYDrHmcGgmrbsW3MHfmtIf+vJumgQn+PrXg==",[m
           "requires": {[m
[31m-            "chalk": "1.1.3",[m
[31m-            "js-base64": "2.4.0",[m
[31m-            "source-map": "0.5.7",[m
[31m-            "supports-color": "3.2.3"[m
[32m+[m[32m            "chalk": "^1.1.3",[m
[32m+[m[32m            "js-base64": "^2.1.9",[m
[32m+[m[32m            "source-map": "^0.5.6",[m
[32m+[m[32m            "supports-color": "^3.2.3"[m
           }[m
         },[m
         "source-map": {[m
[36m@@ -6555,7 +6565,7 @@[m
           "resolved": "https://registry.npmjs.org/supports-color/-/supports-color-3.2.3.tgz",[m
           "integrity": "sha1-ZawFBLOVQXHYpklGsq48u4pfVPY=",[m
           "requires": {[m
[31m-            "has-flag": "1.0.0"[m
[32m+[m[32m            "has-flag": "^1.0.0"[m
           }[m
         }[m
       }[m
[36m@@ -6565,8 +6575,8 @@[m
       "resolved": "https://registry.npmjs.org/postcss-convert-values/-/postcss-convert-values-2.6.1.tgz",[m
       "integrity": "sha1-u9hZPFwf0uPRwyK7kl3K6Nrk1i0=",[m
       "requires": {[m
[31m-        "postcss": "5.2.18",[m
[31m-        "postcss-value-parser": "3.3.0"[m
[32m+[m[32m        "postcss": "^5.0.11",[m
[32m+[m[32m        "postcss-value-parser": "^3.1.2"[m
       },[m
       "dependencies": {[m
         "has-flag": {[m
[36m@@ -6579,10 +6589,10 @@[m
           "resolved": "https://registry.npmjs.org/postcss/-/postcss-5.2.18.tgz",[m
           "integrity": "sha512-zrUjRRe1bpXKsX1qAJNJjqZViErVuyEkMTRrwu4ud4sbTtIBRmtaYDrHmcGgmrbsW3MHfmtIf+vJumgQn+PrXg==",[m
           "requires": {[m
[31m-            "chalk": "1.1.3",[m
[31m-            "js-base64": "2.4.0",[m
[31m-            "source-map": "0.5.7",[m
[31m-            "supports-color": "3.2.3"[m
[32m+[m[32m            "chalk": "^1.1.3",[m
[32m+[m[32m            "js-base64": "^2.1.9",[m
[32m+[m[32m            "source-map": "^0.5.6",[m
[32m+[m[32m            "supports-color": "^3.2.3"[m
           }[m
         },[m
         "source-map": {[m
[36m@@ -6595,7 +6605,7 @@[m
           "resolved": "https://registry.npmjs.org/supports-color/-/supports-color-3.2.3.tgz",[m
           "integrity": "sha1-ZawFBLOVQXHYpklGsq48u4pfVPY=",[m
           "requires": {[m
[31m-            "has-flag": "1.0.0"[m
[32m+[m[32m            "has-flag": "^1.0.0"[m
           }[m
         }[m
       }[m
[36m@@ -6605,7 +6615,7 @@[m
       "resolved": "https://registry.npmjs.org/postcss-discard-comments/-/postcss-discard-comments-2.0.4.tgz",[m
       "integrity": "sha1-vv6J+v1bPazlzM5Rt2uBUUvgDj0=",[m
       "requires": {[m
[31m-        "postcss": "5.2.18"[m
[32m+[m[32m        "postcss": "^5.0.14"[m
       },[m
       "dependencies": {[m
         "has-flag": {[m
[36m@@ -6618,10 +6628,10 @@[m
           "resolved": "https://registry.npmjs.org/postcss/-/postcss-5.2.18.tgz",[m
           "integrity": "sha512-zrUjRRe1bpXKsX1qAJNJjqZViErVuyEkMTRrwu4ud4sbTtIBRmtaYDrHmcGgmrbsW3MHfmtIf+vJumgQn+PrXg==",[m
           "requires": {[m
[31m-            "chalk": "1.1.3",[m
[31m-            "js-base64": "2.4.0",[m
[31m-            "source-map": "0.5.7",[m
[31m-            "supports-color": "3.2.3"[m
[32m+[m[32m            "chalk": "^1.1.3",[m
[32m+[m[32m            "js-base64": "^2.1.9",[m
[32m+[m[32m            "source-map": "^0.5.6",[m
[32m+[m[32m            "supports-color": "^3.2.3"[m
           }[m
         },[m
         "source-map": {[m
[36m@@ -6634,7 +6644,7 @@[m
           "resolved": "https://registry.npmjs.org/supports-color/-/supports-color-3.2.3.tgz",[m
           "integrity": "sha1-ZawFBLOVQXHYpklGsq48u4pfVPY=",[m
           "requires": {[m
[31m-            "has-flag": "1.0.0"[m
[32m+[m[32m            "has-flag": "^1.0.0"[m
           }[m
         }[m
       }[m
[36m@@ -6644,7 +6654,7 @@[m
       "resolved": "https://registry.npmjs.org/postcss-discard-duplicates/-/postcss-discard-duplicates-2.1.0.tgz",[m
       "integrity": "sha1-uavye4isGIFYpesSq8riAmO5GTI=",[m
       "requires": {[m
[31m-        "postcss": "5.2.18"[m
[32m+[m[32m        "postcss": "^5.0.4"[m
       },[m
       "dependencies": {[m
         "has-flag": {[m
[36m@@ -6657,10 +6667,10 @@[m
           "resolved": "https://registry.npmjs.org/postcss/-/postcss-5.2.18.tgz",[m
           "integrity": "sha512-zrUjRRe1bpXKsX1qAJNJjqZViErVuyEkMTRrwu4ud4sbTtIBRmtaYDrHmcGgmrbsW3MHfmtIf+vJumgQn+PrXg==",[m
           "requires": {[m
[31m-            "chalk": "1.1.3",[m
[31m-            "js-base64": "2.4.0",[m
[31m-            "source-map": "0.5.7",[m
[31m-            "supports-color": "3.2.3"[m
[32m+[m[32m            "chalk": "^1.1.3",[m
[32m+[m[32m            "js-base64": "^2.1.9",[m
[32m+[m[32m            "source-map": "^0.5.6",[m
[32m+[m[32m            "supports-color": "^3.2.3"[m
           }[m
         },[m
         "source-map": {[m
[36m@@ -6673,7 +6683,7 @@[m
           "resolved": "https://registry.npmjs.org/supports-color/-/supports-color-3.2.3.tgz",[m
           "integrity": "sha1-ZawFBLOVQXHYpklGsq48u4pfVPY=",[m
           "requires": {[m
[31m-            "has-flag": "1.0.0"[m
[32m+[m[32m            "has-flag": "^1.0.0"[m
           }[m
         }[m
       }[m
[36m@@ -6683,7 +6693,7 @@[m
       "resolved": "https://registry.npmjs.org/postcss-discard-empty/-/postcss-discard-empty-2.1.0.tgz",[m
       "integrity": "sha1-0rS9nVztXr2Nyt52QMfXzX9PkrU=",[m
       "requires": {[m
[31m-        "postcss": "5.2.18"[m
[32m+[m[32m        "postcss": "^5.0.14"[m
       },[m
       "dependencies": {[m
         "has-flag": {[m
[36m@@ -6696,10 +6706,10 @@[m
           "resolved": "https://registry.npmjs.org/postcss/-/postcss-5.2.18.tgz",[m
           "integrity": "sha512-zrUjRRe1bpXKsX1qAJNJjqZViErVuyEkMTRrwu4ud4sbTtIBRmtaYDrHmcGgmrbsW3MHfmtIf+vJumgQn+PrXg==",[m
           "requires": {[m
[31m-            "chalk": "1.1.3",[m
[31m-            "js-base64": "2.4.0",[m
[31m-            "source-map": "0.5.7",[m
[31m-            "supports-color": "3.2.3"[m
[32m+[m[32m            "chalk": "^1.1.3",[m
[32m+[m[32m            "js-base64": "^2.1.9",[m
[32m+[m[32m            "source-map": "^0.5.6",[m
[32m+[m[32m            "supports-color": "^3.2.3"[m
           }[m
         },[m
         "source-map": {[m
[36m@@ -6712,7 +6722,7 @@[m
           "resolved": "https://registry.npmjs.org/supports-color/-/supports-color-3.2.3.tgz",[m
           "integrity": "sha1-ZawFBLOVQXHYpklGsq48u4pfVPY=",[m
           "requires": {[m
[31m-            "has-flag": "1.0.0"[m
[32m+[m[32m            "has-flag": "^1.0.0"[m
           }[m
         }[m
       }[m
[36m@@ -6722,7 +6732,7 @@[m
       "resolved": "https://registry.npmjs.org/postcss-discard-overridden/-/postcss-discard-overridden-0.1.1.tgz",[m
       "integrity": "sha1-ix6vVU9ob7KIzYdMVWZ7CqNmjVg=",[m
       "requires": {[m
[31m-        "postcss": "5.2.18"[m
[32m+[m[32m        "postcss": "^5.0.16"[m
       },[m
       "dependencies": {[m
         "has-flag": {[m
[36m@@ -6735,10 +6745,10 @@[m
           "resolved": "https://registry.npmjs.org/postcss/-/postcss-5.2.18.tgz",[m
           "integrity": "sha512-zrUjRRe1bpXKsX1qAJNJjqZViErVuyEkMTRrwu4ud4sbTtIBRmtaYDrHmcGgmrbsW3MHfmtIf+vJumgQn+PrXg==",[m
           "requires": {[m
[31m-            "chalk": "1.1.3",[m
[31m-            "js-base64": "2.4.0",[m
[31m-            "source-map": "0.5.7",[m
[31m-            "supports-color": "3.2.3"[m
[32m+[m[32m            "chalk": "^1.1.3",[m
[32m+[m[32m            "js-base64": "^2.1.9",[m
[32m+[m[32m            "source-map": "^0.5.6",[m
[32m+[m[32m            "supports-color": "^3.2.3"[m
           }[m
         },[m
         "source-map": {[m
[36m@@ -6751,7 +6761,7 @@[m
           "resolved": "https://registry.npmjs.org/supports-color/-/supports-color-3.2.3.tgz",[m
           "integrity": "sha1-ZawFBLOVQXHYpklGsq48u4pfVPY=",[m
           "requires": {[m
[31m-            "has-flag": "1.0.0"[m
[32m+[m[32m            "has-flag": "^1.0.0"[m
           }[m
         }[m
       }[m
[36m@@ -6761,8 +6771,8 @@[m
       "resolved": "https://registry.npmjs.org/postcss-discard-unused/-/postcss-discard-unused-2.2.3.tgz",[m
       "integrity": "sha1-vOMLLMWR/8Y0Mitfs0ZLbZNPRDM=",[m
       "requires": {[m
[31m-        "postcss": "5.2.18",[m
[31m-        "uniqs": "2.0.0"[m
[32m+[m[32m        "postcss": "^5.0.14",[m
[32m+[m[32m        "uniqs": "^2.0.0"[m
       },[m
       "dependencies": {[m
         "has-flag": {[m
[36m@@ -6775,10 +6785,10 @@[m
           "resolved": "https://registry.npmjs.org/postcss/-/postcss-5.2.18.tgz",[m
           "integrity": "sha512-zrUjRRe1bpXKsX1qAJNJjqZViErVuyEkMTRrwu4ud4sbTtIBRmtaYDrHmcGgmrbsW3MHfmtIf+vJumgQn+PrXg==",[m
           "requires": {[m
[31m-            "chalk": "1.1.3",[m
[31m-            "js-base64": "2.4.0",[m
[31m-            "source-map": "0.5.7",[m
[31m-            "supports-color": "3.2.3"[m
[32m+[m[32m            "chalk": "^1.1.3",[m
[32m+[m[32m            "js-base64": "^2.1.9",[m
[32m+[m[32m            "source-map": "^0.5.6",[m
[32m+[m[32m            "supports-color": "^3.2.3"[m
           }[m
         },[m
         "source-map": {[m
[36m@@ -6791,7 +6801,7 @@[m
           "resolved": "https://registry.npmjs.org/supports-color/-/supports-color-3.2.3.tgz",[m
           "integrity": "sha1-ZawFBLOVQXHYpklGsq48u4pfVPY=",[m
           "requires": {[m
[31m-            "has-flag": "1.0.0"[m
[32m+[m[32m            "has-flag": "^1.0.0"[m
           }[m
         }[m
       }[m
[36m@@ -6801,8 +6811,8 @@[m
       "resolved": "https://registry.npmjs.org/postcss-filter-plugins/-/postcss-filter-plugins-2.0.2.tgz",[m
       "integrity": "sha1-bYWGJTTXNaxCDkqFgG4fXUKG2Ew=",[m
       "requires": {[m
[31m-        "postcss": "5.2.18",[m
[31m-        "uniqid": "4.1.1"[m
[32m+[m[32m        "postcss": "^5.0.4",[m
[32m+[m[32m        "uniqid": "^4.0.0"[m
       },[m
       "dependencies": {[m
         "has-flag": {[m
[36m@@ -6815,10 +6825,10 @@[m
           "resolved": "https://registry.npmjs.org/postcss/-/postcss-5.2.18.tgz",[m
           "integrity": "sha512-zrUjRRe1bpXKsX1qAJNJjqZViErVuyEkMTRrwu4ud4sbTtIBRmtaYDrHmcGgmrbsW3MHfmtIf+vJumgQn+PrXg==",[m
           "requires": {[m
[31m-            "chalk": "1.1.3",[m
[31m-            "js-base64": "2.4.0",[m
[31m-            "source-map": "0.5.7",[m
[31m-            "supports-color": "3.2.3"[m
[32m+[m[32m            "chalk": "^1.1.3",[m
[32m+[m[32m            "js-base64": "^2.1.9",[m
[32m+[m[32m            "source-map": "^0.5.6",[m
[32m+[m[32m            "supports-color": "^3.2.3"[m
           }[m
         },[m
         "source-map": {[m
[36m@@ -6831,7 +6841,7 @@[m
           "resolved": "https://registry.npmjs.org/supports-color/-/supports-color-3.2.3.tgz",[m
           "integrity": "sha1-ZawFBLOVQXHYpklGsq48u4pfVPY=",[m
           "requires": {[m
[31m-            "has-flag": "1.0.0"[m
[32m+[m[32m            "has-flag": "^1.0.0"[m
           }[m
         }[m
       }[m
[36m@@ -6841,7 +6851,7 @@[m
       "resolved": "https://registry.npmjs.org/postcss-flexbugs-fixes/-/postcss-flexbugs-fixes-3.2.0.tgz",[m
       "integrity": "sha512-0AuD9HG1Ey3/3nqPWu9yqf7rL0KCPu5VgjDsjf5mzEcuo9H/z8nco/fljKgjsOUrZypa95MI0kS4xBZeBzz2lw==",[m
       "requires": {[m
[31m-        "postcss": "6.0.15"[m
[32m+[m[32m        "postcss": "^6.0.1"[m
       }[m
     },[m
     "postcss-load-config": {[m
[36m@@ -6849,10 +6859,10 @@[m
       "resolved": "https://registry.npmjs.org/postcss-load-config/-/postcss-load-config-1.2.0.tgz",[m
       "integrity": "sha1-U56a/J3chiASHr+djDZz4M5Q0oo=",[m
       "requires": {[m
[31m-        "cosmiconfig": "2.2.2",[m
[31m-        "object-assign": "4.1.1",[m
[31m-        "postcss-load-options": "1.2.0",[m
[31m-        "postcss-load-plugins": "2.3.0"[m
[32m+[m[32m        "cosmiconfig": "^2.1.0",[m
[32m+[m[32m        "object-assign": "^4.1.0",[m
[32m+[m[32m        "postcss-load-options": "^1.2.0",[m
[32m+[m[32m        "postcss-load-plugins": "^2.3.0"[m
       }[m
     },[m
     "postcss-load-options": {[m
[36m@@ -6860,8 +6870,8 @@[m
       "resolved": "https://registry.npmjs.org/postcss-load-options/-/postcss-load-options-1.2.0.tgz",[m
       "integrity": "sha1-sJixVZ3awt8EvAuzdfmaXP4rbYw=",[m
       "requires": {[m
[31m-        "cosmiconfig": "2.2.2",[m
[31m-        "object-assign": "4.1.1"[m
[32m+[m[32m        "cosmiconfig": "^2.1.0",[m
[32m+[m[32m        "object-assign": "^4.1.0"[m
       }[m
     },[m
     "postcss-load-plugins": {[m
[36m@@ -6869,8 +6879,8 @@[m
       "resolved": "https://registry.npmjs.org/postcss-load-plugins/-/postcss-load-plugins-2.3.0.tgz",[m
       "integrity": "sha1-dFdoEWWZrKLwCfrUJrABdQSdjZI=",[m
       "requires": {[m
[31m-        "cosmiconfig": "2.2.2",[m
[31m-        "object-assign": "4.1.1"[m
[32m+[m[32m        "cosmiconfig": "^2.1.1",[m
[32m+[m[32m        "object-assign": "^4.1.0"[m
       }[m
     },[m
     "postcss-loader": {[m
[36m@@ -6878,10 +6888,10 @@[m
       "resolved": "https://registry.npmjs.org/postcss-loader/-/postcss-loader-2.0.8.tgz",[m
       "integrity": "sha512-KtXBiQ/r/WYW8LxTSJK7h8wLqvCMSub/BqmRnud/Mu8RzwflW9cmXxwsMwbn15TNv287Hcufdb3ZSs7xHKnG8Q==",[m
       "requires": {[m
[31m-        "loader-utils": "1.1.0",[m
[31m-        "postcss": "6.0.15",[m
[31m-        "postcss-load-config": "1.2.0",[m
[31m-        "schema-utils": "0.3.0"[m
[32m+[m[32m        "loader-utils": "^1.1.0",[m
[32m+[m[32m        "postcss": "^6.0.0",[m
[32m+[m[32m        "postcss-load-config": "^1.2.0",[m
[32m+[m[32m        "schema-utils": "^0.3.0"[m
       }[m
     },[m
     "postcss-merge-idents": {[m
[36m@@ -6889,9 +6899,9 @@[m
       "resolved": "https://registry.npmjs.org/postcss-merge-idents/-/postcss-merge-idents-2.1.7.tgz",[m
       "integrity": "sha1-TFUwMTwI4dWzu/PSu8dH4njuonA=",[m
       "requires": {[m
[31m-        "has": "1.0.1",[m
[31m-        "postcss": "5.2.18",[m
[31m-        "postcss-value-parser": "3.3.0"[m
[32m+[m[32m        "has": "^1.0.1",[m
[32m+[m[32m        "postcss": "^5.0.10",[m
[32m+[m[32m        "postcss-value-parser": "^3.1.1"[m
       },[m
       "dependencies": {[m
         "has-flag": {[m
[36m@@ -6904,10 +6914,10 @@[m
           "resolved": "https://registry.npmjs.org/postcss/-/postcss-5.2.18.tgz",[m
           "integrity": "sha512-zrUjRRe1bpXKsX1qAJNJjqZViErVuyEkMTRrwu4ud4sbTtIBRmtaYDrHmcGgmrbsW3MHfmtIf+vJumgQn+PrXg==",[m
           "requires": {[m
[31m-            "chalk": "1.1.3",[m
[31m-            "js-base64": "2.4.0",[m
[31m-            "source-map": "0.5.7",[m
[31m-            "supports-color": "3.2.3"[m
[32m+[m[32m            "chalk": "^1.1.3",[m
[32m+[m[32m            "js-base64": "^2.1.9",[m
[32m+[m[32m            "source-map": "^0.5.6",[m
[32m+[m[32m            "supports-color": "^3.2.3"[m
           }[m
         },[m
         "source-map": {[m
[36m@@ -6920,7 +6930,7 @@[m
           "resolved": "https://registry.npmjs.org/supports-color/-/supports-color-3.2.3.tgz",[m
           "integrity": "sha1-ZawFBLOVQXHYpklGsq48u4pfVPY=",[m
           "requires": {[m
[31m-            "has-flag": "1.0.0"[m
[32m+[m[32m            "has-flag": "^1.0.0"[m
           }[m
         }[m
       }[m
[36m@@ -6930,7 +6940,7 @@[m
       "resolved": "https://registry.npmjs.org/postcss-merge-longhand/-/postcss-merge-longhand-2.0.2.tgz",[m
       "integrity": "sha1-I9kM0Sewp3mUkVMyc5A0oaTz1lg=",[m
       "requires": {[m
[31m-        "postcss": "5.2.18"[m
[32m+[m[32m        "postcss": "^5.0.4"[m
       },[m
       "dependencies": {[m
         "has-flag": {[m
[36m@@ -6943,10 +6953,10 @@[m
           "resolved": "https://registry.npmjs.org/postcss/-/postcss-5.2.18.tgz",[m
           "integrity": "sha512-zrUjRRe1bpXKsX1qAJNJjqZViErVuyEkMTRrwu4ud4sbTtIBRmtaYDrHmcGgmrbsW3MHfmtIf+vJumgQn+PrXg==",[m
           "requires": {[m
[31m-            "chalk": "1.1.3",[m
[31m-            "js-base64": "2.4.0",[m
[31m-            "source-map": "0.5.7",[m
[31m-            "supports-color": "3.2.3"[m
[32m+[m[32m            "chalk": "^1.1.3",[m
[32m+[m[32m            "js-base64": "^2.1.9",[m
[32m+[m[32m            "source-map": "^0.5.6",[m
[32m+[m[32m            "supports-color": "^3.2.3"[m
           }[m
         },[m
         "source-map": {[m
[36m@@ -6959,7 +6969,7 @@[m
           "resolved": "https://registry.npmjs.org/supports-color/-/supports-color-3.2.3.tgz",[m
           "integrity": "sha1-ZawFBLOVQXHYpklGsq48u4pfVPY=",[m
           "requires": {[m
[31m-            "has-flag": "1.0.0"[m
[32m+[m[32m            "has-flag": "^1.0.0"[m
           }[m
         }[m
       }[m
[36m@@ -6969,11 +6979,11 @@[m
       "resolved": "https://registry.npmjs.org/postcss-merge-rules/-/postcss-merge-rules-2.1.2.tgz",[m
       "integrity": "sha1-0d9d+qexrMO+VT8OnhDofGG19yE=",[m
       "requires": {[m
[31m-        "browserslist": "1.7.7",[m
[31m-        "caniuse-api": "1.6.1",[m
[31m-        "postcss": "5.2.18",[m
[31m-        "postcss-selector-parser": "2.2.3",[m
[31m-        "vendors": "1.0.1"[m
[32m+[m[32m        "browserslist": "^1.5.2",[m
[32m+[m[32m        "caniuse-api": "^1.5.2",[m
[32m+[m[32m        "postcss": "^5.0.4",[m
[32m+[m[32m        "postcss-selector-parser": "^2.2.2",[m
[32m+[m[32m        "vendors": "^1.0.0"[m
       },[m
       "dependencies": {[m
         "browserslist": {[m
[36m@@ -6981,8 +6991,8 @@[m
           "resolved": "https://registry.npmjs.org/browserslist/-/browserslist-1.7.7.tgz",[m
           "integrity": "sha1-C9dnBCWL6CmyOYu1Dkti0aFmsLk=",[m
           "requires": {[m
[31m-            "caniuse-db": "1.0.30000787",[m
[31m-            "electron-to-chromium": "1.3.30"[m
[32m+[m[32m            "caniuse-db": "^1.0.30000639",[m
[32m+[m[32m            "electron-to-chromium": "^1.2.7"[m
           }[m
         },[m
         "has-flag": {[m
[36m@@ -6995,10 +7005,10 @@[m
           "resolved": "https://registry.npmjs.org/postcss/-/postcss-5.2.18.tgz",[m
           "integrity": "sha512-zrUjRRe1bpXKsX1qAJNJjqZViErVuyEkMTRrwu4ud4sbTtIBRmtaYDrHmcGgmrbsW3MHfmtIf+vJumgQn+PrXg==",[m
           "requires": {[m
[31m-            "chalk": "1.1.3",[m
[31m-            "js-base64": "2.4.0",[m
[31m-            "source-map": "0.5.7",[m
[31m-            "supports-color": "3.2.3"[m
[32m+[m[32m            "chalk": "^1.1.3",[m
[32m+[m[32m            "js-base64": "^2.1.9",[m
[32m+[m[32m            "source-map": "^0.5.6",[m
[32m+[m[32m            "supports-color": "^3.2.3"[m
           }[m
         },[m
         "source-map": {[m
[36m@@ -7011,7 +7021,7 @@[m
           "resolved": "https://registry.npmjs.org/supports-color/-/supports-color-3.2.3.tgz",[m
           "integrity": "sha1-ZawFBLOVQXHYpklGsq48u4pfVPY=",[m
           "requires": {[m
[31m-            "has-flag": "1.0.0"[m
[32m+[m[32m            "has-flag": "^1.0.0"[m
           }[m
         }[m
       }[m
[36m@@ -7026,9 +7036,9 @@[m
       "resolved": "https://registry.npmjs.org/postcss-minify-font-values/-/postcss-minify-font-values-1.0.5.tgz",[m
       "integrity": "sha1-S1jttWZB66fIR0qzUmyv17vey2k=",[m
       "requires": {[m
[31m-        "object-assign": "4.1.1",[m
[31m-        "postcss": "5.2.18",[m
[31m-        "postcss-value-parser": "3.3.0"[m
[32m+[m[32m        "object-assign": "^4.0.1",[m
[32m+[m[32m        "postcss": "^5.0.4",[m
[32m+[m[32m        "postcss-value-parser": "^3.0.2"[m
       },[m
       "dependencies": {[m
         "has-flag": {[m
[36m@@ -7041,10 +7051,10 @@[m
           "resolved": "https://registry.npmjs.org/postcss/-/postcss-5.2.18.tgz",[m
           "integrity": "sha512-zrUjRRe1bpXKsX1qAJNJjqZViErVuyEkMTRrwu4ud4sbTtIBRmtaYDrHmcGgmrbsW3MHfmtIf+vJumgQn+PrXg==",[m
           "requires": {[m
[31m-            "chalk": "1.1.3",[m
[31m-            "js-base64": "2.4.0",[m
[31m-            "source-map": "0.5.7",[m
[31m-            "supports-color": "3.2.3"[m
[32m+[m[32m            "chalk": "^1.1.3",[m
[32m+[m[32m            "js-base64": "^2.1.9",[m
[32m+[m[32m            "source-map": "^0.5.6",[m
[32m+[m[32m            "supports-color": "^3.2.3"[m
           }[m
         },[m
         "source-map": {[m
[36m@@ -7057,7 +7067,7 @@[m
           "resolved": "https://registry.npmjs.org/supports-color/-/supports-color-3.2.3.tgz",[m
           "integrity": "sha1-ZawFBLOVQXHYpklGsq48u4pfVPY=",[m
           "requires": {[m
[31m-            "has-flag": "1.0.0"[m
[32m+[m[32m            "has-flag": "^1.0.0"[m
           }[m
         }[m
       }[m
[36m@@ -7067,8 +7077,8 @@[m
       "resolved": "https://registry.npmjs.org/postcss-minify-gradients/-/postcss-minify-gradients-1.0.5.tgz",[m
       "integrity": "sha1-Xb2hE3NwP4PPtKPqOIHY11/15uE=",[m
       "requires": {[m
[31m-        "postcss": "5.2.18",[m
[31m-        "postcss-value-parser": "3.3.0"[m
[32m+[m[32m        "postcss": "^5.0.12",[m
[32m+[m[32m        "postcss-value-parser": "^3.3.0"[m
       },[m
       "dependencies": {[m
         "has-flag": {[m
[36m@@ -7081,10 +7091,10 @@[m
           "resolved": "https://registry.npmjs.org/postcss/-/postcss-5.2.18.tgz",[m
           "integrity": "sha512-zrUjRRe1bpXKsX1qAJNJjqZViErVuyEkMTRrwu4ud4sbTtIBRmtaYDrHmcGgmrbsW3MHfmtIf+vJumgQn+PrXg==",[m
           "requires": {[m
[31m-            "chalk": "1.1.3",[m
[31m-            "js-base64": "2.4.0",[m
[31m-            "source-map": "0.5.7",[m
[31m-            "supports-color": "3.2.3"[m
[32m+[m[32m            "chalk": "^1.1.3",[m
[32m+[m[32m            "js-base64": "^2.1.9",[m
[32m+[m[32m            "source-map": "^0.5.6",[m
[32m+[m[32m            "supports-color": "^3.2.3"[m
           }[m
         },[m
         "source-map": {[m
[36m@@ -7097,7 +7107,7 @@[m
           "resolved": "https://registry.npmjs.org/supports-color/-/supports-color-3.2.3.tgz",[m
           "integrity": "sha1-ZawFBLOVQXHYpklGsq48u4pfVPY=",[m
           "requires": {[m
[31m-            "has-flag": "1.0.0"[m
[32m+[m[32m            "has-flag": "^1.0.0"[m
           }[m
         }[m
       }[m
[36m@@ -7107,10 +7117,10 @@[m
       "resolved": "https://registry.npmjs.org/postcss-minify-params/-/postcss-minify-params-1.2.2.tgz",[m
       "integrity": "sha1-rSzgcTc7lDs9kwo/pZo1jCjW8fM=",[m
       "requires": {[m
[31m-        "alphanum-sort": "1.0.2",[m
[31m-        "postcss": "5.2.18",[m
[31m-        "postcss-value-parser": "3.3.0",[m
[31m-        "uniqs": "2.0.0"[m
[32m+[m[32m        "alphanum-sort": "^1.0.1",[m
[32m+[m[32m        "postcss": "^5.0.2",[m
[32m+[m[32m        "postcss-value-parser": "^3.0.2",[m
[32m+[m[32m        "uniqs": "^2.0.0"[m
       },[m
       "dependencies": {[m
         "has-flag": {[m
[36m@@ -7123,10 +7133,10 @@[m
           "resolved": "https://registry.npmjs.org/postcss/-/postcss-5.2.18.tgz",[m
           "integrity": "sha512-zrUjRRe1bpXKsX1qAJNJjqZViErVuyEkMTRrwu4ud4sbTtIBRmtaYDrHmcGgmrbsW3MHfmtIf+vJumgQn+PrXg==",[m
           "requires": {[m
[31m-            "chalk": "1.1.3",[m
[31m-            "js-base64": "2.4.0",[m
[31m-            "source-map": "0.5.7",[m
[31m-            "supports-color": "3.2.3"[m
[32m+[m[32m            "chalk": "^1.1.3",[m
[32m+[m[32m            "js-base64": "^2.1.9",[m
[32m+[m[32m            "source-map": "^0.5.6",[m
[32m+[m[32m            "supports-color": "^3.2.3"[m
           }[m
         },[m
         "source-map": {[m
[36m@@ -7139,7 +7149,7 @@[m
           "resolved": "https://registry.npmjs.org/supports-color/-/supports-color-3.2.3.tgz",[m
           "integrity": "sha1-ZawFBLOVQXHYpklGsq48u4pfVPY=",[m
           "requires": {[m
[31m-            "has-flag": "1.0.0"[m
[32m+[m[32m            "has-flag": "^1.0.0"[m
           }[m
         }[m
       }[m
[36m@@ -7149,10 +7159,10 @@[m
       "resolved": "https://registry.npmjs.org/postcss-minify-selectors/-/postcss-minify-selectors-2.1.1.tgz",[m
       "integrity": "sha1-ssapjAByz5G5MtGkllCBFDEXNb8=",[m
       "requires": {[m
[31m-        "alphanum-sort": "1.0.2",[m
[31m-        "has": "1.0.1",[m
[31m-        "postcss": "5.2.18",[m
[31m-        "postcss-selector-parser": "2.2.3"[m
[32m+[m[32m        "alphanum-sort": "^1.0.2",[m
[32m+[m[32m        "has": "^1.0.1",[m
[32m+[m[32m        "postcss": "^5.0.14",[m
[32m+[m[32m        "postcss-selector-parser": "^2.0.0"[m
       },[m
       "dependencies": {[m
         "has-flag": {[m
[36m@@ -7165,10 +7175,10 @@[m
           "resolved": "https://registry.npmjs.org/postcss/-/postcss-5.2.18.tgz",[m
           "integrity": "sha512-zrUjRRe1bpXKsX1qAJNJjqZViErVuyEkMTRrwu4ud4sbTtIBRmtaYDrHmcGgmrbsW3MHfmtIf+vJumgQn+PrXg==",[m
           "requires": {[m
[31m-            "chalk": "1.1.3",[m
[31m-            "js-base64": "2.4.0",[m
[31m-            "source-map": "0.5.7",[m
[31m-            "supports-color": "3.2.3"[m
[32m+[m[32m            "chalk": "^1.1.3",[m
[32m+[m[32m            "js-base64": "^2.1.9",[m
[32m+[m[32m            "source-map": "^0.5.6",[m
[32m+[m[32m            "supports-color": "^3.2.3"[m
           }[m
         },[m
         "source-map": {[m
[36m@@ -7181,7 +7191,7 @@[m
           "resolved": "https://registry.npmjs.org/supports-color/-/supports-color-3.2.3.tgz",[m
           "integrity": "sha1-ZawFBLOVQXHYpklGsq48u4pfVPY=",[m
           "requires": {[m
[31m-            "has-flag": "1.0.0"[m
[32m+[m[32m            "has-flag": "^1.0.0"[m
           }[m
         }[m
       }[m
[36m@@ -7191,7 +7201,7 @@[m
       "resolved": "https://registry.npmjs.org/postcss-modules-extract-imports/-/postcss-modules-extract-imports-1.1.0.tgz",[m
       "integrity": "sha1-thTJcgvmgW6u41+zpfqh26agXds=",[m
       "requires": {[m
[31m-        "postcss": "6.0.15"[m
[32m+[m[32m        "postcss": "^6.0.1"[m
       }[m
     },[m
     "postcss-modules-local-by-default": {[m
[36m@@ -7199,8 +7209,8 @@[m
       "resolved": "https://registry.npmjs.org/postcss-modules-local-by-default/-/postcss-modules-local-by-default-1.2.0.tgz",[m
       "integrity": "sha1-99gMOYxaOT+nlkRmvRlQCn1hwGk=",[m
       "requires": {[m
[31m-        "css-selector-tokenizer": "0.7.0",[m
[31m-        "postcss": "6.0.15"[m
[32m+[m[32m        "css-selector-tokenizer": "^0.7.0",[m
[32m+[m[32m        "postcss": "^6.0.1"[m
       }[m
     },[m
     "postcss-modules-scope": {[m
[36m@@ -7208,8 +7218,8 @@[m
       "resolved": "https://registry.npmjs.org/postcss-modules-scope/-/postcss-modules-scope-1.1.0.tgz",[m
       "integrity": "sha1-1upkmUx5+XtipytCb75gVqGUu5A=",[m
       "requires": {[m
[31m-        "css-selector-tokenizer": "0.7.0",[m
[31m-        "postcss": "6.0.15"[m
[32m+[m[32m        "css-selector-tokenizer": "^0.7.0",[m
[32m+[m[32m        "postcss": "^6.0.1"[m
       }[m
     },[m
     "postcss-modules-values": {[m
[36m@@ -7217,8 +7227,8 @@[m
       "resolved": "https://registry.npmjs.org/postcss-modules-values/-/postcss-modules-values-1.3.0.tgz",[m
       "integrity": "sha1-7P+p1+GSUYOJ9CrQ6D9yrsRW6iA=",[m
       "requires": {[m
[31m-        "icss-replace-symbols": "1.1.0",[m
[31m-        "postcss": "6.0.15"[m
[32m+[m[32m        "icss-replace-symbols": "^1.1.0",[m
[32m+[m[32m        "postcss": "^6.0.1"[m
       }[m
     },[m
     "postcss-normalize-charset": {[m
[36m@@ -7226,7 +7236,7 @@[m
       "resolved": "https://registry.npmjs.org/postcss-normalize-charset/-/postcss-normalize-charset-1.1.1.tgz",[m
       "integrity": "sha1-757nEhLX/nWceO0WL2HtYrXLk/E=",[m
       "requires": {[m
[31m-        "postcss": "5.2.18"[m
[32m+[m[32m        "postcss": "^5.0.5"[m
       },[m
       "dependencies": {[m
         "has-flag": {[m
[36m@@ -7239,10 +7249,10 @@[m
           "resolved": "https://registry.npmjs.org/postcss/-/postcss-5.2.18.tgz",[m
           "integrity": "sha512-zrUjRRe1bpXKsX1qAJNJjqZViErVuyEkMTRrwu4ud4sbTtIBRmtaYDrHmcGgmrbsW3MHfmtIf+vJumgQn+PrXg==",[m
           "requires": {[m
[31m-            "chalk": "1.1.3",[m
[31m-            "js-base64": "2.4.0",[m
[31m-            "source-map": "0.5.7",[m
[31m-            "supports-color": "3.2.3"[m
[32m+[m[32m            "chalk": "^1.1.3",[m
[32m+[m[32m            "js-base64": "^2.1.9",[m
[32m+[m[32m            "source-map": "^0.5.6",[m
[32m+[m[32m            "supports-color": "^3.2.3"[m
           }[m
         },[m
         "source-map": {[m
[36m@@ -7255,7 +7265,7 @@[m
           "resolved": "https://registry.npmjs.org/supports-color/-/supports-color-3.2.3.tgz",[m
           "integrity": "sha1-ZawFBLOVQXHYpklGsq48u4pfVPY=",[m
           "requires": {[m
[31m-            "has-flag": "1.0.0"[m
[32m+[m[32m            "has-flag": "^1.0.0"[m
           }[m
         }[m
       }[m
[36m@@ -7265,10 +7275,10 @@[m
       "resolved": "https://registry.npmjs.org/postcss-normalize-url/-/postcss-normalize-url-3.0.8.tgz",[m
       "integrity": "sha1-EI90s/L82viRov+j6kWSJ5/HgiI=",[m
       "requires": {[m
[31m-        "is-absolute-url": "2.1.0",[m
[31m-        "normalize-url": "1.9.1",[m
[31m-        "postcss": "5.2.18",[m
[31m-        "postcss-value-parser": "3.3.0"[m
[32m+[m[32m        "is-absolute-url": "^2.0.0",[m
[32m+[m[32m        "normalize-url": "^1.4.0",[m
[32m+[m[32m        "postcss": "^5.0.14",[m
[32m+[m[32m        "postcss-value-parser": "^3.2.3"[m
       },[m
       "dependencies": {[m
         "has-flag": {[m
[36m@@ -7281,10 +7291,10 @@[m
           "resolved": "https://registry.npmjs.org/postcss/-/postcss-5.2.18.tgz",[m
           "integrity": "sha512-zrUjRRe1bpXKsX1qAJNJjqZViErVuyEkMTRrwu4ud4sbTtIBRmtaYDrHmcGgmrbsW3MHfmtIf+vJumgQn+PrXg==",[m
           "requires": {[m
[31m-            "chalk": "1.1.3",[m
[31m-            "js-base64": "2.4.0",[m
[31m-            "source-map": "0.5.7",[m
[31m-            "supports-color": "3.2.3"[m
[32m+[m[32m            "chalk": "^1.1.3",[m
[32m+[m[32m            "js-base64": "^2.1.9",[m
[32m+[m[32m            "source-map": "^0.5.6",[m
[32m+[m[32m            "supports-color": "^3.2.3"[m
           }[m
         },[m
         "source-map": {[m
[36m@@ -7297,7 +7307,7 @@[m
           "resolved": "https://registry.npmjs.org/supports-color/-/supports-color-3.2.3.tgz",[m
           "integrity": "sha1-ZawFBLOVQXHYpklGsq48u4pfVPY=",[m
           "requires": {[m
[31m-            "has-flag": "1.0.0"[m
[32m+[m[32m            "has-flag": "^1.0.0"[m
           }[m
         }[m
       }[m
[36m@@ -7307,8 +7317,8 @@[m
       "resolved": "https://registry.npmjs.org/postcss-ordered-values/-/postcss-ordered-values-2.2.3.tgz",[m
       "integrity": "sha1-7sbCpntsQSqNsgQud/6NpD+VwR0=",[m
       "requires": {[m
[31m-        "postcss": "5.2.18",[m
[31m-        "postcss-value-parser": "3.3.0"[m
[32m+[m[32m        "postcss": "^5.0.4",[m
[32m+[m[32m        "postcss-value-parser": "^3.0.1"[m
       },[m
       "dependencies": {[m
         "has-flag": {[m
[36m@@ -7321,10 +7331,10 @@[m
           "resolved": "https://registry.npmjs.org/postcss/-/postcss-5.2.18.tgz",[m
           "integrity": "sha512-zrUjRRe1bpXKsX1qAJNJjqZViErVuyEkMTRrwu4ud4sbTtIBRmtaYDrHmcGgmrbsW3MHfmtIf+vJumgQn+PrXg==",[m
           "requires": {[m
[31m-            "chalk": "1.1.3",[m
[31m-            "js-base64": "2.4.0",[m
[31m-            "source-map": "0.5.7",[m
[31m-            "supports-color": "3.2.3"[m
[32m+[m[32m            "chalk": "^1.1.3",[m
[32m+[m[32m            "js-base64": "^2.1.9",[m
[32m+[m[32m            "source-map": "^0.5.6",[m
[32m+[m[32m            "supports-color": "^3.2.3"[m
           }[m
         },[m
         "source-map": {[m
[36m@@ -7337,7 +7347,7 @@[m
           "resolved": "https://registry.npmjs.org/supports-color/-/supports-color-3.2.3.tgz",[m
           "integrity": "sha1-ZawFBLOVQXHYpklGsq48u4pfVPY=",[m
           "requires": {[m
[31m-            "has-flag": "1.0.0"[m
[32m+[m[32m            "has-flag": "^1.0.0"[m
           }[m
         }[m
       }[m
[36m@@ -7347,8 +7357,8 @@[m
       "resolved": "https://registry.npmjs.org/postcss-reduce-idents/-/postcss-reduce-idents-2.4.0.tgz",[m
       "integrity": "sha1-wsbSDMlYKE9qv75j92Cb9AkFmtM=",[m
       "requires": {[m
[31m-        "postcss": "5.2.18",[m
[31m-        "postcss-value-parser": "3.3.0"[m
[32m+[m[32m        "postcss": "^5.0.4",[m
[32m+[m[32m        "postcss-value-parser": "^3.0.2"[m
       },[m
       "dependencies": {[m
         "has-flag": {[m
[36m@@ -7361,10 +7371,10 @@[m
           "resolved": "https://registry.npmjs.org/postcss/-/postcss-5.2.18.tgz",[m
           "integrity": "sha512-zrUjRRe1bpXKsX1qAJNJjqZViErVuyEkMTRrwu4ud4sbTtIBRmtaYDrHmcGgmrbsW3MHfmtIf+vJumgQn+PrXg==",[m
           "requires": {[m
[31m-            "chalk": "1.1.3",[m
[31m-            "js-base64": "2.4.0",[m
[31m-            "source-map": "0.5.7",[m
[31m-            "supports-color": "3.2.3"[m
[32m+[m[32m            "chalk": "^1.1.3",[m
[32m+[m[32m            "js-base64": "^2.1.9",[m
[32m+[m[32m            "source-map": "^0.5.6",[m
[32m+[m[32m            "supports-color": "^3.2.3"[m
           }[m
         },[m
         "source-map": {[m
[36m@@ -7377,7 +7387,7 @@[m
           "resolved": "https://registry.npmjs.org/supports-color/-/supports-color-3.2.3.tgz",[m
           "integrity": "sha1-ZawFBLOVQXHYpklGsq48u4pfVPY=",[m
           "requires": {[m
[31m-            "has-flag": "1.0.0"[m
[32m+[m[32m            "has-flag": "^1.0.0"[m
           }[m
         }[m
       }[m
[36m@@ -7387,7 +7397,7 @@[m
       "resolved": "https://registry.npmjs.org/postcss-reduce-initial/-/postcss-reduce-initial-1.0.1.tgz",[m
       "integrity": "sha1-aPgGlfBF0IJjqHmtJA343WT2ROo=",[m
       "requires": {[m
[31m-        "postcss": "5.2.18"[m
[32m+[m[32m        "postcss": "^5.0.4"[m
       },[m
       "dependencies": {[m
         "has-flag": {[m
[36m@@ -7400,10 +7410,10 @@[m
           "resolved": "https://registry.npmjs.org/postcss/-/postcss-5.2.18.tgz",[m
           "integrity": "sha512-zrUjRRe1bpXKsX1qAJNJjqZViErVuyEkMTRrwu4ud4sbTtIBRmtaYDrHmcGgmrbsW3MHfmtIf+vJumgQn+PrXg==",[m
           "requires": {[m
[31m-            "chalk": "1.1.3",[m
[31m-            "js-base64": "2.4.0",[m
[31m-            "source-map": "0.5.7",[m
[31m-            "supports-color": "3.2.3"[m
[32m+[m[32m            "chalk": "^1.1.3",[m
[32m+[m[32m            "js-base64": "^2.1.9",[m
[32m+[m[32m            "source-map": "^0.5.6",[m
[32m+[m[32m            "supports-color": "^3.2.3"[m
           }[m
         },[m
         "source-map": {[m
[36m@@ -7416,7 +7426,7 @@[m
           "resolved": "https://registry.npmjs.org/supports-color/-/supports-color-3.2.3.tgz",[m
           "integrity": "sha1-ZawFBLOVQXHYpklGsq48u4pfVPY=",[m
           "requires": {[m
[31m-            "has-flag": "1.0.0"[m
[32m+[m[32m            "has-flag": "^1.0.0"[m
           }[m
         }[m
       }[m
[36m@@ -7426,9 +7436,9 @@[m
       "resolved": "https://registry.npmjs.org/postcss-reduce-transforms/-/postcss-reduce-transforms-1.0.4.tgz",[m
       "integrity": "sha1-/3b02CEkN7McKYpC0uFEQCV3GuE=",[m
       "requires": {[m
[31m-        "has": "1.0.1",[m
[31m-        "postcss": "5.2.18",[m
[31m-        "postcss-value-parser": "3.3.0"[m
[32m+[m[32m        "has": "^1.0.1",[m
[32m+[m[32m        "postcss": "^5.0.8",[m
[32m+[m[32m        "postcss-value-parser": "^3.0.1"[m
       },[m
       "dependencies": {[m
         "has-flag": {[m
[36m@@ -7441,10 +7451,10 @@[m
           "resolved": "https://registry.npmjs.org/postcss/-/postcss-5.2.18.tgz",[m
           "integrity": "sha512-zrUjRRe1bpXKsX1qAJNJjqZViErVuyEkMTRrwu4ud4sbTtIBRmtaYDrHmcGgmrbsW3MHfmtIf+vJumgQn+PrXg==",[m
           "requires": {[m
[31m-            "chalk": "1.1.3",[m
[31m-            "js-base64": "2.4.0",[m
[31m-            "source-map": "0.5.7",[m
[31m-            "supports-color": "3.2.3"[m
[32m+[m[32m            "chalk": "^1.1.3",[m
[32m+[m[32m            "js-base64": "^2.1.9",[m
[32m+[m[32m            "source-map": "^0.5.6",[m
[32m+[m[32m            "supports-color": "^3.2.3"[m
           }[m
         },[m
         "source-map": {[m
[36m@@ -7457,7 +7467,7 @@[m
           "resolved": "https://registry.npmjs.org/supports-color/-/supports-color-3.2.3.tgz",[m
           "integrity": "sha1-ZawFBLOVQXHYpklGsq48u4pfVPY=",[m
           "requires": {[m
[31m-            "has-flag": "1.0.0"[m
[32m+[m[32m            "has-flag": "^1.0.0"[m
           }[m
         }[m
       }[m
[36m@@ -7467,9 +7477,9 @@[m
       "resolved": "https://registry.npmjs.org/postcss-selector-parser/-/postcss-selector-parser-2.2.3.tgz",[m
       "integrity": "sha1-+UN3iGBsPJrO4W/+jYsWKX8nu5A=",[m
       "requires": {[m
[31m-        "flatten": "1.0.2",[m
[31m-        "indexes-of": "1.0.1",[m
[31m-        "uniq": "1.0.1"[m
[32m+[m[32m        "flatten": "^1.0.2",[m
[32m+[m[32m        "indexes-of": "^1.0.1",[m
[32m+[m[32m        "uniq": "^1.0.1"[m
       }[m
     },[m
     "postcss-svgo": {[m
[36m@@ -7477,10 +7487,10 @@[m
       "resolved": "https://registry.npmjs.org/postcss-svgo/-/postcss-svgo-2.1.6.tgz",[m
       "integrity": "sha1-tt8YqmE7Zm4TPwittSGcJoSsEI0=",[m
       "requires": {[m
[31m-        "is-svg": "2.1.0",[m
[31m-        "postcss": "5.2.18",[m
[31m-        "postcss-value-parser": "3.3.0",[m
[31m-        "svgo": "0.7.2"[m
[32m+[m[32m        "is-svg": "^2.0.0",[m
[32m+[m[32m        "postcss": "^5.0.14",[m
[32m+[m[32m        "postcss-value-parser": "^3.2.3",[m
[32m+[m[32m        "svgo": "^0.7.0"[m
       },[m
       "dependencies": {[m
         "has-flag": {[m
[36m@@ -7493,10 +7503,10 @@[m
           "resolved": "https://registry.npmjs.org/postcss/-/postcss-5.2.18.tgz",[m
           "integrity": "sha512-zrUjRRe1bpXKsX1qAJNJjqZViErVuyEkMTRrwu4ud4sbTtIBRmtaYDrHmcGgmrbsW3MHfmtIf+vJumgQn+PrXg==",[m
           "requires": {[m
[31m-            "chalk": "1.1.3",[m
[31m-            "js-base64": "2.4.0",[m
[31m-            "source-map": "0.5.7",[m
[31m-            "supports-color": "3.2.3"[m
[32m+[m[32m            "chalk": "^1.1.3",[m
[32m+[m[32m            "js-base64": "^2.1.9",[m
[32m+[m[32m            "source-map": "^0.5.6",[m
[32m+[m[32m            "supports-color": "^3.2.3"[m
           }[m
         },[m
         "source-map": {[m
[36m@@ -7509,7 +7519,7 @@[m
           "resolved": "https://registry.npmjs.org/supports-color/-/supports-color-3.2.3.tgz",[m
           "integrity": "sha1-ZawFBLOVQXHYpklGsq48u4pfVPY=",[m
           "requires": {[m
[31m-            "has-flag": "1.0.0"[m
[32m+[m[32m            "has-flag": "^1.0.0"[m
           }[m
         }[m
       }[m
[36m@@ -7519,9 +7529,9 @@[m
       "resolved": "https://registry.npmjs.org/postcss-unique-selectors/-/postcss-unique-selectors-2.0.2.tgz",[m
       "integrity": "sha1-mB1X0p3csz57Hf4f1DuGSfkzyh0=",[m
       "requires": {[m
[31m-        "alphanum-sort": "1.0.2",[m
[31m-        "postcss": "5.2.18",[m
[31m-        "uniqs": "2.0.0"[m
[32m+[m[32m        "alphanum-sort": "^1.0.1",[m
[32m+[m[32m        "postcss": "^5.0.4",[m
[32m+[m[32m        "uniqs": "^2.0.0"[m
       },[m
       "dependencies": {[m
         "has-flag": {[m
[36m@@ -7534,10 +7544,10 @@[m
           "resolved": "https://registry.npmjs.org/postcss/-/postcss-5.2.18.tgz",[m
           "integrity": "sha512-zrUjRRe1bpXKsX1qAJNJjqZViErVuyEkMTRrwu4ud4sbTtIBRmtaYDrHmcGgmrbsW3MHfmtIf+vJumgQn+PrXg==",[m
           "requires": {[m
[31m-            "chalk": "1.1.3",[m
[31m-            "js-base64": "2.4.0",[m
[31m-            "source-map": "0.5.7",[m
[31m-            "supports-color": "3.2.3"[m
[32m+[m[32m            "chalk": "^1.1.3",[m
[32m+[m[32m            "js-base64": "^2.1.9",[m
[32m+[m[32m            "source-map": "^0.5.6",[m
[32m+[m[32m            "supports-color": "^3.2.3"[m
           }[m
         },[m
         "source-map": {[m
[36m@@ -7550,7 +7560,7 @@[m
           "resolved": "https://registry.npmjs.org/supports-color/-/supports-color-3.2.3.tgz",[m
           "integrity": "sha1-ZawFBLOVQXHYpklGsq48u4pfVPY=",[m
           "requires": {[m
[31m-            "has-flag": "1.0.0"[m
[32m+[m[32m            "has-flag": "^1.0.0"[m
           }[m
         }[m
       }[m
[36m@@ -7565,9 +7575,9 @@[m
       "resolved": "https://registry.npmjs.org/postcss-zindex/-/postcss-zindex-2.2.0.tgz",[m
       "integrity": "sha1-0hCd3AVbka9n/EyzsCWUZjnSryI=",[m
       "requires": {[m
[31m-        "has": "1.0.1",[m
[31m-        "postcss": "5.2.18",[m
[31m-        "uniqs": "2.0.0"[m
[32m+[m[32m        "has": "^1.0.1",[m
[32m+[m[32m        "postcss": "^5.0.4",[m
[32m+[m[32m        "uniqs": "^2.0.0"[m
       },[m
       "dependencies": {[m
         "has-flag": {[m
[36m@@ -7580,10 +7590,10 @@[m
           "resolved": "https://registry.npmjs.org/postcss/-/postcss-5.2.18.tgz",[m
           "integrity": "sha512-zrUjRRe1bpXKsX1qAJNJjqZViErVuyEkMTRrwu4ud4sbTtIBRmtaYDrHmcGgmrbsW3MHfmtIf+vJumgQn+PrXg==",[m
           "requires": {[m
[31m-            "chalk": "1.1.3",[m
[31m-            "js-base64": "2.4.0",[m
[31m-            "source-map": "0.5.7",[m
[31m-            "supports-color": "3.2.3"[m
[32m+[m[32m            "chalk": "^1.1.3",[m
[32m+[m[32m            "js-base64": "^2.1.9",[m
[32m+[m[32m            "source-map": "^0.5.6",[m
[32m+[m[32m            "supports-color": "^3.2.3"[m
           }[m
         },[m
         "source-map": {[m
[36m@@ -7596,7 +7606,7 @@[m
           "resolved": "https://registry.npmjs.org/supports-color/-/supports-color-3.2.3.tgz",[m
           "integrity": "sha1-ZawFBLOVQXHYpklGsq48u4pfVPY=",[m
           "requires": {[m
[31m-            "has-flag": "1.0.0"[m
[32m+[m[32m            "has-flag": "^1.0.0"[m
           }[m
         }[m
       }[m
[36m@@ -7626,8 +7636,8 @@[m
       "resolved": "https://registry.npmjs.org/pretty-error/-/pretty-error-2.1.1.tgz",[m
       "integrity": "sha1-X0+HyPkeWuPzuoerTPXgOxoX8aM=",[m
       "requires": {[m
[31m-        "renderkid": "2.0.1",[m
[31m-        "utila": "0.4.0"[m
[32m+[m[32m        "renderkid": "^2.0.1",[m
[32m+[m[32m        "utila": "~0.4"[m
       }[m
     },[m
     "pretty-format": {[m
[36m@@ -7635,8 +7645,8 @@[m
       "resolved": "https://registry.npmjs.org/pretty-format/-/pretty-format-20.0.3.tgz",[m
       "integrity": "sha1-Ag41ClYKH+GpjcO+tsz/s4beixQ=",[m
       "requires": {[m
[31m-        "ansi-regex": "2.1.1",[m
[31m-        "ansi-styles": "3.2.0"[m
[32m+[m[32m        "ansi-regex": "^2.1.1",[m
[32m+[m[32m        "ansi-styles": "^3.0.0"[m
       }[m
     },[m
     "private": {[m
[36m@@ -7664,9 +7674,9 @@[m
       "resolved": "https://registry.npmjs.org/prop-types/-/prop-types-15.7.2.tgz",[m
       "integrity": "sha512-8QQikdH7//R2vurIJSutZ1smHYTcLpRWEOlHnzcWHmBYrOGUysKwSsrC89BCiFj3CbrfJ/nXFdJepOVrY1GCHQ==",[m
       "requires": {[m
[31m-        "loose-envify": "1.4.0",[m
[31m-        "object-assign": "4.1.1",[m
[31m-        "react-is": "16.8.3"[m
[32m+[m[32m        "loose-envify": "^1.4.0",[m
[32m+[m[32m        "object-assign": "^4.1.1",[m
[32m+[m[32m        "react-is": "^16.8.1"[m
       },[m
       "dependencies": {[m
         "loose-envify": {[m
[36m@@ -7674,7 +7684,7 @@[m
           "resolved": "https://registry.npmjs.org/loose-envify/-/loose-envify-1.4.0.tgz",[m
           "integrity": "sha512-lyuxPGr/Wfhrlem2CL/UcnUc1zcqKAImBDzukY7Y5F/yQiNdko6+fRLevlw1HgMySw7f611UIY408EtxRSoK3Q==",[m
           "requires": {[m
[31m-            "js-tokens": "3.0.2"[m
[32m+[m[32m            "js-tokens": "^3.0.0 || ^4.0.0"[m
           }[m
         }[m
       }[m
[36m@@ -7684,8 +7694,8 @@[m
       "resolved": "https://registry.npmjs.org/prop-types-extra/-/prop-types-extra-1.1.0.tgz",[m
       "integrity": "sha512-QFyuDxvMipmIVKD2TwxLVPzMnO4e5oOf1vr3tJIomL8E7d0lr6phTHd5nkPhFIzTD1idBLLEPeylL9g+rrTzRg==",[m
       "requires": {[m
[31m-        "react-is": "16.8.3",[m
[31m-        "warning": "3.0.0"[m
[32m+[m[32m        "react-is": "^16.3.2",[m
[32m+[m[32m        "warning": "^3.0.0"[m
       }[m
     },[m
     "proxy-addr": {[m
[36m@@ -7693,7 +7703,7 @@[m
       "resolved": "https://registry.npmjs.org/proxy-addr/-/proxy-addr-2.0.2.tgz",[m
       "integrity": "sha1-ZXFQT0e7mI7IGAJT+F3X4UlSvew=",[m
       "requires": {[m
[31m-        "forwarded": "0.1.2",[m
[32m+[m[32m        "forwarded": "~0.1.2",[m
         "ipaddr.js": "1.5.2"[m
       }[m
     },[m
[36m@@ -7712,11 +7722,11 @@[m
       "resolved": "https://registry.npmjs.org/public-encrypt/-/public-encrypt-4.0.0.tgz",[m
       "integrity": "sha1-OfaZ86RlYN1eusvKaTyvfGXBjMY=",[m
       "requires": {[m
[31m-        "bn.js": "4.11.8",[m
[31m-        "browserify-rsa": "4.0.1",[m
[31m-        "create-hash": "1.1.3",[m
[31m-        "parse-asn1": "5.1.0",[m
[31m-        "randombytes": "2.0.5"[m
[32m+[m[32m        "bn.js": "^4.1.0",[m
[32m+[m[32m        "browserify-rsa": "^4.0.0",[m
[32m+[m[32m        "create-hash": "^1.1.0",[m
[32m+[m[32m        "parse-asn1": "^5.0.0",[m
[32m+[m[32m        "randombytes": "^2.0.1"[m
       }[m
     },[m
     "punycode": {[m
[36m@@ -7739,8 +7749,8 @@[m
       "resolved": "https://registry.npmjs.org/query-string/-/query-string-4.3.4.tgz",[m
       "integrity": "sha1-u7aTucqRXCMlFbIosaArYJBD2+s=",[m
       "requires": {[m
[31m-        "object-assign": "4.1.1",[m
[31m-        "strict-uri-encode": "1.1.0"[m
[32m+[m[32m        "object-assign": "^4.1.0",[m
[32m+[m[32m        "strict-uri-encode": "^1.0.0"[m
       }[m
     },[m
     "querystring": {[m
[36m@@ -7763,7 +7773,7 @@[m
       "resolved": "https://registry.npmjs.org/raf/-/raf-3.4.0.tgz",[m
       "integrity": "sha512-pDP/NMRAXoTfrhCfyfSEwJAKLaxBU9eApMeBPB1TkDouZmvPerIClV8lTAd+uF8ZiTaVl69e1FCxQrAd/VTjGw==",[m
       "requires": {[m
[31m-        "performance-now": "2.1.0"[m
[32m+[m[32m        "performance-now": "^2.1.0"[m
       }[m
     },[m
     "randomatic": {[m
[36m@@ -7771,8 +7781,8 @@[m
       "resolved": "https://registry.npmjs.org/randomatic/-/randomatic-1.1.7.tgz",[m
       "integrity": "sha512-D5JUjPyJbaJDkuAazpVnSfVkLlpeO3wDlPROTMLGKG1zMFNFRgrciKo1ltz/AzNTkqE0HzDx655QOL51N06how==",[m
       "requires": {[m
[31m-        "is-number": "3.0.0",[m
[31m-        "kind-of": "4.0.0"[m
[32m+[m[32m        "is-number": "^3.0.0",[m
[32m+[m[32m        "kind-of": "^4.0.0"[m
       },[m
       "dependencies": {[m
         "is-number": {[m
[36m@@ -7780,7 +7790,7 @@[m
           "resolved": "https://registry.npmjs.org/is-number/-/is-number-3.0.0.tgz",[m
           "integrity": "sha1-JP1iAaR4LPUFYcgQJ2r8fRLXEZU=",[m
           "requires": {[m
[31m-            "kind-of": "3.2.2"[m
[32m+[m[32m            "kind-of": "^3.0.2"[m
           },[m
           "dependencies": {[m
             "kind-of": {[m
[36m@@ -7788,7 +7798,7 @@[m
               "resolved": "https://registry.npmjs.org/kind-of/-/kind-of-3.2.2.tgz",[m
               "integrity": "sha1-MeohpzS6ubuw8yRm2JOupR5KPGQ=",[m
               "requires": {[m
[31m-                "is-buffer": "1.1.6"[m
[32m+[m[32m                "is-buffer": "^1.1.5"[m
               }[m
             }[m
           }[m
[36m@@ -7798,7 +7808,7 @@[m
           "resolved": "https://registry.npmjs.org/kind-of/-/kind-of-4.0.0.tgz",[m
           "integrity": "sha1-IIE989cSkosgc3hpGkUGb65y3Vc=",[m
           "requires": {[m
[31m-            "is-buffer": "1.1.6"[m
[32m+[m[32m            "is-buffer": "^1.1.5"[m
           }[m
         }[m
       }[m
[36m@@ -7808,7 +7818,7 @@[m
       "resolved": "https://registry.npmjs.org/randombytes/-/randombytes-2.0.5.tgz",[m
       "integrity": "sha512-8T7Zn1AhMsQ/HI1SjcCfT/t4ii3eAqco3yOcSzS4mozsOz69lHLsoMXmF9nZgnFanYscnSlUSgs8uZyKzpE6kg==",[m
       "requires": {[m
[31m-        "safe-buffer": "5.1.1"[m
[32m+[m[32m        "safe-buffer": "^5.1.0"[m
       }[m
     },[m
     "randomfill": {[m
[36m@@ -7816,8 +7826,8 @@[m
       "resolved": "https://registry.npmjs.org/randomfill/-/randomfill-1.0.3.tgz",[m
       "integrity": "sha512-YL6GrhrWoic0Eq8rXVbMptH7dAxCs0J+mh5Y0euNekPPYaxEmdVGim6GdoxoRzKW2yJoU8tueifS7mYxvcFDEQ==",[m
       "requires": {[m
[31m-        "randombytes": "2.0.5",[m
[31m-        "safe-buffer": "5.1.1"[m
[32m+[m[32m        "randombytes": "^2.0.5",[m
[32m+[m[32m        "safe-buffer": "^5.1.0"[m
       }[m
     },[m
     "range-parser": {[m
[36m@@ -7841,10 +7851,10 @@[m
       "resolved": "https://registry.npmjs.org/rc/-/rc-1.2.2.tgz",[m
       "integrity": "sha1-2M6ctX6NZNnHut2YdsfDTL48cHc=",[m
       "requires": {[m
[31m-        "deep-extend": "0.4.2",[m
[31m-        "ini": "1.3.5",[m
[31m-        "minimist": "1.2.0",[m
[31m-        "strip-json-comments": "2.0.1"[m
[32m+[m[32m        "deep-extend": "~0.4.0",[m
[32m+[m[32m        "ini": "~1.3.0",[m
[32m+[m[32m        "minimist": "^1.2.0",[m
[32m+[m[32m        "strip-json-comments": "~2.0.1"[m
       },[m
       "dependencies": {[m
         "minimist": {[m
[36m@@ -7859,10 +7869,10 @@[m
       "resolved": "https://registry.npmjs.org/react/-/react-16.8.3.tgz",[m
       "integrity": "sha512-3UoSIsEq8yTJuSu0luO1QQWYbgGEILm+eJl2QN/VLDi7hL+EN18M3q3oVZwmVzzBJ3DkM7RMdRwBmZZ+b4IzSA==",[m
       "requires": {[m
[31m-        "loose-envify": "1.3.1",[m
[31m-        "object-assign": "4.1.1",[m
[31m-        "prop-types": "15.7.2",[m
[31m-        "scheduler": "0.13.3"[m
[32m+[m[32m        "loose-envify": "^1.1.0",[m
[32m+[m[32m        "object-assign": "^4.1.1",[m
[32m+[m[32m        "prop-types": "^15.6.2",[m
[32m+[m[32m        "scheduler": "^0.13.3"[m
       },[m
       "dependencies": {[m
         "prop-types": {[m
[36m@@ -7870,9 +7880,9 @@[m
           "resolved": "https://registry.npmjs.org/prop-types/-/prop-types-15.7.2.tgz",[m
           "integrity": "sha512-8QQikdH7//R2vurIJSutZ1smHYTcLpRWEOlHnzcWHmBYrOGUysKwSsrC89BCiFj3CbrfJ/nXFdJepOVrY1GCHQ==",[m
           "requires": {[m
[31m-            "loose-envify": "1.4.0",[m
[31m-            "object-assign": "4.1.1",[m
[31m-            "react-is": "16.8.3"[m
[32m+[m[32m            "loose-envify": "^1.4.0",[m
[32m+[m[32m            "object-assign": "^4.1.1",[m
[32m+[m[32m            "react-is": "^16.8.1"[m
           },[m
           "dependencies": {[m
             "loose-envify": {[m
[36m@@ -7880,7 +7890,7 @@[m
               "resolved": "https://registry.npmjs.org/loose-envify/-/loose-envify-1.4.0.tgz",[m
               "integrity": "sha512-lyuxPGr/Wfhrlem2CL/UcnUc1zcqKAImBDzukY7Y5F/yQiNdko6+fRLevlw1HgMySw7f611UIY408EtxRSoK3Q==",[m
               "requires": {[m
[31m-                "js-tokens": "3.0.2"[m
[32m+[m[32m                "js-tokens": "^3.0.0 || ^4.0.0"[m
               }[m
             }[m
           }[m
[36m@@ -7897,16 +7907,33 @@[m
       "resolved": "https://registry.npmjs.org/react-bootstrap/-/react-bootstrap-0.31.5.tgz",[m
       "integrity": "sha512-xgDihgX4QvYHmHzL87faDBMDnGfYyqcrqV0TEbWY+JizePOG1vfb8M3xJN+6MJ3kUYqDtQSZ7v/Q6Y5YDrkMdA==",[m
       "requires": {[m
[31m-        "babel-runtime": "6.26.0",[m
[31m-        "classnames": "2.2.6",[m
[31m-        "dom-helpers": "3.4.0",[m
[31m-        "invariant": "2.2.2",[m
[31m-        "keycode": "2.2.0",[m
[31m-        "prop-types": "15.7.2",[m
[31m-        "prop-types-extra": "1.1.0",[m
[31m-        "react-overlays": "0.7.4",[m
[31m-        "uncontrollable": "4.1.0",[m
[31m-        "warning": "3.0.0"[m
[32m+[m[32m        "babel-runtime": "^6.11.6",[m
[32m+[m[32m        "classnames": "^2.2.5",[m
[32m+[m[32m        "dom-helpers": "^3.2.0",[m
[32m+[m[32m        "invariant": "^2.2.1",[m
[32m+[m[32m        "keycode": "^2.1.2",[m
[32m+[m[32m        "prop-types": "^15.5.10",[m
[32m+[m[32m        "prop-types-extra": "^1.0.1",[m
[32m+[m[32m        "react-overlays": "^0.7.4",[m
[32m+[m[32m        "uncontrollable": "^4.1.0",[m
[32m+[m[32m        "warning": "^3.0.0"[m
[32m+[m[32m      }[m
[32m+[m[32m    },[m
[32m+[m[32m    "react-cropper": {[m
[32m+[m[32m      "version": "1.2.0",[m
[32m+[m[32m      "resolved": "https://registry.npmjs.org/react-cropper/-/react-cropper-1.2.0.tgz",[m
[32m+[m[32m      "integrity": "sha512-Ubg7tb6eCfbOSpXx7G07uRD/GTy2H9gF1K1Dz7/Jo8kHux1uMiy8uy9DSuU6UxEDXGsedNDx1TibbjC23yPpTg==",[m
[32m+[m[32m      "requires": {[m
[32m+[m[32m        "babel-core": "7.0.0-bridge.0",[m
[32m+[m[32m        "cropperjs": "v1.0.0-rc.3",[m
[32m+[m[32m        "prop-types": "^15.5.8"[m
[32m+[m[32m      },[m
[32m+[m[32m      "dependencies": {[m
[32m+[m[32m        "babel-core": {[m
[32m+[m[32m          "version": "7.0.0-bridge.0",[m
[32m+[m[32m          "resolved": "https://registry.npmjs.org/babel-core/-/babel-core-7.0.0-bridge.0.tgz",[m
[32m+[m[32m          "integrity": "sha512-poPX9mZH/5CSanm50Q+1toVci6pv5KSRv/5TWCwtzQS5XEwn40BcCrgIeMFWP9CKKIniKXNxoIOnOq4VVlGXhg=="[m
[32m+[m[32m        }[m
       }[m
     },[m
     "react-dev-utils": {[m
[36m@@ -7926,7 +7953,7 @@[m
         "inquirer": "3.3.0",[m
         "is-root": "1.0.0",[m
         "opn": "5.1.0",[m
[31m-        "react-error-overlay": "3.0.0",[m
[32m+[m[32m        "react-error-overlay": "^3.0.0",[m
         "recursive-readdir": "2.2.1",[m
         "shell-quote": "1.6.1",[m
         "sockjs-client": "1.1.4",[m
[36m@@ -7939,10 +7966,10 @@[m
       "resolved": "https://registry.npmjs.org/react-dom/-/react-dom-16.8.3.tgz",[m
       "integrity": "sha512-ttMem9yJL4/lpItZAQ2NTFAbV7frotHk5DZEHXUOws2rMmrsvh1Na7ThGT0dTzUIl6pqTOi5tYREfL8AEna3lA==",[m
       "requires": {[m
[31m-        "loose-envify": "1.3.1",[m
[31m-        "object-assign": "4.1.1",[m
[31m-        "prop-types": "15.7.2",[m
[31m-        "scheduler": "0.13.3"[m
[32m+[m[32m        "loose-envify": "^1.1.0",[m
[32m+[m[32m        "object-assign": "^4.1.1",[m
[32m+[m[32m        "prop-types": "^15.6.2",[m
[32m+[m[32m        "scheduler": "^0.13.3"[m
       },[m
       "dependencies": {[m
         "prop-types": {[m
[36m@@ -7950,9 +7977,9 @@[m
           "resolved": "https://registry.npmjs.org/prop-types/-/prop-types-15.7.2.tgz",[m
           "integrity": "sha512-8QQikdH7//R2vurIJSutZ1smHYTcLpRWEOlHnzcWHmBYrOGUysKwSsrC89BCiFj3CbrfJ/nXFdJepOVrY1GCHQ==",[m
           "requires": {[m
[31m-            "loose-envify": "1.4.0",[m
[31m-            "object-assign": "4.1.1",[m
[31m-            "react-is": "16.8.3"[m
[32m+[m[32m            "loose-envify": "^1.4.0",[m
[32m+[m[32m            "object-assign": "^4.1.1",[m
[32m+[m[32m            "react-is": "^16.8.1"[m
           },[m
           "dependencies": {[m
             "loose-envify": {[m
[36m@@ -7960,7 +7987,7 @@[m
               "resolved": "https://registry.npmjs.org/loose-envify/-/loose-envify-1.4.0.tgz",[m
               "integrity": "sha512-lyuxPGr/Wfhrlem2CL/UcnUc1zcqKAImBDzukY7Y5F/yQiNdko6+fRLevlw1HgMySw7f611UIY408EtxRSoK3Q==",[m
               "requires": {[m
[31m-                "js-tokens": "3.0.2"[m
[32m+[m[32m                "js-tokens": "^3.0.0 || ^4.0.0"[m
               }[m
             }[m
           }[m
[36m@@ -7983,12 +8010,12 @@[m
       "integrity": "sha1-MEGNTCuVKSQL/CRr/Y2AWIaNOpQ="[m
     },[m
     "react-grid-gallery": {[m
[31m-      "version": "0.5.3",[m
[31m-      "resolved": "https://registry.npmjs.org/react-grid-gallery/-/react-grid-gallery-0.5.3.tgz",[m
[31m-      "integrity": "sha512-71P6rRGQrbU0StSXRRTJ3KVjgpglLRNEQ/tRqRgi0dKnvDaVdz2PQMk//UTolw/E0Mu2Ri6hLv9/rsZpJ7l3fA==",[m
[32m+[m[32m      "version": "0.5.4",[m
[32m+[m[32m      "resolved": "https://registry.npmjs.org/react-grid-gallery/-/react-grid-gallery-0.5.4.tgz",[m
[32m+[m[32m      "integrity": "sha512-mEuDGCScA+P3ShSJExyo9bxCHtG04Mpm/o9ctzijhdqN8WLP9q1bIDQz+o0mL7ktH/KUvSAF2opsKfJ44C07rA==",[m
       "requires": {[m
[31m-        "prop-types": "15.7.2",[m
[31m-        "react-images": "0.5.19"[m
[32m+[m[32m        "prop-types": "^15.5.8",[m
[32m+[m[32m        "react-images": "^0.5.16"[m
       }[m
     },[m
     "react-image-gallery": {[m
[36m@@ -7996,11 +8023,11 @@[m
       "resolved": "https://registry.npmjs.org/react-image-gallery/-/react-image-gallery-0.8.14.tgz",[m
       "integrity": "sha512-sQllvTwKzEaoo8ii9NSjWtxHE2kic6gArXYH7YGwpY4WIM6IBLF9clVH4XC+Wh/bp7I4lCGYYH7xkcRALQy+RQ==",[m
       "requires": {[m
[31m-        "lodash.debounce": "4.0.8",[m
[31m-        "lodash.throttle": "4.1.1",[m
[31m-        "prop-types": "15.7.2",[m
[31m-        "react-swipeable": "4.3.2",[m
[31m-        "resize-observer-polyfill": "1.5.1"[m
[32m+[m[32m        "lodash.debounce": "^4.0.8",[m
[32m+[m[32m        "lodash.throttle": "^4.1.1",[m
[32m+[m[32m        "prop-types": "^15.5.8",[m
[32m+[m[32m        "react-swipeable": "^4.3.2",[m
[32m+[m[32m        "resize-observer-polyfill": "^1.5.0"[m
       }[m
     },[m
     "react-images": {[m
[36m@@ -8008,10 +8035,10 @@[m
       "resolved": "https://registry.npmjs.org/react-images/-/react-images-0.5.19.tgz",[m
       "integrity": "sha512-B3d4W1uFJj+m17K8S65iAyEJShKGBjPk7n7N1YsPiAydEm8mIq9a6CoeQFMY1d7N2QMs6FBCjT9vELyc5jP5JA==",[m
       "requires": {[m
[31m-        "aphrodite": "0.5.0",[m
[31m-        "prop-types": "15.7.2",[m
[31m-        "react-scrolllock": "2.0.7",[m
[31m-        "react-transition-group": "2.5.3"[m
[32m+[m[32m        "aphrodite": "^0.5.0",[m
[32m+[m[32m        "prop-types": "^15.6.0",[m
[32m+[m[32m        "react-scrolllock": "^2.0.1",[m
[32m+[m[32m        "react-transition-group": "2"[m
       }[m
     },[m
     "react-images-upload": {[m
[36m@@ -8019,8 +8046,8 @@[m
       "resolved": "https://registry.npmjs.org/react-images-upload/-/react-images-upload-1.2.6.tgz",[m
       "integrity": "sha512-vw3cAj3LgN9ebhnfRkJ9bHK8d51b73Su8mepZv2HxVByskznsuox7PqxrUrTW14kZirbe0PXBIIMbTzOWJdPtw==",[m
       "requires": {[m
[31m-        "react": "16.8.3",[m
[31m-        "react-flip-move": "3.0.3"[m
[32m+[m[32m        "react": "^16.2.0",[m
[32m+[m[32m        "react-flip-move": "^3.0.1"[m
       }[m
     },[m
     "react-is": {[m
[36m@@ -8038,11 +8065,11 @@[m
       "resolved": "https://registry.npmjs.org/react-overlays/-/react-overlays-0.7.4.tgz",[m
       "integrity": "sha512-7vsooMx3siLAuEfTs8FYeP/lAORWWFXTO8PON3KgX0Htq1Oa+po6ioSjGyO0/GO5CVSMNhpWt6V2opeexHgBuQ==",[m
       "requires": {[m
[31m-        "classnames": "2.2.6",[m
[31m-        "dom-helpers": "3.4.0",[m
[31m-        "prop-types": "15.7.2",[m
[31m-        "prop-types-extra": "1.1.0",[m
[31m-        "warning": "3.0.0"[m
[32m+[m[32m        "classnames": "^2.2.5",[m
[32m+[m[32m        "dom-helpers": "^3.2.1",[m
[32m+[m[32m        "prop-types": "^15.5.10",[m
[32m+[m[32m        "prop-types-extra": "^1.0.1",[m
[32m+[m[32m        "warning": "^3.0.0"[m
       }[m
     },[m
     "react-photo-gallery": {[m
[36m@@ -8050,8 +8077,16 @@[m
       "resolved": "https://registry.npmjs.org/react-photo-gallery/-/react-photo-gallery-6.3.2.tgz",[m
       "integrity": "sha512-MczIo//EIITMxuDv/ChI3iTb1YXyhuZrhAWVXB+vzhQm1gTlbgWjjpsk5hlR2mSzPHJRx1YLQEnJUpk2aZZ1EQ==",[m
       "requires": {[m
[31m-        "prop-types": "15.7.2",[m
[31m-        "resize-observer-polyfill": "1.5.1"[m
[32m+[m[32m        "prop-types": "~15.7.2",[m
[32m+[m[32m        "resize-observer-polyfill": "^1.5.0"[m
[32m+[m[32m      }[m
[32m+[m[32m    },[m
[32m+[m[32m    "react-popup": {[m
[32m+[m[32m      "version": "0.10.0",[m
[32m+[m[32m      "resolved": "https://registry.npmjs.org/react-popup/-/react-popup-0.10.0.tgz",[m
[32m+[m[32m      "integrity": "sha512-NPO65MsAznv/JaP3MDz3DAqKJsA8fEcW5ttzTj6wGXtjPi0qDeB+f+hf4IbMcVrlJ2ZG4uHEdgL6B5QP/AGv3Q==",[m
[32m+[m[32m      "requires": {[m
[32m+[m[32m        "keymaster": "^1.6.2"[m
       }[m
     },[m
     "react-prop-toggle": {[m
[36m@@ -8064,13 +8099,13 @@[m
       "resolved": "https://registry.npmjs.org/react-router/-/react-router-4.2.0.tgz",[m
       "integrity": "sha512-DY6pjwRhdARE4TDw7XjxjZsbx9lKmIcyZoZ+SDO7SBJ1KUeWNxT22Kara2AC7u6/c2SYEHlEDLnzBCcNhLE8Vg==",[m
       "requires": {[m
[31m-        "history": "4.7.2",[m
[31m-        "hoist-non-react-statics": "2.3.1",[m
[31m-        "invariant": "2.2.2",[m
[31m-        "loose-envify": "1.3.1",[m
[31m-        "path-to-regexp": "1.7.0",[m
[31m-        "prop-types": "15.7.2",[m
[31m-        "warning": "3.0.0"[m
[32m+[m[32m        "history": "^4.7.2",[m
[32m+[m[32m        "hoist-non-react-statics": "^2.3.0",[m
[32m+[m[32m        "invariant": "^2.2.2",[m
[32m+[m[32m        "loose-envify": "^1.3.1",[m
[32m+[m[32m        "path-to-regexp": "^1.7.0",[m
[32m+[m[32m        "prop-types": "^15.5.4",[m
[32m+[m[32m        "warning": "^3.0.0"[m
       }[m
     },[m
     "react-router-bootstrap": {[m
[36m@@ -8078,7 +8113,7 @@[m
       "resolved": "https://registry.npmjs.org/react-router-bootstrap/-/react-router-bootstrap-0.24.4.tgz",[m
       "integrity": "sha512-kEwk3ml4wvE3IbJvRVjx0zBBBxW4JLhD0wyy0hBdlWSdfjvgoHVvlxx9gBPxvEs5VwWlbFvNRyUghLZ2AMcmzg==",[m
       "requires": {[m
[31m-        "prop-types": "15.7.2"[m
[32m+[m[32m        "prop-types": "^15.5.10"[m
       }[m
     },[m
     "react-router-dom": {[m
[36m@@ -8086,12 +8121,12 @@[m
       "resolved": "https://registry.npmjs.org/react-router-dom/-/react-router-dom-4.2.2.tgz",[m
       "integrity": "sha512-cHMFC1ZoLDfEaMFoKTjN7fry/oczMgRt5BKfMAkTu5zEuJvUiPp1J8d0eXSVTnBh6pxlbdqDhozunOOLtmKfPA==",[m
       "requires": {[m
[31m-        "history": "4.7.2",[m
[31m-        "invariant": "2.2.2",[m
[31m-        "loose-envify": "1.3.1",[m
[31m-        "prop-types": "15.7.2",[m
[31m-        "react-router": "4.2.0",[m
[31m-        "warning": "3.0.0"[m
[32m+[m[32m        "history": "^4.7.2",[m
[32m+[m[32m        "invariant": "^2.2.2",[m
[32m+[m[32m        "loose-envify": "^1.3.1",[m
[32m+[m[32m        "prop-types": "^15.5.4",[m
[32m+[m[32m        "react-router": "^4.2.0",[m
[32m+[m[32m        "warning": "^3.0.0"[m
       }[m
     },[m
     "react-scripts": {[m
[36m@@ -8104,14 +8139,14 @@[m
         "babel-eslint": "7.2.3",[m
         "babel-jest": "20.0.3",[m
         "babel-loader": "7.1.2",[m
[31m-        "babel-preset-react-app": "3.1.0",[m
[32m+[m[32m        "babel-preset-react-app": "^3.1.0",[m
         "babel-runtime": "6.26.0",[m
         "case-sensitive-paths-webpack-plugin": "2.1.1",[m
         "chalk": "1.1.3",[m
         "css-loader": "0.28.7",[m
         "dotenv": "4.0.0",[m
         "eslint": "4.10.0",[m
[31m-        "eslint-config-react-app": "2.0.1",[m
[32m+[m[32m        "eslint-config-react-app": "^2.0.1",[m
         "eslint-loader": "1.9.0",[m
         "eslint-plugin-flowtype": "2.39.1",[m
         "eslint-plugin-import": "2.8.0",[m
[36m@@ -8128,7 +8163,7 @@[m
         "postcss-loader": "2.0.8",[m
         "promise": "8.0.1",[m
         "raf": "3.4.0",[m
[31m-        "react-dev-utils": "4.2.1",[m
[32m+[m[32m        "react-dev-utils": "^4.2.1",[m
         "style-loader": "0.19.0",[m
         "sw-precache-webpack-plugin": "0.11.4",[m
         "url-loader": "0.6.2",[m
[36m@@ -8144,8 +8179,8 @@[m
           "integrity": "sha512-Sn44E5wQW4bTHXvQmvSHwqbuiXtduD6Rrjm2ZtUEGbyrig+nUH3t/QD4M4/ZXViY556TBpRgZkHLDx3JxPwxiw==",[m
           "optional": true,[m
           "requires": {[m
[31m-            "nan": "2.12.1",[m
[31m-            "node-pre-gyp": "0.6.36"[m
[32m+[m[32m            "nan": "^2.3.0",[m
[32m+[m[32m            "node-pre-gyp": "^0.6.36"[m
           },[m
           "dependencies": {[m
             "abbrev": {[m
[36m@@ -8176,8 +8211,8 @@[m
               "bundled": true,[m
               "optional": true,[m
               "requires": {[m
[31m-                "delegates": "1.0.0",[m
[31m-                "readable-stream": "2.2.9"[m
[32m+[m[32m                "delegates": "^1.0.0",[m
[32m+[m[32m                "readable-stream": "^2.0.6"[m
               }[m
             },[m
             "asn1": {[m
[36m@@ -8215,7 +8250,7 @@[m
               "bundled": true,[m
               "optional": true,[m
               "requires": {[m
[31m-                "tweetnacl": "0.14.5"[m
[32m+[m[32m                "tweetnacl": "^0.14.3"[m
               }[m
             },[m
             "block-stream": {[m
[36m@@ -8367,10 +8402,10 @@[m
               "version": "1.0.11",[m
               "bundled": true,[m
               "requires": {[m
[31m-                "graceful-fs": "4.1.11",[m
[31m-                "inherits": "2.0.3",[m
[31m-                "mkdirp": "0.5.1",[m
[31m-                "rimraf": "2.6.1"[m
[32m+[m[32m                "graceful-fs": "^4.1.2",[m
[32m+[m[32m                "inherits": "~2.0.0",[m
[32m+[m[32m                "mkdirp": ">=0.5 0",[m
[32m+[m[32m                "rimraf": "2"[m
               }[m
             },[m
             "fstream-ignore": {[m
[36m@@ -8378,9 +8413,9 @@[m
               "bundled": true,[m
               "optional": true,[m
               "requires": {[m
[31m-                "fstream": "1.0.11",[m
[31m-                "inherits": "2.0.3",[m
[31m-                "minimatch": "3.0.4"[m
[32m+[m[32m                "fstream": "^1.0.0",[m
[32m+[m[32m                "inherits": "2",[m
[32m+[m[32m                "minimatch": "^3.0.0"[m
               }[m
             },[m
             "gauge": {[m
[36m@@ -8388,14 +8423,14 @@[m
               "bundled": true,[m
               "optional": true,[m
               "requires": {[m
[31m-                "aproba": "1.1.1",[m
[31m-                "console-control-strings": "1.1.0",[m
[31m-                "has-unicode": "2.0.1",[m
[31m-                "object-assign": "4.1.1",[m
[31m-                "signal-exit": "3.0.2",[m
[31m-                "string-width": "1.0.2",[m
[31m-                "strip-ansi": "3.0.1",[m
[31m-                "wide-align": "1.1.2"[m
[32m+[m[32m                "aproba": "^1.0.3",[m
[32m+[m[32m                "console-control-strings": "^1.0.0",[m
[32m+[m[32m                "has-unicode": "^2.0.0",[m
[32m+[m[32m                "object-assign": "^4.1.0",[m
[32m+[m[32m                "signal-exit": "^3.0.0",[m
[32m+[m[32m                "string-width": "^1.0.1",[m
[32m+[m[32m                "strip-ansi": "^3.0.1",[m
[32m+[m[32m                "wide-align": "^1.1.0"[m
               }[m
             },[m
             "getpass": {[m
[36m@@ -8417,12 +8452,12 @@[m
               "version": "7.1.2",[m
               "bundled": true,[m
               "requires": {[m
[31m-                "fs.realpath": "1.0.0",[m
[31m-                "inflight": "1.0.6",[m
[31m-                "inherits": "2.0.3",[m
[31m-                "minimatch": "3.0.4",[m
[31m-                "once": "1.4.0",[m
[31m-                "path-is-absolute": "1.0.1"[m
[32m+[m[32m                "fs.realpath": "^1.0.0",[m
[32m+[m[32m                "inflight": "^1.0.4",[m
[32m+[m[32m                "inherits": "2",[m
[32m+[m[32m                "minimatch": "^3.0.4",[m
[32m+[m[32m                "once": "^1.3.0",[m
[32m+[m[32m                "path-is-absolute": "^1.0.0"[m
               }[m
             },[m
             "graceful-fs": {[m
[36m@@ -8468,17 +8503,17 @@[m
               "bundled": true,[m
               "optional": true,[m
               "requires": {[m
[31m-                "assert-plus": "0.2.0",[m
[31m-                "jsprim": "1.4.0",[m
[31m-                "sshpk": "1.13.0"[m
[32m+[m[32m                "assert-plus": "^0.2.0",[m
[32m+[m[32m                "jsprim": "^1.2.2",[m
[32m+[m[32m                "sshpk": "^1.7.0"[m
               }[m
             },[m
             "inflight": {[m
               "version": "1.0.6",[m
               "bundled": true,[m
               "requires": {[m
[31m-                "once": "1.4.0",[m
[31m-                "wrappy": "1.0.2"[m
[32m+[m[32m                "once": "^1.3.0",[m
[32m+[m[32m                "wrappy": "1"[m
               }[m
             },[m
             "inherits": {[m
[36m@@ -8607,15 +8642,15 @@[m
               "bundled": true,[m
               "optional": true,[m
               "requires": {[m
[31m-                "mkdirp": "0.5.1",[m
[31m-                "nopt": "4.0.1",[m
[31m-                "npmlog": "4.1.0",[m
[31m-                "rc": "1.2.1",[m
[31m-                "request": "2.81.0",[m
[31m-                "rimraf": "2.6.1",[m
[31m-                "semver": "5.3.0",[m
[31m-                "tar": "2.2.1",[m
[31m-                "tar-pack": "3.4.0"[m
[32m+[m[32m                "mkdirp": "^0.5.1",[m
[32m+[m[32m                "nopt": "^4.0.1",[m
[32m+[m[32m                "npmlog": "^4.0.2",[m
[32m+[m[32m                "rc": "^1.1.7",[m
[32m+[m[32m                "request": "^2.81.0",[m
[32m+[m[32m                "rimraf": "^2.6.1",[m
[32m+[m[32m                "semver": "^5.3.0",[m
[32m+[m[32m                "tar": "^2.2.1",[m
[32m+[m[32m                "tar-pack": "^3.4.0"[m
               }[m
             },[m
             "nopt": {[m
[36m@@ -8632,10 +8667,10 @@[m
               "bundled": true,[m
               "optional": true,[m
               "requires": {[m
[31m-                "are-we-there-yet": "1.1.4",[m
[31m-                "console-control-strings": "1.1.0",[m
[31m-                "gauge": "2.7.4",[m
[31m-                "set-blocking": "2.0.0"[m
[32m+[m[32m                "are-we-there-yet": "~1.1.2",[m
[32m+[m[32m                "console-control-strings": "~1.1.0",[m
[32m+[m[32m                "gauge": "~2.7.3",[m
[32m+[m[32m                "set-blocking": "~2.0.0"[m
               }[m
             },[m
             "number-is-nan": {[m
[36m@@ -8657,7 +8692,7 @@[m
               "version": "1.4.0",[m
               "bundled": true,[m
               "requires": {[m
[31m-                "wrappy": "1.0.2"[m
[32m+[m[32m                "wrappy": "1"[m
               }[m
             },[m
             "os-homedir": {[m
[36m@@ -8707,10 +8742,10 @@[m
               "bundled": true,[m
               "optional": true,[m
               "requires": {[m
[31m-                "deep-extend": "0.4.2",[m
[31m-                "ini": "1.3.4",[m
[31m-                "minimist": "1.2.0",[m
[31m-                "strip-json-comments": "2.0.1"[m
[32m+[m[32m                "deep-extend": "~0.4.0",[m
[32m+[m[32m                "ini": "~1.3.0",[m
[32m+[m[32m                "minimist": "^1.2.0",[m
[32m+[m[32m                "strip-json-comments": "~2.0.1"[m
               },[m
               "dependencies": {[m
                 "minimist": {[m
[36m@@ -8724,13 +8759,13 @@[m
               "version": "2.2.9",[m
               "bundled": true,[m
               "requires": {[m
[31m-                "buffer-shims": "1.0.0",[m
[31m-                "core-util-is": "1.0.2",[m
[31m-                "inherits": "2.0.3",[m
[31m-                "isarray": "1.0.0",[m
[31m-                "process-nextick-args": "1.0.7",[m
[31m-                "string_decoder": "1.0.1",[m
[31m-                "util-deprecate": "1.0.2"[m
[32m+[m[32m                "buffer-shims": "~1.0.0",[m
[32m+[m[32m                "core-util-is": "~1.0.0",[m
[32m+[m[32m                "inherits": "~2.0.1",[m
[32m+[m[32m                "isarray": "~1.0.0",[m
[32m+[m[32m                "process-nextick-args": "~1.0.6",[m
[32m+[m[32m                "string_decoder": "~1.0.0",[m
[32m+[m[32m                "util-deprecate": "~1.0.1"[m
               }[m
             },[m
             "request": {[m
[36m@@ -8738,35 +8773,35 @@[m
               "bundled": true,[m
               "optional": true,[m
               "requires": {[m
[31m-                "aws-sign2": "0.6.0",[m
[31m-                "aws4": "1.6.0",[m
[31m-                "caseless": "0.12.0",[m
[31m-                "combined-stream": "1.0.5",[m
[31m-                "extend": "3.0.1",[m
[31m-                "forever-agent": "0.6.1",[m
[31m-                "form-data": "2.1.4",[m
[31m-                "har-validator": "4.2.1",[m
[31m-                "hawk": "3.1.3",[m
[31m-                "http-signature": "1.1.1",[m
[31m-                "is-typedarray": "1.0.0",[m
[31m-                "isstream": "0.1.2",[m
[31m-                "json-stringify-safe": "5.0.1",[m
[31m-                "mime-types": "2.1.15",[m
[31m-                "oauth-sign": "0.8.2",[m
[31m-                "performance-now": "0.2.0",[m
[31m-                "qs": "6.4.0",[m
[31m-                "safe-buffer": "5.0.1",[m
[31m-                "stringstream": "0.0.5",[m
[31m-                "tough-cookie": "2.3.2",[m
[31m-                "tunnel-agent": "0.6.0",[m
[31m-                "uuid": "3.0.1"[m
[32m+[m[32m                "aws-sign2": "~0.6.0",[m
[32m+[m[32m                "aws4": "^1.2.1",[m
[32m+[m[32m                "caseless": "~0.12.0",[m
[32m+[m[32m                "combined-stream": "~1.0.5",[m
[32m+[m[32m                "extend": "~3.0.0",[m
[32m+[m[32m                "forever-agent": "~0.6.1",[m
[32m+[m[32m                "form-data": "~2.1.1",[m
[32m+[m[32m                "har-validator": "~4.2.1",[m
[32m+[m[32m                "hawk": "~3.1.3",[m
[32m+[m[32m                "http-signature": "~1.1.0",[m
[32m+[m[32m                "is-typedarray": "~1.0.0",[m
[32m+[m[32m                "isstream": "~0.1.2",[m
[32m+[m[32m                "json-stringify-safe": "~5.0.1",[m
[32m+[m[32m                "mime-types": "~2.1.7",[m
[32m+[m[32m                "oauth-sign": "~0.8.1",[m
[32m+[m[32m                "performance-now": "^0.2.0",[m
[32m+[m[32m                "qs": "~6.4.0",[m
[32m+[m[32m                "safe-buffer": "^5.0.1",[m
[32m+[m[32m                "stringstream": "~0.0.4",[m
[32m+[m[32m                "tough-cookie": "~2.3.0",[m
[32m+[m[32m                "tunnel-agent": "^0.6.0",[m
[32m+[m[32m                "uuid": "^3.0.0"[m
               }[m
             },[m
             "rimraf": {[m
               "version": "2.6.1",[m
               "bundled": true,[m
               "requires": {[m
[31m-                "glob": "7.1.2"[m
[32m+[m[32m                "glob": "^7.0.5"[m
               }[m
             },[m
             "safe-buffer": {[m
[36m@@ -8801,15 +8836,15 @@[m
               "bundled": true,[m
               "optional": true,[m
               "requires": {[m
[31m-                "asn1": "0.2.3",[m
[31m-                "assert-plus": "1.0.0",[m
[31m-                "bcrypt-pbkdf": "1.0.1",[m
[31m-                "dashdash": "1.14.1",[m
[31m-                "ecc-jsbn": "0.1.1",[m
[31m-                "getpass": "0.1.7",[m
[31m-                "jodid25519": "1.0.2",[m
[31m-                "jsbn": "0.1.1",[m
[31m-                "tweetnacl": "0.14.5"[m
[32m+[m[32m                "asn1": "~0.2.3",[m
[32m+[m[32m                "assert-plus": "^1.0.0",[m
[32m+[m[32m                "bcrypt-pbkdf": "^1.0.0",[m
[32m+[m[32m                "dashdash": "^1.12.0",[m
[32m+[m[32m                "ecc-jsbn": "~0.1.1",[m
[32m+[m[32m                "getpass": "^0.1.1",[m
[32m+[m[32m                "jodid25519": "^1.0.0",[m
[32m+[m[32m                "jsbn": "~0.1.0",[m
[32m+[m[32m                "tweetnacl": "~0.14.0"[m
               },[m
               "dependencies": {[m
                 "assert-plus": {[m
[36m@@ -8823,16 +8858,16 @@[m
               "version": "1.0.2",[m
               "bundled": true,[m
               "requires": {[m
[31m-                "code-point-at": "1.1.0",[m
[31m-                "is-fullwidth-code-point": "1.0.0",[m
[31m-                "strip-ansi": "3.0.1"[m
[32m+[m[32m                "code-point-at": "^1.0.0",[m
[32m+[m[32m                "is-fullwidth-code-point": "^1.0.0",[m
[32m+[m[32m                "strip-ansi": "^3.0.0"[m
               }[m
             },[m
             "string_decoder": {[m
               "version": "1.0.1",[m
               "bundled": true,[m
               "requires": {[m
[31m-                "safe-buffer": "5.0.1"[m
[32m+[m[32m                "safe-buffer": "^5.0.1"[m
               }[m
             },[m
             "stringstream": {[m
[36m@@ -8844,7 +8879,7 @@[m
               "version": "3.0.1",[m
               "bundled": true,[m
               "requires": {[m
[31m-                "ansi-regex": "2.1.1"[m
[32m+[m[32m                "ansi-regex": "^2.0.0"[m
               }[m
             },[m
             "strip-json-comments": {[m
[36m@@ -8856,9 +8891,9 @@[m
               "version": "2.2.1",[m
               "bundled": true,[m
               "requires": {[m
[31m-                "block-stream": "0.0.9",[m
[31m-                "fstream": "1.0.11",[m
[31m-                "inherits": "2.0.3"[m
[32m+[m[32m                "block-stream": "*",[m
[32m+[m[32m                "fstream": "^1.0.2",[m
[32m+[m[32m                "inherits": "2"[m
               }[m
             },[m
             "tar-pack": {[m
[36m@@ -8866,14 +8901,14 @@[m
               "bundled": true,[m
               "optional": true,[m
               "requires": {[m
[31m-                "debug": "2.6.8",[m
[31m-                "fstream": "1.0.11",[m
[31m-                "fstream-ignore": "1.0.5",[m
[31m-                "once": "1.4.0",[m
[31m-                "readable-stream": "2.2.9",[m
[31m-                "rimraf": "2.6.1",[m
[31m-                "tar": "2.2.1",[m
[31m-                "uid-number": "0.0.6"[m
[32m+[m[32m                "debug": "^2.2.0",[m
[32m+[m[32m                "fstream": "^1.0.10",[m
[32m+[m[32m                "fstream-ignore": "^1.0.5",[m
[32m+[m[32m                "once": "^1.3.3",[m
[32m+[m[32m                "readable-stream": "^2.1.4",[m
[32m+[m[32m                "rimraf": "^2.5.1",[m
[32m+[m[32m                "tar": "^2.2.1",[m
[32m+[m[32m                "uid-number": "^0.0.6"[m
               }[m
             },[m
             "tough-cookie": {[m
[36m@@ -8881,7 +8916,7 @@[m
               "bundled": true,[m
               "optional": true,[m
               "requires": {[m
[31m-                "punycode": "1.4.1"[m
[32m+[m[32m                "punycode": "^1.4.1"[m
               }[m
             },[m
             "tunnel-agent": {[m
[36m@@ -8889,7 +8924,7 @@[m
               "bundled": true,[m
               "optional": true,[m
               "requires": {[m
[31m-                "safe-buffer": "5.0.1"[m
[32m+[m[32m                "safe-buffer": "^5.0.1"[m
               }[m
             },[m
             "tweetnacl": {[m
[36m@@ -8924,7 +8959,7 @@[m
               "bundled": true,[m
               "optional": true,[m
               "requires": {[m
[31m-                "string-width": "1.0.2"[m
[32m+[m[32m                "string-width": "^1.0.2"[m
               }[m
             },[m
             "wrappy": {[m
[36m@@ -8938,7 +8973,7 @@[m
           "resolved": "https://registry.npmjs.org/promise/-/promise-8.0.1.tgz",[m
           "integrity": "sha1-5F1osAoXZHttpxG/he1u1HII9FA=",[m
           "requires": {[m
[31m-            "asap": "2.0.6"[m
[32m+[m[32m            "asap": "~2.0.3"[m
           }[m
         }[m
       }[m
[36m@@ -8948,8 +8983,8 @@[m
       "resolved": "https://registry.npmjs.org/react-scrolllock/-/react-scrolllock-2.0.7.tgz",[m
       "integrity": "sha512-Gzpu8+ulxdYcybAgJOFTXc70xs7SBZDQbZNpKzchZUgLCJKjz6lrgESx6LHHZgfELx1xYL4yHu3kYQGQPFas/g==",[m
       "requires": {[m
[31m-        "exenv": "1.2.2",[m
[31m-        "react-prop-toggle": "1.0.2"[m
[32m+[m[32m        "exenv": "^1.2.2",[m
[32m+[m[32m        "react-prop-toggle": "^1.0.2"[m
       }[m
     },[m
     "react-swipeable": {[m
[36m@@ -8957,8 +8992,8 @@[m
       "resolved": "https://registry.npmjs.org/react-swipeable/-/react-swipeable-4.3.2.tgz",[m
       "integrity": "sha512-DPZ5FbefHk2XtbLIMqa7LKwqDPHRezPrcBVg4M2beeRohlmEK2hGsYj81lReEnX6AChOJZtYBvBSxGIIwpG38A==",[m
       "requires": {[m
[31m-        "detect-passive-events": "1.0.4",[m
[31m-        "prop-types": "15.7.2"[m
[32m+[m[32m        "detect-passive-events": "^1.0.4",[m
[32m+[m[32m        "prop-types": "^15.5.8"[m
       }[m
     },[m
     "react-table": {[m
[36m@@ -8966,7 +9001,7 @@[m
       "resolved": "https://registry.npmjs.org/react-table/-/react-table-6.9.2.tgz",[m
       "integrity": "sha512-sTbNHU8Um0xRtmCd1js873HXnXaMWeBwZoiljuj0l1d44eaqjKyYPK/3HCBbJg1yeE2O5pQJ3Km0tlm9niNL9w==",[m
       "requires": {[m
[31m-        "classnames": "2.2.6"[m
[32m+[m[32m        "classnames": "^2.2.5"[m
       }[m
     },[m
     "react-transition-group": {[m
[36m@@ -8974,10 +9009,10 @@[m
       "resolved": "https://registry.npmjs.org/react-transition-group/-/react-transition-group-2.5.3.tgz",[m
       "integrity": "sha512-2DGFck6h99kLNr8pOFk+z4Soq3iISydwOFeeEVPjTN6+Y01CmvbWmnN02VuTWyFdnRtIDPe+wy2q6Ui8snBPZg==",[m
       "requires": {[m
[31m-        "dom-helpers": "3.4.0",[m
[31m-        "loose-envify": "1.4.0",[m
[31m-        "prop-types": "15.7.2",[m
[31m-        "react-lifecycles-compat": "3.0.4"[m
[32m+[m[32m        "dom-helpers": "^3.3.1",[m
[32m+[m[32m        "loose-envify": "^1.4.0",[m
[32m+[m[32m        "prop-types": "^15.6.2",[m
[32m+[m[32m        "react-lifecycles-compat": "^3.0.4"[m
       },[m
       "dependencies": {[m
         "loose-envify": {[m
[36m@@ -8985,18 +9020,23 @@[m
           "resolved": "https://registry.npmjs.org/loose-envify/-/loose-envify-1.4.0.tgz",[m
           "integrity": "sha512-lyuxPGr/Wfhrlem2CL/UcnUc1zcqKAImBDzukY7Y5F/yQiNdko6+fRLevlw1HgMySw7f611UIY408EtxRSoK3Q==",[m
           "requires": {[m
[31m-            "js-tokens": "3.0.2"[m
[32m+[m[32m            "js-tokens": "^3.0.0 || ^4.0.0"[m
           }[m
         }[m
       }[m
     },[m
[32m+[m[32m    "reactjs-popup": {[m
[32m+[m[32m      "version": "1.3.2",[m
[32m+[m[32m      "resolved": "https://registry.npmjs.org/reactjs-popup/-/reactjs-popup-1.3.2.tgz",[m
[32m+[m[32m      "integrity": "sha512-BwfaOkKpLHNHxSmiMcX/yc61twJvjGbJ/SBE+fYovJudFlaZDYXGPSp+3dTCE0UoNsEqF8oc/pNkYlGgmrnsrw=="[m
[32m+[m[32m    },[m
     "read-all-stream": {[m
       "version": "3.1.0",[m
       "resolved": "https://registry.npmjs.org/read-all-stream/-/read-all-stream-3.1.0.tgz",[m
       "integrity": "sha1-NcPhd/IHjveJ7kv6+kNzB06u9Po=",[m
       "requires": {[m
[31m-        "pinkie-promise": "2.0.1",[m
[31m-        "readable-stream": "2.3.3"[m
[32m+[m[32m        "pinkie-promise": "^2.0.0",[m
[32m+[m[32m        "readable-stream": "^2.0.0"[m
       }[m
     },[m
     "read-pkg": {[m
[36m@@ -9004,9 +9044,9 @@[m
       "resolved": "https://registry.npmjs.org/read-pkg/-/read-pkg-1.1.0.tgz",[m
       "integrity": "sha1-9f+qXs0pyzHAR0vKfXVra7KePyg=",[m
       "requires": {[m
[31m-        "load-json-file": "1.1.0",[m
[31m-        "normalize-package-data": "2.4.0",[m
[31m-        "path-type": "1.1.0"[m
[32m+[m[32m        "load-json-file": "^1.0.0",[m
[32m+[m[32m        "normalize-package-data": "^2.3.2",[m
[32m+[m[32m        "path-type": "^1.0.0"[m
       }[m
     },[m
     "read-pkg-up": {[m
[36m@@ -9014,8 +9054,8 @@[m
       "resolved": "https://registry.npmjs.org/read-pkg-up/-/read-pkg-up-1.0.1.tgz",[m
       "integrity": "sha1-nWPBMnbAZZGNV/ACpX9AobZD+wI=",[m
       "requires": {[m
[31m-        "find-up": "1.1.2",[m
[31m-        "read-pkg": "1.1.0"[m
[32m+[m[32m        "find-up": "^1.0.0",[m
[32m+[m[32m        "read-pkg": "^1.0.0"[m
       },[m
       "dependencies": {[m
         "find-up": {[m
[36m@@ -9023,8 +9063,8 @@[m
           "resolved": "https://registry.npmjs.org/find-up/-/find-up-1.1.2.tgz",[m
           "integrity": "sha1-ay6YIrGizgpgq2TWEOzK1TyyTQ8=",[m
           "requires": {[m
[31m-            "path-exists": "2.1.0",[m
[31m-            "pinkie-promise": "2.0.1"[m
[32m+[m[32m            "path-exists": "^2.0.0",[m
[32m+[m[32m            "pinkie-promise": "^2.0.0"[m
           }[m
         },[m
         "path-exists": {[m
[36m@@ -9032,7 +9072,7 @@[m
           "resolved": "https://registry.npmjs.org/path-exists/-/path-exists-2.1.0.tgz",[m
           "integrity": "sha1-D+tsZPD8UY2adU3V77YscCJ2H0s=",[m
           "requires": {[m
[31m-            "pinkie-promise": "2.0.1"[m
[32m+[m[32m            "pinkie-promise": "^2.0.0"[m
           }[m
         }[m
       }[m
[36m@@ -9042,13 +9082,13 @@[m
       "resolved": "https://registry.npmjs.org/readable-stream/-/readable-stream-2.3.3.tgz",[m
       "integrity": "sha512-m+qzzcn7KUxEmd1gMbchF+Y2eIUbieUaxkWtptyHywrX0rE8QEYqPC07Vuy4Wm32/xE16NcdBctb8S0Xe/5IeQ==",[m
       "requires": {[m
[31m-        "core-util-is": "1.0.2",[m
[31m-        "inherits": "2.0.3",[m
[31m-        "isarray": "1.0.0",[m
[31m-        "process-nextick-args": "1.0.7",[m
[31m-        "safe-buffer": "5.1.1",[m
[31m-        "string_decoder": "1.0.3",[m
[31m-        "util-deprecate": "1.0.2"[m
[32m+[m[32m        "core-util-is": "~1.0.0",[m
[32m+[m[32m        "inherits": "~2.0.3",[m
[32m+[m[32m        "isarray": "~1.0.0",[m
[32m+[m[32m        "process-nextick-args": "~1.0.6",[m
[32m+[m[32m        "safe-buffer": "~5.1.1",[m
[32m+[m[32m        "string_decoder": "~1.0.3",[m
[32m+[m[32m        "util-deprecate": "~1.0.1"[m
       },[m
       "dependencies": {[m
         "isarray": {[m
[36m@@ -9063,10 +9103,10 @@[m
       "resolved": "https://registry.npmjs.org/readdirp/-/readdirp-2.1.0.tgz",[m
       "integrity": "sha1-TtCtBg3zBzMAxIRANz9y0cxkLXg=",[m
       "requires": {[m
[31m-        "graceful-fs": "4.1.11",[m
[31m-        "minimatch": "3.0.4",[m
[31m-        "readable-stream": "2.3.3",[m
[31m-        "set-immediate-shim": "1.0.1"[m
[32m+[m[32m        "graceful-fs": "^4.1.2",[m
[32m+[m[32m        "minimatch": "^3.0.2",[m
[32m+[m[32m        "readable-stream": "^2.0.2",[m
[32m+[m[32m        "set-immediate-shim": "^1.0.1"[m
       }[m
     },[m
     "recursive-readdir": {[m
[36m@@ -9082,7 +9122,7 @@[m
           "resolved": "https://registry.npmjs.org/minimatch/-/minimatch-3.0.3.tgz",[m
           "integrity": "sha1-Kk5AkLlrLbBqnX3wEFWmKnfJt3Q=",[m
           "requires": {[m
[31m-            "brace-expansion": "1.1.8"[m
[32m+[m[32m            "brace-expansion": "^1.0.0"[m
           }[m
         }[m
       }[m
[36m@@ -9092,8 +9132,8 @@[m
       "resolved": "https://registry.npmjs.org/redent/-/redent-1.0.0.tgz",[m
       "integrity": "sha1-z5Fqsf1fHxbfsggi3W7H9zDCr94=",[m
       "requires": {[m
[31m-        "indent-string": "2.1.0",[m
[31m-        "strip-indent": "1.0.1"[m
[32m+[m[32m        "indent-string": "^2.1.0",[m
[32m+[m[32m        "strip-indent": "^1.0.1"[m
       }[m
     },[m
     "reduce-css-calc": {[m
[36m@@ -9101,9 +9141,9 @@[m
       "resolved": "https://registry.npmjs.org/reduce-css-calc/-/reduce-css-calc-1.3.0.tgz",[m
       "integrity": "sha1-dHyRTgSWFKTJz7umKYca0dKSdxY=",[m
       "requires": {[m
[31m-        "balanced-match": "0.4.2",[m
[31m-        "math-expression-evaluator": "1.2.17",[m
[31m-        "reduce-function-call": "1.0.2"[m
[32m+[m[32m        "balanced-match": "^0.4.2",[m
[32m+[m[32m        "math-expression-evaluator": "^1.2.14",[m
[32m+[m[32m        "reduce-function-call": "^1.0.1"[m
       },[m
       "dependencies": {[m
         "balanced-match": {[m
[36m@@ -9118,7 +9158,7 @@[m
       "resolved": "https://registry.npmjs.org/reduce-function-call/-/reduce-function-call-1.0.2.tgz",[m
       "integrity": "sha1-WiAL+S4ON3UXUv5FsKszD9S2vpk=",[m
       "requires": {[m
[31m-        "balanced-match": "0.4.2"[m
[32m+[m[32m        "balanced-match": "^0.4.2"[m
       },[m
       "dependencies": {[m
         "balanced-match": {[m
[36m@@ -9143,9 +9183,9 @@[m
       "resolved": "https://registry.npmjs.org/regenerator-transform/-/regenerator-transform-0.10.1.tgz",[m
       "integrity": "sha512-PJepbvDbuK1xgIgnau7Y90cwaAmO/LCLMI2mPvaXq2heGMR3aWW5/BQvYrhJ8jgmQjXewXvBjzfqKcVOmhjZ6Q==",[m
       "requires": {[m
[31m-        "babel-runtime": "6.26.0",[m
[31m-        "babel-types": "6.26.0",[m
[31m-        "private": "0.1.8"[m
[32m+[m[32m        "babel-runtime": "^6.18.0",[m
[32m+[m[32m        "babel-types": "^6.19.0",[m
[32m+[m[32m        "private": "^0.1.6"[m
       }[m
     },[m
     "regex-cache": {[m
[36m@@ -9153,7 +9193,7 @@[m
       "resolved": "https://registry.npmjs.org/regex-cache/-/regex-cache-0.4.4.tgz",[m
       "integrity": "sha512-nVIZwtCjkC9YgvWkpM55B5rBhBYRZhAaJbgcFYXXsHnbZ9UZI9nnVWYZpBlCqv9ho2eZryPnWrZGsOdPwVWXWQ==",[m
       "requires": {[m
[31m-        "is-equal-shallow": "0.1.3"[m
[32m+[m[32m        "is-equal-shallow": "^0.1.3"[m
       }[m
     },[m
     "regexpu-core": {[m
[36m@@ -9161,9 +9201,9 @@[m
       "resolved": "https://registry.npmjs.org/regexpu-core/-/regexpu-core-2.0.0.tgz",[m
       "integrity": "sha1-SdA4g3uNz4v6W5pCE5k45uoq4kA=",[m
       "requires": {[m
[31m-        "regenerate": "1.3.3",[m
[31m-        "regjsgen": "0.2.0",[m
[31m-        "regjsparser": "0.1.5"[m
[32m+[m[32m        "regenerate": "^1.2.1",[m
[32m+[m[32m        "regjsgen": "^0.2.0",[m
[32m+[m[32m        "regjsparser": "^0.1.4"[m
       }[m
     },[m
     "registry-auth-token": {[m
[36m@@ -9171,8 +9211,8 @@[m
       "resolved": "https://registry.npmjs.org/registry-auth-token/-/registry-auth-token-3.3.1.tgz",[m
       "integrity": "sha1-+w0yie4Nmtosu1KvXf5mywcNMAY=",[m
       "requires": {[m
[31m-        "rc": "1.2.2",[m
[31m-        "safe-buffer": "5.1.1"[m
[32m+[m[32m        "rc": "^1.1.6",[m
[32m+[m[32m        "safe-buffer": "^5.0.1"[m
       }[m
     },[m
     "registry-url": {[m
[36m@@ -9180,7 +9220,7 @@[m
       "resolved": "https://registry.npmjs.org/registry-url/-/registry-url-3.1.0.tgz",[m
       "integrity": "sha1-PU74cPc93h138M+aOBQyRE4XSUI=",[m
       "requires": {[m
[31m-        "rc": "1.2.2"[m
[32m+[m[32m        "rc": "^1.0.1"[m
       }[m
     },[m
     "regjsgen": {[m
[36m@@ -9193,7 +9233,7 @@[m
       "resolved": "https://registry.npmjs.org/regjsparser/-/regjsparser-0.1.5.tgz",[m
       "integrity": "sha1-fuj4Tcb6eS0/0K4ijSS9lJ6tIFw=",[m
       "requires": {[m
[31m-        "jsesc": "0.5.0"[m
[32m+[m[32m        "jsesc": "~0.5.0"[m
       },[m
       "dependencies": {[m
         "jsesc": {[m
[36m@@ -9218,11 +9258,11 @@[m
       "resolved": "https://registry.npmjs.org/renderkid/-/renderkid-2.0.1.tgz",[m
       "integrity": "sha1-iYyr/Ivt5Le5ETWj/9Mj5YwNsxk=",[m
       "requires": {[m
[31m-        "css-select": "1.2.0",[m
[31m-        "dom-converter": "0.1.4",[m
[31m-        "htmlparser2": "3.3.0",[m
[31m-        "strip-ansi": "3.0.1",[m
[31m-        "utila": "0.3.3"[m
[32m+[m[32m        "css-select": "^1.1.0",[m
[32m+[m[32m        "dom-converter": "~0.1",[m
[32m+[m[32m        "htmlparser2": "~3.3.0",[m
[32m+[m[32m        "strip-ansi": "^3.0.0",[m
[32m+[m[32m        "utila": "~0.3"[m
       },[m
       "dependencies": {[m
         "utila": {[m
[36m@@ -9247,7 +9287,7 @@[m
       "resolved": "https://registry.npmjs.org/repeating/-/repeating-2.0.1.tgz",[m
       "integrity": "sha1-UhTFOpJtNVJwdSf7q0FdvAjQbdo=",[m
       "requires": {[m
[31m-        "is-finite": "1.0.2"[m
[32m+[m[32m        "is-finite": "^1.0.0"[m
       }[m
     },[m
     "request": {[m
[36m@@ -9255,28 +9295,28 @@[m
       "resolved": "https://registry.npmjs.org/request/-/request-2.83.0.tgz",[m
       "integrity": "sha512-lR3gD69osqm6EYLk9wB/G1W/laGWjzH90t1vEa2xuxHD5KUrSzp9pUSfTm+YC5Nxt2T8nMPEvKlhbQayU7bgFw==",[m
       "requires": {[m
[31m-        "aws-sign2": "0.7.0",[m
[31m-        "aws4": "1.6.0",[m
[31m-        "caseless": "0.12.0",[m
[31m-        "combined-stream": "1.0.5",[m
[31m-        "extend": "3.0.1",[m
[31m-        "forever-agent": "0.6.1",[m
[31m-        "form-data": "2.3.1",[m
[31m-        "har-validator": "5.0.3",[m
[31m-        "hawk": "6.0.2",[m
[31m-        "http-signature": "1.2.0",[m
[31m-        "is-typedarray": "1.0.0",[m
[31m-        "isstream": "0.1.2",[m
[31m-        "json-stringify-safe": "5.0.1",[m
[31m-        "mime-types": "2.1.17",[m
[31m-        "oauth-sign": "0.8.2",[m
[31m-        "performance-now": "2.1.0",[m
[31m-        "qs": "6.5.1",[m
[31m-        "safe-buffer": "5.1.1",[m
[31m-        "stringstream": "0.0.5",[m
[31m-        "tough-cookie": "2.3.3",[m
[31m-        "tunnel-agent": "0.6.0",[m
[31m-        "uuid": "3.1.0"[m
[32m+[m[32m        "aws-sign2": "~0.7.0",[m
[32m+[m[32m        "aws4": "^1.6.0",[m
[32m+[m[32m        "caseless": "~0.12.0",[m
[32m+[m[32m        "combined-stream": "~1.0.5",[m
[32m+[m[32m        "extend": "~3.0.1",[m
[32m+[m[32m        "forever-agent": "~0.6.1",[m
[32m+[m[32m        "form-data": "~2.3.1",[m
[32m+[m[32m        "har-validator": "~5.0.3",[m
[32m+[m[32m        "hawk": "~6.0.2",[m
[32m+[m[32m        "http-signature": "~1.2.0",[m
[32m+[m[32m        "is-typedarray": "~1.0.0",[m
[32m+[m[32m        "isstream": "~0.1.2",[m
[32m+[m[32m        "json-stringify-safe": "~5.0.1",[m
[32m+[m[32m        "mime-types": "~2.1.17",[m
[32m+[m[32m        "oauth-sign": "~0.8.2",[m
[32m+[m[32m        "performance-now": "^2.1.0",[m
[32m+[m[32m        "qs": "~6.5.1",[m
[32m+[m[32m        "safe-buffer": "^5.1.1",[m
[32m+[m[32m        "stringstream": "~0.0.5",[m
[32m+[m[32m        "tough-cookie": "~2.3.3",[m
[32m+[m[32m        "tunnel-agent": "^0.6.0",[m
[32m+[m[32m        "uuid": "^3.1.0"[m
       }[m
     },[m
     "require-directory": {[m
[36m@@ -9299,8 +9339,8 @@[m
       "resolved": "https://registry.npmjs.org/require-uncached/-/require-uncached-1.0.3.tgz",[m
       "integrity": "sha1-Tg1W1slmL9MeQwEcS5WqSZVUIdM=",[m
       "requires": {[m
[31m-        "caller-path": "0.1.0",[m
[31m-        "resolve-from": "1.0.1"[m
[32m+[m[32m        "caller-path": "^0.1.0",[m
[32m+[m[32m        "resolve-from": "^1.0.0"[m
       }[m
     },[m
     "requires-port": {[m
[36m@@ -9318,7 +9358,7 @@[m
       "resolved": "https://registry.npmjs.org/resolve/-/resolve-1.5.0.tgz",[m
       "integrity": "sha512-hgoSGrc3pjzAPHNBg+KnFcK2HwlHTs/YrAGUr6qgTVUZmXv1UEXXl0bZNBKMA9fud6lRYFdPGz0xXxycPzmmiw==",[m
       "requires": {[m
[31m-        "path-parse": "1.0.5"[m
[32m+[m[32m        "path-parse": "^1.0.5"[m
       }[m
     },[m
     "resolve-cwd": {[m
[36m@@ -9326,7 +9366,7 @@[m
       "resolved": "https://registry.npmjs.org/resolve-cwd/-/resolve-cwd-2.0.0.tgz",[m
       "integrity": "sha1-AKn3OHVW4nA46uIyyqNypqWbZlo=",[m
       "requires": {[m
[31m-        "resolve-from": "3.0.0"[m
[32m+[m[32m        "resolve-from": "^3.0.0"[m
       },[m
       "dependencies": {[m
         "resolve-from": {[m
[36m@@ -9341,8 +9381,8 @@[m
       "resolved": "https://registry.npmjs.org/resolve-dir/-/resolve-dir-1.0.1.tgz",[m
       "integrity": "sha1-eaQGRMNivoLybv/nOcm7U4IEb0M=",[m
       "requires": {[m
[31m-        "expand-tilde": "2.0.2",[m
[31m-        "global-modules": "1.0.0"[m
[32m+[m[32m        "expand-tilde": "^2.0.0",[m
[32m+[m[32m        "global-modules": "^1.0.0"[m
       }[m
     },[m
     "resolve-from": {[m
[36m@@ -9360,8 +9400,8 @@[m
       "resolved": "https://registry.npmjs.org/restore-cursor/-/restore-cursor-2.0.0.tgz",[m
       "integrity": "sha1-n37ih/gv0ybU/RYpI9YhKe7g368=",[m
       "requires": {[m
[31m-        "onetime": "2.0.1",[m
[31m-        "signal-exit": "3.0.2"[m
[32m+[m[32m        "onetime": "^2.0.0",[m
[32m+[m[32m        "signal-exit": "^3.0.2"[m
       }[m
     },[m
     "right-align": {[m
[36m@@ -9369,7 +9409,7 @@[m
       "resolved": "https://registry.npmjs.org/right-align/-/right-align-0.1.3.tgz",[m
       "integrity": "sha1-YTObci/mo1FWiSENJOFMlhSGE+8=",[m
       "requires": {[m
[31m-        "align-text": "0.1.4"[m
[32m+[m[32m        "align-text": "^0.1.1"[m
       }[m
     },[m
     "rimraf": {[m
[36m@@ -9377,7 +9417,7 @@[m
       "resolved": "https://registry.npmjs.org/rimraf/-/rimraf-2.6.2.tgz",[m
       "integrity": "sha512-lreewLK/BlghmxtfH36YYVg1i8IAce4TI7oao75I1g245+6BctqTVQiBP3YUJ9C6DQOXJmkYR9X9fCLtCOJc5w==",[m
       "requires": {[m
[31m-        "glob": "7.1.2"[m
[32m+[m[32m        "glob": "^7.0.5"[m
       }[m
     },[m
     "ripemd160": {[m
[36m@@ -9385,8 +9425,8 @@[m
       "resolved": "https://registry.npmjs.org/ripemd160/-/ripemd160-2.0.1.tgz",[m
       "integrity": "sha1-D0WEKVxTo2KK9+bXmsohzlfRxuc=",[m
       "requires": {[m
[31m-        "hash-base": "2.0.2",[m
[31m-        "inherits": "2.0.3"[m
[32m+[m[32m        "hash-base": "^2.0.0",[m
[32m+[m[32m        "inherits": "^2.0.1"[m
       }[m
     },[m
     "run-async": {[m
[36m@@ -9394,7 +9434,7 @@[m
       "resolved": "https://registry.npmjs.org/run-async/-/run-async-2.3.0.tgz",[m
       "integrity": "sha1-A3GrSuC91yDUFm19/aZP96RFpsA=",[m
       "requires": {[m
[31m-        "is-promise": "2.1.0"[m
[32m+[m[32m        "is-promise": "^2.1.0"[m
       }[m
     },[m
     "rx-lite": {[m
[36m@@ -9407,7 +9447,7 @@[m
       "resolved": "https://registry.npmjs.org/rx-lite-aggregates/-/rx-lite-aggregates-4.0.8.tgz",[m
       "integrity": "sha1-dTuHqJoRyVRnxKwWJsTvxOBcZ74=",[m
       "requires": {[m
[31m-        "rx-lite": "4.0.8"[m
[32m+[m[32m        "rx-lite": "*"[m
       }[m
     },[m
     "safe-buffer": {[m
[36m@@ -9420,13 +9460,13 @@[m
       "resolved": "https://registry.npmjs.org/sane/-/sane-1.6.0.tgz",[m
       "integrity": "sha1-lhDEUjB6E10pwf3+JUcDQYDEZ3U=",[m
       "requires": {[m
[31m-        "anymatch": "1.3.2",[m
[31m-        "exec-sh": "0.2.1",[m
[31m-        "fb-watchman": "1.9.2",[m
[31m-        "minimatch": "3.0.4",[m
[31m-        "minimist": "1.2.0",[m
[31m-        "walker": "1.0.7",[m
[31m-        "watch": "0.10.0"[m
[32m+[m[32m        "anymatch": "^1.3.0",[m
[32m+[m[32m        "exec-sh": "^0.2.0",[m
[32m+[m[32m        "fb-watchman": "^1.8.0",[m
[32m+[m[32m        "minimatch": "^3.0.2",[m
[32m+[m[32m        "minimist": "^1.1.1",[m
[32m+[m[32m        "walker": "~1.0.5",[m
[32m+[m[32m        "watch": "~0.10.0"[m
       },[m
       "dependencies": {[m
         "bser": {[m
[36m@@ -9434,7 +9474,7 @@[m
           "resolved": "https://registry.npmjs.org/bser/-/bser-1.0.2.tgz",[m
           "integrity": "sha1-OBEWlwsqbe6lZG3RXdcnhES1YWk=",[m
           "requires": {[m
[31m-            "node-int64": "0.4.0"[m
[32m+[m[32m            "node-int64": "^0.4.0"[m
           }[m
         },[m
         "fb-watchman": {[m
[36m@@ -9462,8 +9502,8 @@[m
       "resolved": "https://registry.npmjs.org/scheduler/-/scheduler-0.13.3.tgz",[m
       "integrity": "sha512-UxN5QRYWtpR1egNWzJcVLk8jlegxAugswQc984lD3kU7NuobsO37/sRfbpTdBjtnD5TBNFA2Q2oLV5+UmPSmEQ==",[m
       "requires": {[m
[31m-        "loose-envify": "1.3.1",[m
[31m-        "object-assign": "4.1.1"[m
[32m+[m[32m        "loose-envify": "^1.1.0",[m
[32m+[m[32m        "object-assign": "^4.1.1"[m
       }[m
     },[m
     "schema-utils": {[m
[36m@@ -9471,7 +9511,7 @@[m
       "resolved": "https://registry.npmjs.org/schema-utils/-/schema-utils-0.3.0.tgz",[m
       "integrity": "sha1-9YdyIs4+kx7a4DnxfrNxbnE3+M8=",[m
       "requires": {[m
[31m-        "ajv": "5.5.2"[m
[32m+[m[32m        "ajv": "^5.0.0"[m
       }[m
     },[m
     "select-hose": {[m
[36m@@ -9497,7 +9537,7 @@[m
       "resolved": "https://registry.npmjs.org/semver-diff/-/semver-diff-2.1.0.tgz",[m
       "integrity": "sha1-S7uEN8jTfksM8aaP1ybsbWRdbTY=",[m
       "requires": {[m
[31m-        "semver": "5.4.1"[m
[32m+[m[32m        "semver": "^5.0.3"[m
       }[m
     },[m
     "send": {[m
[36m@@ -9506,18 +9546,18 @@[m
       "integrity": "sha512-ElCLJdJIKPk6ux/Hocwhk7NFHpI3pVm/IZOYWqUmoxcgeyM+MpxHHKhb8QmlJDX1pU6WrgaHBkVNm73Sv7uc2A==",[m
       "requires": {[m
         "debug": "2.6.9",[m
[31m-        "depd": "1.1.1",[m
[31m-        "destroy": "1.0.4",[m
[31m-        "encodeurl": "1.0.1",[m
[31m-        "escape-html": "1.0.3",[m
[31m-        "etag": "1.8.1",[m
[32m+[m[32m        "depd": "~1.1.1",[m
[32m+[m[32m        "destroy": "~1.0.4",[m
[32m+[m[32m        "encodeurl": "~1.0.1",[m
[32m+[m[32m        "escape-html": "~1.0.3",[m
[32m+[m[32m        "etag": "~1.8.1",[m
         "fresh": "0.5.2",[m
[31m-        "http-errors": "1.6.2",[m
[32m+[m[32m        "http-errors": "~1.6.2",[m
         "mime": "1.4.1",[m
         "ms": "2.0.0",[m
[31m-        "on-finished": "2.3.0",[m
[31m-        "range-parser": "1.2.0",[m
[31m-        "statuses": "1.3.1"[m
[32m+[m[32m        "on-finished": "~2.3.0",[m
[32m+[m[32m        "range-parser": "~1.2.0",[m
[32m+[m[32m        "statuses": "~1.3.1"[m
       },[m
       "dependencies": {[m
         "mime": {[m
[36m@@ -9532,13 +9572,13 @@[m
       "resolved": "https://registry.npmjs.org/serve-index/-/serve-index-1.9.1.tgz",[m
       "integrity": "sha1-03aNabHn2C5c4FD/9bRTvqEqkjk=",[m
       "requires": {[m
[31m-        "accepts": "1.3.4",[m
[32m+[m[32m        "accepts": "~1.3.4",[m
         "batch": "0.6.1",[m
         "debug": "2.6.9",[m
[31m-        "escape-html": "1.0.3",[m
[31m-        "http-errors": "1.6.2",[m
[31m-        "mime-types": "2.1.17",[m
[31m-        "parseurl": "1.3.2"[m
[32m+[m[32m        "escape-html": "~1.0.3",[m
[32m+[m[32m        "http-errors": "~1.6.2",[m
[32m+[m[32m        "mime-types": "~2.1.17",[m
[32m+[m[32m        "parseurl": "~1.3.2"[m
       }[m
     },[m
     "serve-static": {[m
[36m@@ -9546,9 +9586,9 @@[m
       "resolved": "https://registry.npmjs.org/serve-static/-/serve-static-1.13.1.tgz",[m
       "integrity": "sha512-hSMUZrsPa/I09VYFJwa627JJkNs0NrfL1Uzuup+GqHfToR2KcsXFymXSV90hoyw3M+msjFuQly+YzIH/q0MGlQ==",[m
       "requires": {[m
[31m-        "encodeurl": "1.0.1",[m
[31m-        "escape-html": "1.0.3",[m
[31m-        "parseurl": "1.3.2",[m
[32m+[m[32m        "encodeurl": "~1.0.1",[m
[32m+[m[32m        "escape-html": "~1.0.3",[m
[32m+[m[32m        "parseurl": "~1.3.2",[m
         "send": "0.16.1"[m
       }[m
     },[m
[36m@@ -9582,8 +9622,8 @@[m
       "resolved": "https://registry.npmjs.org/sha.js/-/sha.js-2.4.9.tgz",[m
       "integrity": "sha512-G8zektVqbiPHrylgew9Zg1VRB1L/DtXNUVAM6q4QLy8NE3qtHlFXTf8VLL4k1Yl6c7NMjtZUTdXV+X44nFaT6A==",[m
       "requires": {[m
[31m-        "inherits": "2.0.3",[m
[31m-        "safe-buffer": "5.1.1"[m
[32m+[m[32m        "inherits": "^2.0.1",[m
[32m+[m[32m        "safe-buffer": "^5.0.1"[m
       }[m
     },[m
     "shebang-command": {[m
[36m@@ -9591,7 +9631,7 @@[m
       "resolved": "https://registry.npmjs.org/shebang-command/-/shebang-command-1.2.0.tgz",[m
       "integrity": "sha1-RKrGW2lbAzmJaMOfNj/uXer98eo=",[m
       "requires": {[m
[31m-        "shebang-regex": "1.0.0"[m
[32m+[m[32m        "shebang-regex": "^1.0.0"[m
       }[m
     },[m
     "shebang-regex": {[m
[36m@@ -9604,10 +9644,10 @@[m
       "resolved": "https://registry.npmjs.org/shell-quote/-/shell-quote-1.6.1.tgz",[m
       "integrity": "sha1-9HgZSczkAmlxJ0MOo7PFR29IF2c=",[m
       "requires": {[m
[31m-        "array-filter": "0.0.1",[m
[31m-        "array-map": "0.0.0",[m
[31m-        "array-reduce": "0.0.0",[m
[31m-        "jsonify": "0.0.0"[m
[32m+[m[32m        "array-filter": "~0.0.0",[m
[32m+[m[32m        "array-map": "~0.0.0",[m
[32m+[m[32m        "array-reduce": "~0.0.0",[m
[32m+[m[32m        "jsonify": "~0.0.0"[m
       }[m
     },[m
     "shellwords": {[m
[36m@@ -9630,7 +9670,7 @@[m
       "resolved": "https://registry.npmjs.org/slice-ansi/-/slice-ansi-1.0.0.tgz",[m
       "integrity": "sha512-POqxBK6Lb3q6s047D/XsDVNPnF9Dl8JSaqe9h9lURl0OdNqy/ujDrOiIHtsqXMGbWWTIomRzAMaTyawAU//Reg==",[m
       "requires": {[m
[31m-        "is-fullwidth-code-point": "2.0.0"[m
[32m+[m[32m        "is-fullwidth-code-point": "^2.0.0"[m
       }[m
     },[m
     "slide": {[m
[36m@@ -9643,7 +9683,7 @@[m
       "resolved": "https://registry.npmjs.org/sntp/-/sntp-2.1.0.tgz",[m
       "integrity": "sha512-FL1b58BDrqS3A11lJ0zEdnJ3UOKqVxawAkF3k7F0CVN7VQ34aZrV+G8BZ1WC9ZL7NyrwsW0oviwsWDgRuVYtJg==",[m
       "requires": {[m
[31m-        "hoek": "4.2.0"[m
[32m+[m[32m        "hoek": "4.x.x"[m
       }[m
     },[m
     "sockjs": {[m
[36m@@ -9651,8 +9691,8 @@[m
       "resolved": "https://registry.npmjs.org/sockjs/-/sockjs-0.3.18.tgz",[m
       "integrity": "sha1-2bKJMWyn33dZXvKZ4HXw+TfrQgc=",[m
       "requires": {[m
[31m-        "faye-websocket": "0.10.0",[m
[31m-        "uuid": "2.0.3"[m
[32m+[m[32m        "faye-websocket": "^0.10.0",[m
[32m+[m[32m        "uuid": "^2.0.2"[m
       },[m
       "dependencies": {[m
         "faye-websocket": {[m
[36m@@ -9660,7 +9700,7 @@[m
           "resolved": "https://registry.npmjs.org/faye-websocket/-/faye-websocket-0.10.0.tgz",[m
           "integrity": "sha1-TkkvjQTftviQA1B/btvy1QHnxvQ=",[m
           "requires": {[m
[31m-            "websocket-driver": "0.7.0"[m
[32m+[m[32m            "websocket-driver": ">=0.5.1"[m
           }[m
         },[m
         "uuid": {[m
[36m@@ -9675,12 +9715,12 @@[m
       "resolved": "https://registry.npmjs.org/sockjs-client/-/sockjs-client-1.1.4.tgz",[m
       "integrity": "sha1-W6vjhrd15M8U51IJEUUmVAFsixI=",[m
       "requires": {[m
[31m-        "debug": "2.6.9",[m
[32m+[m[32m        "debug": "^2.6.6",[m
         "eventsource": "0.1.6",[m
[31m-        "faye-websocket": "0.11.1",[m
[31m-        "inherits": "2.0.3",[m
[31m-        "json3": "3.3.2",[m
[31m-        "url-parse": "1.2.0"[m
[32m+[m[32m        "faye-websocket": "~0.11.0",[m
[32m+[m[32m        "inherits": "^2.0.1",[m
[32m+[m[32m        "json3": "^3.3.2",[m
[32m+[m[32m        "url-parse": "^1.1.8"[m
       }[m
     },[m
     "sort-keys": {[m
[36m@@ -9688,7 +9728,7 @@[m
       "resolved": "https://registry.npmjs.org/sort-keys/-/sort-keys-1.1.2.tgz",[m
       "integrity": "sha1-RBttTTRnmPG05J6JIK37oOVD+a0=",[m
       "requires": {[m
[31m-        "is-plain-obj": "1.1.0"[m
[32m+[m[32m        "is-plain-obj": "^1.0.0"[m
       }[m
     },[m
     "source-list-map": {[m
[36m@@ -9706,7 +9746,7 @@[m
       "resolved": "https://registry.npmjs.org/source-map-support/-/source-map-support-0.4.18.tgz",[m
       "integrity": "sha512-try0/JqxPLF9nOjvSta7tVondkP5dwgyLDjVoyMDlmjugT2lRZ1OfsrYTkCd2hkDnJTKRbO/Rl3orm8vlsUzbA==",[m
       "requires": {[m
[31m-        "source-map": "0.5.7"[m
[32m+[m[32m        "source-map": "^0.5.6"[m
       },[m
       "dependencies": {[m
         "source-map": {[m
[36m@@ -9721,7 +9761,7 @@[m
       "resolved": "https://registry.npmjs.org/spdx-correct/-/spdx-correct-1.0.2.tgz",[m
       "integrity": "sha1-SzBz2TP/UfORLwOsVRlJikFQ20A=",[m
       "requires": {[m
[31m-        "spdx-license-ids": "1.2.2"[m
[32m+[m[32m        "spdx-license-ids": "^1.0.2"[m
       }[m
     },[m
     "spdx-expression-parse": {[m
[36m@@ -9739,12 +9779,12 @@[m
       "resolved": "https://registry.npmjs.org/spdy/-/spdy-3.4.7.tgz",[m
       "integrity": "sha1-Qv9B7OXMD5mjpsKKq7c/XDsDrLw=",[m
       "requires": {[m
[31m-        "debug": "2.6.9",[m
[31m-        "handle-thing": "1.2.5",[m
[31m-        "http-deceiver": "1.2.7",[m
[31m-        "safe-buffer": "5.1.1",[m
[31m-        "select-hose": "2.0.0",[m
[31m-        "spdy-transport": "2.0.20"[m
[32m+[m[32m        "debug": "^2.6.8",[m
[32m+[m[32m        "handle-thing": "^1.2.5",[m
[32m+[m[32m        "http-deceiver": "^1.2.7",[m
[32m+[m[32m        "safe-buffer": "^5.0.1",[m
[32m+[m[32m        "select-hose": "^2.0.0",[m
[32m+[m[32m        "spdy-transport": "^2.0.18"[m
       }[m
     },[m
     "spdy-transport": {[m
[36m@@ -9752,13 +9792,13 @@[m
       "resolved": "https://registry.npmjs.org/spdy-transport/-/spdy-transport-2.0.20.tgz",[m
       "integrity": "sha1-c15yBUxIayNU/onnAiVgBKOazk0=",[m
       "requires": {[m
[31m-        "debug": "2.6.9",[m
[31m-        "detect-node": "2.0.3",[m
[31m-        "hpack.js": "2.1.6",[m
[31m-        "obuf": "1.1.1",[m
[31m-        "readable-stream": "2.3.3",[m
[31m-        "safe-buffer": "5.1.1",[m
[31m-        "wbuf": "1.7.2"[m
[32m+[m[32m        "debug": "^2.6.8",[m
[32m+[m[32m        "detect-node": "^2.0.3",[m
[32m+[m[32m        "hpack.js": "^2.1.6",[m
[32m+[m[32m        "obuf": "^1.1.1",[m
[32m+[m[32m        "readable-stream": "^2.2.9",[m
[32m+[m[32m        "safe-buffer": "^5.0.1",[m
[32m+[m[32m        "wbuf": "^1.7.2"[m
       }[m
     },[m
     "sprintf-js": {[m
[36m@@ -9771,14 +9811,14 @@[m
       "resolved": "https://registry.npmjs.org/sshpk/-/sshpk-1.13.1.tgz",[m
       "integrity": "sha1-US322mKHFEMW3EwY/hzx2UBzm+M=",[m
       "requires": {[m
[31m-        "asn1": "0.2.3",[m
[31m-        "assert-plus": "1.0.0",[m
[31m-        "bcrypt-pbkdf": "1.0.1",[m
[31m-        "dashdash": "1.14.1",[m
[31m-        "ecc-jsbn": "0.1.1",[m
[31m-        "getpass": "0.1.7",[m
[31m-        "jsbn": "0.1.1",[m
[31m-        "tweetnacl": "0.14.5"[m
[32m+[m[32m        "asn1": "~0.2.3",[m
[32m+[m[32m        "assert-plus": "^1.0.0",[m
[32m+[m[32m        "bcrypt-pbkdf": "^1.0.0",[m
[32m+[m[32m        "dashdash": "^1.12.0",[m
[32m+[m[32m        "ecc-jsbn": "~0.1.1",[m
[32m+[m[32m        "getpass": "^0.1.1",[m
[32m+[m[32m        "jsbn": "~0.1.0",[m
[32m+[m[32m        "tweetnacl": "~0.14.0"[m
       }[m
     },[m
     "statuses": {[m
[36m@@ -9791,8 +9831,8 @@[m
       "resolved": "https://registry.npmjs.org/stream-browserify/-/stream-browserify-2.0.1.tgz",[m
       "integrity": "sha1-ZiZu5fm9uZQKTkUUyvtDu3Hlyds=",[m
       "requires": {[m
[31m-        "inherits": "2.0.3",[m
[31m-        "readable-stream": "2.3.3"[m
[32m+[m[32m        "inherits": "~2.0.1",[m
[32m+[m[32m        "readable-stream": "^2.0.2"[m
       }[m
     },[m
     "stream-http": {[m
[36m@@ -9800,11 +9840,11 @@[m
       "resolved": "https://registry.npmjs.org/stream-http/-/stream-http-2.7.2.tgz",[m
       "integrity": "sha512-c0yTD2rbQzXtSsFSVhtpvY/vS6u066PcXOX9kBB3mSO76RiUQzL340uJkGBWnlBg4/HZzqiUXtaVA7wcRcJgEw==",[m
       "requires": {[m
[31m-        "builtin-status-codes": "3.0.0",[m
[31m-        "inherits": "2.0.3",[m
[31m-        "readable-stream": "2.3.3",[m
[31m-        "to-arraybuffer": "1.0.1",[m
[31m-        "xtend": "4.0.1"[m
[32m+[m[32m        "builtin-status-codes": "^3.0.0",[m
[32m+[m[32m        "inherits": "^2.0.1",[m
[32m+[m[32m        "readable-stream": "^2.2.6",[m
[32m+[m[32m        "to-arraybuffer": "^1.0.0",[m
[32m+[m[32m        "xtend": "^4.0.0"[m
       }[m
     },[m
     "strict-uri-encode": {[m
[36m@@ -9817,7 +9857,7 @@[m
       "resolved": "https://registry.npmjs.org/string-length/-/string-length-1.0.1.tgz",[m
       "integrity": "sha1-VpcPscOFWOnnC3KL894mmsRa36w=",[m
       "requires": {[m
[31m-        "strip-ansi": "3.0.1"[m
[32m+[m[32m        "strip-ansi": "^3.0.0"[m
       }[m
     },[m
     "string-width": {[m
[36m@@ -9825,8 +9865,8 @@[m
       "resolved": "https://registry.npmjs.org/string-width/-/string-width-2.1.1.tgz",[m
       "integrity": "sha512-nOqH59deCq9SRHlxq1Aw85Jnt4w6KvLKqWVik6oA9ZklXLNIOlqg4F2yrT1MVaTjAqvVwdfeZ7w7aCvJD7ugkw==",[m
       "requires": {[m
[31m-        "is-fullwidth-code-point": "2.0.0",[m
[31m-        "strip-ansi": "4.0.0"[m
[32m+[m[32m        "is-fullwidth-code-point": "^2.0.0",[m
[32m+[m[32m        "strip-ansi": "^4.0.0"[m
       },[m
       "dependencies": {[m
         "ansi-regex": {[m
[36m@@ -9839,7 +9879,7 @@[m
           "resolved": "https://registry.npmjs.org/strip-ansi/-/strip-ansi-4.0.0.tgz",[m
           "integrity": "sha1-qEeQIusaw2iocTibY1JixQXuNo8=",[m
           "requires": {[m
[31m-            "ansi-regex": "3.0.0"[m
[32m+[m[32m            "ansi-regex": "^3.0.0"[m
           }[m
         }[m
       }[m
[36m@@ -9849,7 +9889,7 @@[m
       "resolved": "https://registry.npmjs.org/string_decoder/-/string_decoder-1.0.3.tgz",[m
       "integrity": "sha512-4AH6Z5fzNNBcH+6XDMfA/BTt87skxqJlO0lAh3Dker5zThcAxG6mKz+iGu308UKoPPQ8Dcqx/4JhujzltRa+hQ==",[m
       "requires": {[m
[31m-        "safe-buffer": "5.1.1"[m
[32m+[m[32m        "safe-buffer": "~5.1.0"[m
       }[m
     },[m
     "stringstream": {[m
[36m@@ -9862,7 +9902,7 @@[m
       "resolved": "https://registry.npmjs.org/strip-ansi/-/strip-ansi-3.0.1.tgz",[m
       "integrity": "sha1-ajhfuIU9lS1f8F0Oiq+UJ43GPc8=",[m
       "requires": {[m
[31m-        "ansi-regex": "2.1.1"[m
[32m+[m[32m        "ansi-regex": "^2.0.0"[m
       }[m
     },[m
     "strip-bom": {[m
[36m@@ -9870,7 +9910,7 @@[m
       "resolved": "https://registry.npmjs.org/strip-bom/-/strip-bom-2.0.0.tgz",[m
       "integrity": "sha1-YhmoVhZSBJHzV4i9vxRHqZx+aw4=",[m
       "requires": {[m
[31m-        "is-utf8": "0.2.1"[m
[32m+[m[32m        "is-utf8": "^0.2.0"[m
       }[m
     },[m
     "strip-eof": {[m
[36m@@ -9883,7 +9923,7 @@[m
       "resolved": "https://registry.npmjs.org/strip-indent/-/strip-indent-1.0.1.tgz",[m
       "integrity": "sha1-DHlipq3vp7vUrDZkYKY4VSrhoKI=",[m
       "requires": {[m
[31m-        "get-stdin": "4.0.1"[m
[32m+[m[32m        "get-stdin": "^4.0.1"[m
       }[m
     },[m
     "strip-json-comments": {[m
[36m@@ -9896,8 +9936,8 @@[m
       "resolved": "https://registry.npmjs.org/style-loader/-/style-loader-0.19.0.tgz",[m
       "integrity": "sha512-9mx9sC9nX1dgP96MZOODpGC6l1RzQBITI2D5WJhu+wnbrSYVKLGuy14XJSLVQih/0GFrPpjelt+s//VcZQ2Evw==",[m
       "requires": {[m
[31m-        "loader-utils": "1.1.0",[m
[31m-        "schema-utils": "0.3.0"[m
[32m+[m[32m        "loader-utils": "^1.0.2",[m
[32m+[m[32m        "schema-utils": "^0.3.0"[m
       }[m
     },[m
     "supports-color": {[m
[36m@@ -9905,7 +9945,7 @@[m
       "resolved": "https://registry.npmjs.org/supports-color/-/supports-color-5.1.0.tgz",[m
       "integrity": "sha512-Ry0AwkoKjDpVKK4sV4h6o3UJmNRbjYm2uXhwfj3J56lMVdvnUNqzQVRztOOMGQ++w1K/TjNDFvpJk0F/LoeBCQ==",[m
       "requires": {[m
[31m-        "has-flag": "2.0.0"[m
[32m+[m[32m        "has-flag": "^2.0.0"[m
       }[m
     },[m
     "svgo": {[m
[36m@@ -9913,13 +9953,13 @@[m
       "resolved": "https://registry.npmjs.org/svgo/-/svgo-0.7.2.tgz",[m
       "integrity": "sha1-n1dyQTlSE1xv779Ar+ak+qiLS7U=",[m
       "requires": {[m
[31m-        "coa": "1.0.4",[m
[31m-        "colors": "1.1.2",[m
[31m-        "csso": "2.3.2",[m
[31m-        "js-yaml": "3.7.0",[m
[31m-        "mkdirp": "0.5.1",[m
[31m-        "sax": "1.2.4",[m
[31m-        "whet.extend": "0.9.9"[m
[32m+[m[32m        "coa": "~1.0.1",[m
[32m+[m[32m        "colors": "~1.1.2",[m
[32m+[m[32m        "csso": "~2.3.1",[m
[32m+[m[32m        "js-yaml": "~3.7.0",[m
[32m+[m[32m        "mkdirp": "~0.5.1",[m
[32m+[m[32m        "sax": "~1.2.1",[m
[32m+[m[32m        "whet.extend": "~0.9.9"[m
       }[m
     },[m
     "sw-precache": {[m
[36m@@ -9927,16 +9967,16 @@[m
       "resolved": "https://registry.npmjs.org/sw-precache/-/sw-precache-5.2.0.tgz",[m
       "integrity": "sha512-sKctdX+5hUxkqJ/1DM88ubQ+QRvyw7CnxWdk909N2DgvxMqc1gcQFrwL7zpVc87wFmCA/OvRQd0iMC2XdFopYg==",[m
       "requires": {[m
[31m-        "dom-urls": "1.1.0",[m
[31m-        "es6-promise": "4.2.2",[m
[31m-        "glob": "7.1.2",[m
[31m-        "lodash.defaults": "4.2.0",[m
[31m-        "lodash.template": "4.4.0",[m
[31m-        "meow": "3.7.0",[m
[31m-        "mkdirp": "0.5.1",[m
[31m-        "pretty-bytes": "4.0.2",[m
[31m-        "sw-toolbox": "3.6.0",[m
[31m-        "update-notifier": "1.0.3"[m
[32m+[m[32m        "dom-urls": "^1.1.0",[m
[32m+[m[32m        "es6-promise": "^4.0.5",[m
[32m+[m[32m        "glob": "^7.1.1",[m
[32m+[m[32m        "lodash.defaults": "^4.2.0",[m
[32m+[m[32m        "lodash.template": "^4.4.0",[m
[32m+[m[32m        "meow": "^3.7.0",[m
[32m+[m[32m        "mkdirp": "^0.5.1",[m
[32m+[m[32m        "pretty-bytes": "^4.0.2",[m
[32m+[m[32m        "sw-toolbox": "^3.4.0",[m
[32m+[m[32m        "update-notifier": "^1.0.3"[m
       }[m
     },[m
     "sw-precache-webpack-plugin": {[m
[36m@@ -9944,9 +9984,9 @@[m
       "resolved": "https://registry.npmjs.org/sw-precache-webpack-plugin/-/sw-precache-webpack-plugin-0.11.4.tgz",[m
       "integrity": "sha1-ppUBflTu1XVVFJOlGdwdqNotxeA=",[m
       "requires": {[m
[31m-        "del": "2.2.2",[m
[31m-        "sw-precache": "5.2.0",[m
[31m-        "uglify-js": "3.3.4"[m
[32m+[m[32m        "del": "^2.2.2",[m
[32m+[m[32m        "sw-precache": "^5.1.1",[m
[32m+[m[32m        "uglify-js": "^3.0.13"[m
       }[m
     },[m
     "sw-toolbox": {[m
[36m@@ -9954,8 +9994,8 @@[m
       "resolved": "https://registry.npmjs.org/sw-toolbox/-/sw-toolbox-3.6.0.tgz",[m
       "integrity": "sha1-Jt8dHHA0hljk3qKIQxkUm3sxg7U=",[m
       "requires": {[m
[31m-        "path-to-regexp": "1.7.0",[m
[31m-        "serviceworker-cache-polyfill": "4.0.0"[m
[32m+[m[32m        "path-to-regexp": "^1.0.1",[m
[32m+[m[32m        "serviceworker-cache-polyfill": "^4.0.0"[m
       }[m
     },[m
     "symbol-tree": {[m
[36m@@ -9968,12 +10008,12 @@[m
       "resolved": "https://registry.npmjs.org/table/-/table-4.0.2.tgz",[m
       "integrity": "sha512-UUkEAPdSGxtRpiV9ozJ5cMTtYiqz7Ni1OGqLXRCynrvzdtR1p+cfOWe2RJLwvUG8hNanaSRjecIqwOjqeatDsA==",[m
       "requires": {[m
[31m-        "ajv": "5.5.2",[m
[31m-        "ajv-keywords": "2.1.1",[m
[31m-        "chalk": "2.3.0",[m
[31m-        "lodash": "4.17.4",[m
[32m+[m[32m        "ajv": "^5.2.3",[m
[32m+[m[32m        "ajv-keywords": "^2.1.0",[m
[32m+[m[32m        "chalk": "^2.1.0",[m
[32m+[m[32m        "lodash": "^4.17.4",[m
         "slice-ansi": "1.0.0",[m
[31m-        "string-width": "2.1.1"[m
[32m+[m[32m        "string-width": "^2.1.1"[m
       },[m
       "dependencies": {[m
         "chalk": {[m
[36m@@ -9981,9 +10021,9 @@[m
           "resolved": "https://registry.npmjs.org/chalk/-/chalk-2.3.0.tgz",[m
           "integrity": "sha512-Az5zJR2CBujap2rqXGaJKaPHyJ0IrUimvYNX+ncCy8PJP4ltOGTrHUIo097ZaL2zMeKYpiCdqDvS6zdrTFok3Q==",[m
           "requires": {[m
[31m-            "ansi-styles": "3.2.0",[m
[31m-            "escape-string-regexp": "1.0.5",[m
[31m-            "supports-color": "4.5.0"[m
[32m+[m[32m            "ansi-styles": "^3.1.0",[m
[32m+[m[32m            "escape-string-regexp": "^1.0.5",[m
[32m+[m[32m            "supports-color": "^4.0.0"[m
           }[m
         },[m
         "supports-color": {[m
[36m@@ -9991,7 +10031,7 @@[m
           "resolved": "https://registry.npmjs.org/supports-color/-/supports-color-4.5.0.tgz",[m
           "integrity": "sha1-vnoN5ITexcXN34s9WRJQRJEvY1s=",[m
           "requires": {[m
[31m-            "has-flag": "2.0.0"[m
[32m+[m[32m            "has-flag": "^2.0.0"[m
           }[m
         }[m
       }[m
[36m@@ -10006,11 +10046,11 @@[m
       "resolved": "https://registry.npmjs.org/test-exclude/-/test-exclude-4.1.1.tgz",[m
       "integrity": "sha512-35+Asrsk3XHJDBgf/VRFexPgh3UyETv8IAn/LRTiZjVy6rjPVqdEk8dJcJYBzl1w0XCJM48lvTy8SfEsCWS4nA==",[m
       "requires": {[m
[31m-        "arrify": "1.0.1",[m
[31m-        "micromatch": "2.3.11",[m
[31m-        "object-assign": "4.1.1",[m
[31m-        "read-pkg-up": "1.0.1",[m
[31m-        "require-main-filename": "1.0.1"[m
[32m+[m[32m        "arrify": "^1.0.1",[m
[32m+[m[32m        "micromatch": "^2.3.11",[m
[32m+[m[32m        "object-assign": "^4.1.0",[m
[32m+[m[32m        "read-pkg-up": "^1.0.1",[m
[32m+[m[32m        "require-main-filename": "^1.0.1"[m
       }[m
     },[m
     "text-table": {[m
[36m@@ -10048,7 +10088,7 @@[m
       "resolved": "https://registry.npmjs.org/timers-browserify/-/timers-browserify-2.0.4.tgz",[m
       "integrity": "sha512-uZYhyU3EX8O7HQP+J9fTVYwsq90Vr68xPEFo7yrVImIxYvHgukBEgOB/SgGoorWVTzGM/3Z+wUNnboA4M8jWrg==",[m
       "requires": {[m
[31m-        "setimmediate": "1.0.5"[m
[32m+[m[32m        "setimmediate": "^1.0.4"[m
       }[m
     },[m
     "tmp": {[m
[36m@@ -10056,7 +10096,7 @@[m
       "resolved": "https://registry.npmjs.org/tmp/-/tmp-0.0.33.tgz",[m
       "integrity": "sha512-jRCJlojKnZ3addtTOjdIqoRuPEKBvNXcGYqzO6zWZX8KfKEpnGY5jfggJQ3EjKuu8D4bJRr0y+cYJFmYbImXGw==",[m
       "requires": {[m
[31m-        "os-tmpdir": "1.0.2"[m
[32m+[m[32m        "os-tmpdir": "~1.0.2"[m
       }[m
     },[m
     "tmpl": {[m
[36m@@ -10084,7 +10124,7 @@[m
       "resolved": "https://registry.npmjs.org/tough-cookie/-/tough-cookie-2.3.3.tgz",[m
       "integrity": "sha1-C2GKVWW23qkL80JdBNVe3EdadWE=",[m
       "requires": {[m
[31m-        "punycode": "1.4.1"[m
[32m+[m[32m        "punycode": "^1.4.1"[m
       }[m
     },[m
     "tr46": {[m
[36m@@ -10112,7 +10152,7 @@[m
       "resolved": "https://registry.npmjs.org/tunnel-agent/-/tunnel-agent-0.6.0.tgz",[m
       "integrity": "sha1-J6XeoGs2sEoKmWZ3SykIaPD8QP0=",[m
       "requires": {[m
[31m-        "safe-buffer": "5.1.1"[m
[32m+[m[32m        "safe-buffer": "^5.0.1"[m
       }[m
     },[m
     "tweetnacl": {[m
[36m@@ -10126,7 +10166,7 @@[m
       "resolved": "https://registry.npmjs.org/type-check/-/type-check-0.3.2.tgz",[m
       "integrity": "sha1-WITKtRLPHTVeP7eE8wgEsrUg23I=",[m
       "requires": {[m
[31m-        "prelude-ls": "1.1.2"[m
[32m+[m[32m        "prelude-ls": "~1.1.2"[m
       }[m
     },[m
     "type-is": {[m
[36m@@ -10135,7 +10175,7 @@[m
       "integrity": "sha1-yrEPtJCeRByChC6v4a1kbIGARBA=",[m
       "requires": {[m
         "media-typer": "0.3.0",[m
[31m-        "mime-types": "2.1.17"[m
[32m+[m[32m        "mime-types": "~2.1.15"[m
       }[m
     },[m
     "typedarray": {[m
[36m@@ -10148,8 +10188,8 @@[m
       "resolved": "https://registry.npmjs.org/uglify-js/-/uglify-js-3.3.4.tgz",[m
       "integrity": "sha512-hfIwuAQI5dlXP30UtdmWoYF9k+ypVqBXIdmd6ZKBiaNHHvA8ty7ZloMe3+7S5AEKVkxHbjByl4DfRHQ7QpZquw==",[m
       "requires": {[m
[31m-        "commander": "2.12.2",[m
[31m-        "source-map": "0.6.1"[m
[32m+[m[32m        "commander": "~2.12.1",[m
[32m+[m[32m        "source-map": "~0.6.1"[m
       }[m
     },[m
     "uglify-to-browserify": {[m
[36m@@ -10163,9 +10203,9 @@[m
       "resolved": "https://registry.npmjs.org/uglifyjs-webpack-plugin/-/uglifyjs-webpack-plugin-0.4.6.tgz",[m
       "integrity": "sha1-uVH0q7a9YX5m9j64kUmOORdj4wk=",[m
       "requires": {[m
[31m-        "source-map": "0.5.7",[m
[31m-        "uglify-js": "2.8.29",[m
[31m-        "webpack-sources": "1.1.0"[m
[32m+[m[32m        "source-map": "^0.5.6",[m
[32m+[m[32m        "uglify-js": "^2.8.29",[m
[32m+[m[32m        "webpack-sources": "^1.0.1"[m
       },[m
       "dependencies": {[m
         "source-map": {[m
[36m@@ -10178,9 +10218,9 @@[m
           "resolved": "https://registry.npmjs.org/uglify-js/-/uglify-js-2.8.29.tgz",[m
           "integrity": "sha1-KcVzMUgFe7Th913zW3qcty5qWd0=",[m
           "requires": {[m
[31m-            "source-map": "0.5.7",[m
[31m-            "uglify-to-browserify": "1.0.2",[m
[31m-            "yargs": "3.10.0"[m
[32m+[m[32m            "source-map": "~0.5.1",[m
[32m+[m[32m            "uglify-to-browserify": "~1.0.0",[m
[32m+[m[32m            "yargs": "~3.10.0"[m
           }[m
         },[m
         "yargs": {[m
[36m@@ -10188,9 +10228,9 @@[m
           "resolved": "https://registry.npmjs.org/yargs/-/yargs-3.10.0.tgz",[m
           "integrity": "sha1-9+572FfdfB0tOMDnTvvWgdFDH9E=",[m
           "requires": {[m
[31m-            "camelcase": "1.2.1",[m
[31m-            "cliui": "2.1.0",[m
[31m-            "decamelize": "1.2.0",[m
[32m+[m[32m            "camelcase": "^1.0.2",[m
[32m+[m[32m            "cliui": "^2.1.0",[m
[32m+[m[32m            "decamelize": "^1.0.0",[m
             "window-size": "0.1.0"[m
           }[m
         }[m
[36m@@ -10201,7 +10241,7 @@[m
       "resolved": "https://registry.npmjs.org/uncontrollable/-/uncontrollable-4.1.0.tgz",[m
       "integrity": "sha1-4DWCkSUuGGUiLZCTmxny9J+Bwak=",[m
       "requires": {[m
[31m-        "invariant": "2.2.2"[m
[32m+[m[32m        "invariant": "^2.1.0"[m
       }[m
     },[m
     "uniq": {[m
[36m@@ -10214,7 +10254,7 @@[m
       "resolved": "https://registry.npmjs.org/uniqid/-/uniqid-4.1.1.tgz",[m
       "integrity": "sha1-iSIN32t1GuUrX3JISGNShZa7hME=",[m
       "requires": {[m
[31m-        "macaddress": "0.2.8"[m
[32m+[m[32m        "macaddress": "^0.2.8"[m
       }[m
     },[m
     "uniqs": {[m
[36m@@ -10242,14 +10282,14 @@[m
       "resolved": "https://registry.npmjs.org/update-notifier/-/update-notifier-1.0.3.tgz",[m
       "integrity": "sha1-j5LFFUgr1oMbfJMBPnD4dVLHz1o=",[m
       "requires": {[m
[31m-        "boxen": "0.6.0",[m
[31m-        "chalk": "1.1.3",[m
[31m-        "configstore": "2.1.0",[m
[31m-        "is-npm": "1.0.0",[m
[31m-        "latest-version": "2.0.0",[m
[31m-        "lazy-req": "1.1.0",[m
[31m-        "semver-diff": "2.1.0",[m
[31m-        "xdg-basedir": "2.0.0"[m
[32m+[m[32m        "boxen": "^0.6.0",[m
[32m+[m[32m        "chalk": "^1.0.0",[m
[32m+[m[32m        "configstore": "^2.0.0",[m
[32m+[m[32m        "is-npm": "^1.0.0",[m
[32m+[m[32m        "latest-version": "^2.0.0",[m
[32m+[m[32m        "lazy-req": "^1.1.0",[m
[32m+[m[32m        "semver-diff": "^2.0.0",[m
[32m+[m[32m        "xdg-basedir": "^2.0.0"[m
       }[m
     },[m
     "upper-case": {[m
[36m@@ -10283,9 +10323,9 @@[m
       "resolved": "https://registry.npmjs.org/url-loader/-/url-loader-0.6.2.tgz",[m
       "integrity": "sha512-h3qf9TNn53BpuXTTcpC+UehiRrl0Cv45Yr/xWayApjw6G8Bg2dGke7rIwDQ39piciWCWrC+WiqLjOh3SUp9n0Q==",[m
       "requires": {[m
[31m-        "loader-utils": "1.1.0",[m
[31m-        "mime": "1.6.0",[m
[31m-        "schema-utils": "0.3.0"[m
[32m+[m[32m        "loader-utils": "^1.0.2",[m
[32m+[m[32m        "mime": "^1.4.1",[m
[32m+[m[32m        "schema-utils": "^0.3.0"[m
       }[m
     },[m
     "url-parse": {[m
[36m@@ -10293,8 +10333,8 @@[m
       "resolved": "https://registry.npmjs.org/url-parse/-/url-parse-1.2.0.tgz",[m
       "integrity": "sha512-DT1XbYAfmQP65M/mE6OALxmXzZ/z1+e5zk2TcSKe/KiYbNGZxgtttzC0mR/sjopbpOXcbniq7eIKmocJnUWlEw==",[m
       "requires": {[m
[31m-        "querystringify": "1.0.0",[m
[31m-        "requires-port": "1.0.0"[m
[32m+[m[32m        "querystringify": "~1.0.0",[m
[32m+[m[32m        "requires-port": "~1.0.0"[m
       },[m
       "dependencies": {[m
         "querystringify": {[m
[36m@@ -10309,7 +10349,7 @@[m
       "resolved": "https://registry.npmjs.org/url-parse-lax/-/url-parse-lax-1.0.0.tgz",[m
       "integrity": "sha1-evjzA2Rem9eaJy56FKxovAYJ2nM=",[m
       "requires": {[m
[31m-        "prepend-http": "1.0.4"[m
[32m+[m[32m        "prepend-http": "^1.0.1"[m
       }[m
     },[m
     "util": {[m
[36m@@ -10352,8 +10392,8 @@[m
       "resolved": "https://registry.npmjs.org/validate-npm-package-license/-/validate-npm-package-license-3.0.1.tgz",[m
       "integrity": "sha1-KAS6vnEq0zeUWaz74kdGqywwP7w=",[m
       "requires": {[m
[31m-        "spdx-correct": "1.0.2",[m
[31m-        "spdx-expression-parse": "1.0.4"[m
[32m+[m[32m        "spdx-correct": "~1.0.0",[m
[32m+[m[32m        "spdx-expression-parse": "~1.0.0"[m
       }[m
     },[m
     "value-equal": {[m
[36m@@ -10376,9 +10416,9 @@[m
       "resolved": "https://registry.npmjs.org/verror/-/verror-1.10.0.tgz",[m
       "integrity": "sha1-OhBcoXBTr1XW4nDB+CiGguGNpAA=",[m
       "requires": {[m
[31m-        "assert-plus": "1.0.0",[m
[32m+[m[32m        "assert-plus": "^1.0.0",[m
         "core-util-is": "1.0.2",[m
[31m-        "extsprintf": "1.3.0"[m
[32m+[m[32m        "extsprintf": "^1.2.0"[m
       }[m
     },[m
     "vm-browserify": {[m
[36m@@ -10394,7 +10434,7 @@[m
       "resolved": "https://registry.npmjs.org/walker/-/walker-1.0.7.tgz",[m
       "integrity": "sha1-L3+bj9ENZ3JisYqITijRlhjgKPs=",[m
       "requires": {[m
[31m-        "makeerror": "1.0.11"[m
[32m+[m[32m        "makeerror": "1.0.x"[m
       }[m
     },[m
     "warning": {[m
[36m@@ -10402,7 +10442,7 @@[m
       "resolved": "https://registry.npmjs.org/warning/-/warning-3.0.0.tgz",[m
       "integrity": "sha1-MuU3fLVy3kqwR1O9+IIcAe1gW3w=",[m
       "requires": {[m
[31m-        "loose-envify": "1.3.1"[m
[32m+[m[32m        "loose-envify": "^1.0.0"[m
       }[m
     },[m
     "watch": {[m
[36m@@ -10415,9 +10455,9 @@[m
       "resolved": "https://registry.npmjs.org/watchpack/-/watchpack-1.4.0.tgz",[m
       "integrity": "sha1-ShRyvLuVK9Cpu0A2gB+VTfs5+qw=",[m
       "requires": {[m
[31m-        "async": "2.6.0",[m
[31m-        "chokidar": "1.7.0",[m
[31m-        "graceful-fs": "4.1.11"[m
[32m+[m[32m        "async": "^2.1.2",[m
[32m+[m[32m        "chokidar": "^1.7.0",[m
[32m+[m[32m        "graceful-fs": "^4.1.2"[m
       }[m
     },[m
     "wbuf": {[m
[36m@@ -10425,7 +10465,7 @@[m
       "resolved": "https://registry.npmjs.org/wbuf/-/wbuf-1.7.2.tgz",[m
       "integrity": "sha1-1pe5nx9ZUS3ydRvkJ2nBWAtYAf4=",[m
       "requires": {[m
[31m-        "minimalistic-assert": "1.0.0"[m
[32m+[m[32m        "minimalistic-assert": "^1.0.0"[m
       }[m
     },[m
     "webidl-conversions": {[m
[36m@@ -10438,28 +10478,28 @@[m
       "resolved": "https://registry.npmjs.org/webpack/-/webpack-3.8.1.tgz",[m
       "integrity": "sha512-5ZXLWWsMqHKFr5y0N3Eo5IIisxeEeRAajNq4mELb/WELOR7srdbQk2N5XiyNy2A/AgvlR3AmeBCZJW8lHrolbw==",[m
       "requires": {[m
[31m-        "acorn": "5.3.0",[m
[31m-        "acorn-dynamic-import": "2.0.2",[m
[31m-        "ajv": "5.5.2",[m
[31m-        "ajv-keywords": "2.1.1",[m
[31m-        "async": "2.6.0",[m
[31m-        "enhanced-resolve": "3.4.1",[m
[31m-        "escope": "3.6.0",[m
[31m-        "interpret": "1.1.0",[m
[31m-        "json-loader": "0.5.7",[m
[31m-        "json5": "0.5.1",[m
[31m-        "loader-runner": "2.3.0",[m
[31m-        "loader-utils": "1.1.0",[m
[31m-        "memory-fs": "0.4.1",[m
[31m-        "mkdirp": "0.5.1",[m
[31m-        "node-libs-browser": "2.1.0",[m
[31m-        "source-map": "0.5.7",[m
[31m-        "supports-color": "4.5.0",[m
[31m-        "tapable": "0.2.8",[m
[31m-        "uglifyjs-webpack-plugin": "0.4.6",[m
[31m-        "watchpack": "1.4.0",[m
[31m-        "webpack-sources": "1.1.0",[m
[31m-        "yargs": "8.0.2"[m
[32m+[m[32m        "acorn": "^5.0.0",[m
[32m+[m[32m        "acorn-dynamic-import": "^2.0.0",[m
[32m+[m[32m        "ajv": "^5.1.5",[m
[32m+[m[32m        "ajv-keywords": "^2.0.0",[m
[32m+[m[32m        "async": "^2.1.2",[m
[32m+[m[32m        "enhanced-resolve": "^3.4.0",[m
[32m+[m[32m        "escope": "^3.6.0",[m
[32m+[m[32m        "interpret": "^1.0.0",[m
[32m+[m[32m        "json-loader": "^0.5.4",[m
[32m+[m[32m        "json5": "^0.5.1",[m
[32m+[m[32m        "loader-runner": "^2.3.0",[m
[32m+[m[32m        "loader-utils": "^1.1.0",[m
[32m+[m[32m        "memory-fs": "~0.4.1",[m
[32m+[m[32m        "mkdirp": "~0.5.0",[m
[32m+[m[32m        "node-libs-browser": "^2.0.0",[m
[32m+[m[32m        "source-map": "^0.5.3",[m
[32m+[m[32m        "supports-color": "^4.2.1",[m
[32m+[m[32m        "tapable": "^0.2.7",[m
[32m+[m[32m        "uglifyjs-webpack-plugin": "^0.4.6",[m
[32m+[m[32m        "watchpack": "^1.4.0",[m
[32m+[m[32m        "webpack-sources": "^1.0.1",[m
[32m+[m[32m        "yargs": "^8.0.2"[m
       },[m
       "dependencies": {[m
         "camelcase": {[m
[36m@@ -10472,9 +10512,9 @@[m
           "resolved": "https://registry.npmjs.org/cliui/-/cliui-3.2.0.tgz",[m
           "integrity": "sha1-EgYBU3qRbSmUD5NNo7SNWFo5IT0=",[m
           "requires": {[m
[31m-            "string-width": "1.0.2",[m
[31m-            "strip-ansi": "3.0.1",[m
[31m-            "wrap-ansi": "2.1.0"[m
[32m+[m[32m            "string-width": "^1.0.1",[m
[32m+[m[32m            "strip-ansi": "^3.0.1",[m
[32m+[m[32m            "wrap-ansi": "^2.0.0"[m
           },[m
           "dependencies": {[m
             "string-width": {[m
[36m@@ -10482,9 +10522,9 @@[m
               "resolved": "https://registry.npmjs.org/string-width/-/string-width-1.0.2.tgz",[m
               "integrity": "sha1-EYvfW4zcUaKn5w0hHgfisLmxB9M=",[m
               "requires": {[m
[31m-                "code-point-at": "1.1.0",[m
[31m-                "is-fullwidth-code-point": "1.0.0",[m
[31m-                "strip-ansi": "3.0.1"[m
[32m+[m[32m                "code-point-at": "^1.0.0",[m
[32m+[m[32m                "is-fullwidth-code-point": "^1.0.0",[m
[32m+[m[32m                "strip-ansi": "^3.0.0"[m
               }[m
             }[m
           }[m
[36m@@ -10494,7 +10534,7 @@[m
           "resolved": "https://registry.npmjs.org/is-fullwidth-code-point/-/is-fullwidth-code-point-1.0.0.tgz",[m
           "integrity": "sha1-754xOG8DGn8NZDr4L95QxFfvAMs=",[m
           "requires": {[m
[31m-            "number-is-nan": "1.0.1"[m
[32m+[m[32m            "number-is-nan": "^1.0.0"[m
           }[m
         },[m
         "load-json-file": {[m
[36m@@ -10502,10 +10542,10 @@[m
           "resolved": "https://registry.npmjs.org/load-json-file/-/load-json-file-2.0.0.tgz",[m
           "integrity": "sha1-eUfkIUmvgNaWy/eXvKq8/h/inKg=",[m
           "requires": {[m
[31m-            "graceful-fs": "4.1.11",[m
[31m-            "parse-json": "2.2.0",[m
[31m-            "pify": "2.3.0",[m
[31m-            "strip-bom": "3.0.0"[m
[32m+[m[32m            "graceful-fs": "^4.1.2",[m
[32m+[m[32m            "parse-json": "^2.2.0",[m
[32m+[m[32m            "pify": "^2.0.0",[m
[32m+[m[32m            "strip-bom": "^3.0.0"[m
           }[m
         },[m
         "os-locale": {[m
[36m@@ -10513,9 +10553,9 @@[m
           "resolved": "https://registry.npmjs.org/os-locale/-/os-locale-2.1.0.tgz",[m
           "integrity": "sha512-3sslG3zJbEYcaC4YVAvDorjGxc7tv6KVATnLPZONiljsUncvihe9BQoVCEs0RZ1kmf4Hk9OBqlZfJZWI4GanKA==",[m
           "requires": {[m
[31m-            "execa": "0.7.0",[m
[31m-            "lcid": "1.0.0",[m
[31m-            "mem": "1.1.0"[m
[32m+[m[32m            "execa": "^0.7.0",[m
[32m+[m[32m            "lcid": "^1.0.0",[m
[32m+[m[32m            "mem": "^1.1.0"[m
           }[m
         },[m
         "path-type": {[m
[36m@@ -10523,7 +10563,7 @@[m
           "resolved": "https://registry.npmjs.org/path-type/-/path-type-2.0.0.tgz",[m
           "integrity": "sha1-8BLMuEFbcJb8LaoQVMPXI4lZTHM=",[m
           "requires": {[m
[31m-            "pify": "2.3.0"[m
[32m+[m[32m            "pify": "^2.0.0"[m
           }[m
         },[m
         "read-pkg": {[m
[36m@@ -10531,9 +10571,9 @@[m
           "resolved": "https://registry.npmjs.org/read-pkg/-/read-pkg-2.0.0.tgz",[m
           "integrity": "sha1-jvHAYjxqbbDcZxPEv6xGMysjaPg=",[m
           "requires": {[m
[31m-            "load-json-file": "2.0.0",[m
[31m-            "normalize-package-data": "2.4.0",[m
[31m-            "path-type": "2.0.0"[m
[32m+[m[32m            "load-json-file": "^2.0.0",[m
[32m+[m[32m            "normalize-package-data": "^2.3.2",[m
[32m+[m[32m            "path-type": "^2.0.0"[m
           }[m
         },[m
         "read-pkg-up": {[m
[36m@@ -10541,8 +10581,8 @@[m
           "resolved": "https://registry.npmjs.org/read-pkg-up/-/read-pkg-up-2.0.0.tgz",[m
           "integrity": "sha1-a3KoBImE4MQeeVEP1en6mbO1Sb4=",[m
           "requires": {[m
[31m-            "find-up": "2.1.0",[m
[31m-            "read-pkg": "2.0.0"[m
[32m+[m[32m            "find-up": "^2.0.0",[m
[32m+[m[32m            "read-pkg": "^2.0.0"[m
           }[m
         },[m
         "source-map": {[m
[36m@@ -10560,7 +10600,7 @@[m
           "resolved": "https://registry.npmjs.org/supports-color/-/supports-color-4.5.0.tgz",[m
           "integrity": "sha1-vnoN5ITexcXN34s9WRJQRJEvY1s=",[m
           "requires": {[m
[31m-            "has-flag": "2.0.0"[m
[32m+[m[32m            "has-flag": "^2.0.0"[m
           }[m
         },[m
         "which-module": {[m
[36m@@ -10573,19 +10613,19 @@[m
           "resolved": "https://registry.npmjs.org/yargs/-/yargs-8.0.2.tgz",[m
           "integrity": "sha1-YpmpBVsc78lp/355wdkY3Osiw2A=",[m
           "requires": {[m
[31m-            "camelcase": "4.1.0",[m
[31m-            "cliui": "3.2.0",[m
[31m-            "decamelize": "1.2.0",[m
[31m-            "get-caller-file": "1.0.2",[m
[31m-            "os-locale": "2.1.0",[m
[31m-            "read-pkg-up": "2.0.0",[m
[31m-            "require-directory": "2.1.1",[m
[31m-            "require-main-filename": "1.0.1",[m
[31m-            "set-blocking": "2.0.0",[m
[31m-            "string-width": "2.1.1",[m
[31m-            "which-module": "2.0.0",[m
[31m-            "y18n": "3.2.1",[m
[31m-            "yargs-parser": "7.0.0"[m
[32m+[m[32m            "camelcase": "^4.1.0",[m
[32m+[m[32m            "cliui": "^3.2.0",[m
[32m+[m[32m            "decamelize": "^1.1.1",[m
[32m+[m[32m            "get-caller-file": "^1.0.1",[m
[32m+[m[32m            "os-locale": "^2.0.0",[m
[32m+[m[32m            "read-pkg-up": "^2.0.0",[m
[32m+[m[32m            "require-directory": "^2.1.1",[m
[32m+[m[32m            "require-main-filename": "^1.0.1",[m
[32m+[m[32m            "set-blocking": "^2.0.0",[m
[32m+[m[32m            "string-width": "^2.0.0",[m
[32m+[m[32m            "which-module": "^2.0.0",[m
[32m+[m[32m            "y18n": "^3.2.1",[m
[32m+[m[32m            "yargs-parser": "^7.0.0"[m
           }[m
         },[m
         "yargs-parser": {[m
[36m@@ -10593,7 +10633,7 @@[m
           "resolved": "https://registry.npmjs.org/yargs-parser/-/yargs-parser-7.0.0.tgz",[m
           "integrity": "sha1-jQrELxbqVd69MyyvTEA4s+P139k=",[m
           "requires": {[m
[31m-            "camelcase": "4.1.0"[m
[32m+[m[32m            "camelcase": "^4.1.0"[m
           }[m
         }[m
       }[m
[36m@@ -10603,11 +10643,11 @@[m
       "resolved": "https://registry.npmjs.org/webpack-dev-middleware/-/webpack-dev-middleware-1.12.2.tgz",[m
       "integrity": "sha512-FCrqPy1yy/sN6U/SaEZcHKRXGlqU0DUaEBL45jkUYoB8foVb6wCnbIJ1HKIx+qUFTW+3JpVcCJCxZ8VATL4e+A==",[m
       "requires": {[m
[31m-        "memory-fs": "0.4.1",[m
[31m-        "mime": "1.6.0",[m
[31m-        "path-is-absolute": "1.0.1",[m
[31m-        "range-parser": "1.2.0",[m
[31m-        "time-stamp": "2.0.0"[m
[32m+[m[32m        "memory-fs": "~0.4.1",[m
[32m+[m[32m        "mime": "^1.5.0",[m
[32m+[m[32m        "path-is-absolute": "^1.0.0",[m
[32m+[m[32m        "range-parser": "^1.0.3",[m
[32m+[m[32m        "time-stamp": "^2.0.0"[m
       }[m
     },[m
     "webpack-dev-server": {[m
[36m@@ -10616,32 +10656,32 @@[m
       "integrity": "sha512-thrqC0EQEoSjXeYgP6pUXcUCZ+LNrKsDPn+mItLnn5VyyNZOJKd06hUP5vqkYwL8nWWXsii0loSF9NHNccT6ow==",[m
       "requires": {[m
         "ansi-html": "0.0.7",[m
[31m-        "array-includes": "3.0.3",[m
[31m-        "bonjour": "3.5.0",[m
[31m-        "chokidar": "1.7.0",[m
[31m-        "compression": "1.7.1",[m
[31m-        "connect-history-api-fallback": "1.5.0",[m
[31m-        "debug": "3.1.0",[m
[31m-        "del": "3.0.0",[m
[31m-        "express": "4.16.2",[m
[31m-        "html-entities": "1.2.1",[m
[31m-        "http-proxy-middleware": "0.17.4",[m
[31m-        "import-local": "0.1.1",[m
[32m+[m[32m        "array-includes": "^3.0.3",[m
[32m+[m[32m        "bonjour": "^3.5.0",[m
[32m+[m[32m        "chokidar": "^1.6.0",[m
[32m+[m[32m        "compression": "^1.5.2",[m
[32m+[m[32m        "connect-history-api-fallback": "^1.3.0",[m
[32m+[m[32m        "debug": "^3.1.0",[m
[32m+[m[32m        "del": "^3.0.0",[m
[32m+[m[32m        "express": "^4.13.3",[m
[32m+[m[32m        "html-entities": "^1.2.0",[m
[32m+[m[32m        "http-proxy-middleware": "~0.17.4",[m
[32m+[m[32m        "import-local": "^0.1.1",[m
         "internal-ip": "1.2.0",[m
[31m-        "ip": "1.1.5",[m
[31m-        "killable": "1.0.0",[m
[31m-        "loglevel": "1.6.0",[m
[31m-        "opn": "5.1.0",[m
[31m-        "portfinder": "1.0.13",[m
[31m-        "selfsigned": "1.10.1",[m
[31m-        "serve-index": "1.9.1",[m
[32m+[m[32m        "ip": "^1.1.5",[m
[32m+[m[32m        "killable": "^1.0.0",[m
[32m+[m[32m        "loglevel": "^1.4.1",[m
[32m+[m[32m        "opn": "^5.1.0",[m
[32m+[m[32m        "portfinder": "^1.0.9",[m
[32m+[m[32m        "selfsigned": "^1.9.1",[m
[32m+[m[32m        "serve-index": "^1.7.2",[m
         "sockjs": "0.3.18",[m
         "sockjs-client": "1.1.4",[m
[31m-        "spdy": "3.4.7",[m
[31m-        "strip-ansi": "3.0.1",[m
[31m-        "supports-color": "4.5.0",[m
[31m-        "webpack-dev-middleware": "1.12.2",[m
[31m-        "yargs": "6.6.0"[m
[32m+[m[32m        "spdy": "^3.4.1",[m
[32m+[m[32m        "strip-ansi": "^3.0.1",[m
[32m+[m[32m        "supports-color": "^4.2.1",[m
[32m+[m[32m        "webpack-dev-middleware": "^1.11.0",[m
[32m+[m[32m        "yargs": "^6.6.0"[m
       },[m
       "dependencies": {[m
         "camelcase": {[m
[36m@@ -10654,9 +10694,9 @@[m
           "resolved": "https://registry.npmjs.org/cliui/-/cliui-3.2.0.tgz",[m
           "integrity": "sha1-EgYBU3qRbSmUD5NNo7SNWFo5IT0=",[m
           "requires": {[m
[31m-            "string-width": "1.0.2",[m
[31m-            "strip-ansi": "3.0.1",[m
[31m-            "wrap-ansi": "2.1.0"[m
[32m+[m[32m            "string-width": "^1.0.1",[m
[32m+[m[32m            "strip-ansi": "^3.0.1",[m
[32m+[m[32m            "wrap-ansi": "^2.0.0"[m
           }[m
         },[m
         "debug": {[m
[36m@@ -10672,12 +10712,12 @@[m
           "resolved": "https://registry.npmjs.org/del/-/del-3.0.0.tgz",[m
           "integrity": "sha1-U+z2mf/LyzljdpGrE7rxYIGXZuU=",[m
           "requires": {[m
[31m-            "globby": "6.1.0",[m
[31m-            "is-path-cwd": "1.0.0",[m
[31m-            "is-path-in-cwd": "1.0.0",[m
[31m-            "p-map": "1.2.0",[m
[31m-            "pify": "3.0.0",[m
[31m-            "rimraf": "2.6.2"[m
[32m+[m[32m            "globby": "^6.1.0",[m
[32m+[m[32m            "is-path-cwd": "^1.0.0",[m
[32m+[m[32m            "is-path-in-cwd": "^1.0.0",[m
[32m+[m[32m            "p-map": "^1.1.1",[m
[32m+[m[32m            "pify": "^3.0.0",[m
[32m+[m[32m            "rimraf": "^2.2.8"[m
           }[m
         },[m
         "globby": {[m
[36m@@ -10685,11 +10725,11 @@[m
           "resolved": "https://registry.npmjs.org/globby/-/globby-6.1.0.tgz",[m
           "integrity": "sha1-9abXDoOV4hyFj7BInWTfAkJNUGw=",[m
           "requires": {[m
[31m-            "array-union": "1.0.2",[m
[31m-            "glob": "7.1.2",[m
[31m-            "object-assign": "4.1.1",[m
[31m-            "pify": "2.3.0",[m
[31m-            "pinkie-promise": "2.0.1"[m
[32m+[m[32m            "array-union": "^1.0.1",[m
[32m+[m[32m            "glob": "^7.0.3",[m
[32m+[m[32m            "object-assign": "^4.0.1",[m
[32m+[m[32m            "pify": "^2.0.0",[m
[32m+[m[32m            "pinkie-promise": "^2.0.0"[m
           },[m
           "dependencies": {[m
             "pify": {[m
[36m@@ -10704,7 +10744,7 @@[m
           "resolved": "https://registry.npmjs.org/is-fullwidth-code-point/-/is-fullwidth-code-point-1.0.0.tgz",[m
           "integrity": "sha1-754xOG8DGn8NZDr4L95QxFfvAMs=",[m
           "requires": {[m
[31m-            "number-is-nan": "1.0.1"[m
[32m+[m[32m            "number-is-nan": "^1.0.0"[m
           }[m
         },[m
         "pify": {[m
[36m@@ -10717,9 +10757,9 @@[m
           "resolved": "https://registry.npmjs.org/string-width/-/string-width-1.0.2.tgz",[m
           "integrity": "sha1-EYvfW4zcUaKn5w0hHgfisLmxB9M=",[m
           "requires": {[m
[31m-            "code-point-at": "1.1.0",[m
[31m-            "is-fullwidth-code-point": "1.0.0",[m
[31m-            "strip-ansi": "3.0.1"[m
[32m+[m[32m            "code-point-at": "^1.0.0",[m
[32m+[m[32m            "is-fullwidth-code-point": "^1.0.0",[m
[32m+[m[32m            "strip-ansi": "^3.0.0"[m
           }[m
         },[m
         "supports-color": {[m
[36m@@ -10727,7 +10767,7 @@[m
           "resolved": "https://registry.npmjs.org/supports-color/-/supports-color-4.5.0.tgz",[m
           "integrity": "sha1-vnoN5ITexcXN34s9WRJQRJEvY1s=",[m
           "requires": {[m
[31m-            "has-flag": "2.0.0"[m
[32m+[m[32m            "has-flag": "^2.0.0"[m
           }[m
         },[m
         "yargs": {[m
[36m@@ -10735,19 +10775,19 @@[m
           "resolved": "https://registry.npmjs.org/yargs/-/yargs-6.6.0.tgz",[m
           "integrity": "sha1-eC7CHvQDNF+DCoCMo9UTr1YGUgg=",[m
           "requires": {[m
[31m-            "camelcase": "3.0.0",[m
[31m-            "cliui": "3.2.0",[m
[31m-            "decamelize": "1.2.0",[m
[31m-            "get-caller-file": "1.0.2",[m
[31m-            "os-locale": "1.4.0",[m
[31m-            "read-pkg-up": "1.0.1",[m
[31m-            "require-directory": "2.1.1",[m
[31m-            "require-main-filename": "1.0.1",[m
[31m-            "set-blocking": "2.0.0",[m
[31m-            "string-width": "1.0.2",[m
[31m-            "which-module": "1.0.0",[m
[31m-            "y18n": "3.2.1",[m
[31m-            "yargs-parser": "4.2.1"[m
[32m+[m[32m            "camelcase": "^3.0.0",[m
[32m+[m[32m            "cliui": "^3.2.0",[m
[32m+[m[32m            "decamelize": "^1.1.1",[m
[32m+[m[32m            "get-caller-file": "^1.0.1",[m
[32m+[m[32m            "os-locale": "^1.4.0",[m
[32m+[m[32m            "read-pkg-up": "^1.0.1",[m
[32m+[m[32m            "require-directory": "^2.1.1",[m
[32m+[m[32m            "require-main-filename": "^1.0.1",[m
[32m+[m[32m            "set-blocking": "^2.0.0",[m
[32m+[m[32m            "string-width": "^1.0.2",[m
[32m+[m[32m            "which-module": "^1.0.0",[m
[32m+[m[32m            "y18n": "^3.2.1",[m
[32m+[m[32m            "yargs-parser": "^4.2.0"[m
           }[m
         },[m
         "yargs-parser": {[m
[36m@@ -10755,7 +10795,7 @@[m
           "resolved": "https://registry.npmjs.org/yargs-parser/-/yargs-parser-4.2.1.tgz",[m
           "integrity": "sha1-KczqwNxPA8bIe0qfIX3RjJ90hxw=",[m
           "requires": {[m
[31m-            "camelcase": "3.0.0"[m
[32m+[m[32m            "camelcase": "^3.0.0"[m
           }[m
         }[m
       }[m
[36m@@ -10765,8 +10805,8 @@[m
       "resolved": "https://registry.npmjs.org/webpack-manifest-plugin/-/webpack-manifest-plugin-1.3.2.tgz",[m
       "integrity": "sha512-MX60Bv2G83Zks9pi3oLOmRgnPAnwrlMn+lftMrWBm199VQjk46/xgzBi9lPfpZldw2+EI2S+OevuLIaDuxCWRw==",[m
       "requires": {[m
[31m-        "fs-extra": "0.30.0",[m
[31m-        "lodash": "4.17.4"[m
[32m+[m[32m        "fs-extra": "^0.30.0",[m
[32m+[m[32m        "lodash": ">=3.5 <5"[m
       },[m
       "dependencies": {[m
         "fs-extra": {[m
[36m@@ -10774,11 +10814,11 @@[m
           "resolved": "https://registry.npmjs.org/fs-extra/-/fs-extra-0.30.0.tgz",[m
           "integrity": "sha1-8jP/zAjU2n1DLapEl3aYnbHfk/A=",[m
           "requires": {[m
[31m-            "graceful-fs": "4.1.11",[m
[31m-            "jsonfile": "2.4.0",[m
[31m-            "klaw": "1.3.1",[m
[31m-            "path-is-absolute": "1.0.1",[m
[31m-            "rimraf": "2.6.2"[m
[32m+[m[32m            "graceful-fs": "^4.1.2",[m
[32m+[m[32m            "jsonfile": "^2.1.0",[m
[32m+[m[32m            "klaw": "^1.0.0",[m
[32m+[m[32m            "path-is-absolute": "^1.0.0",[m
[32m+[m[32m            "rimraf": "^2.2.8"[m
           }[m
         },[m
         "jsonfile": {[m
[36m@@ -10786,7 +10826,7 @@[m
           "resolved": "https://registry.npmjs.org/jsonfile/-/jsonfile-2.4.0.tgz",[m
           "integrity": "sha1-NzaitCi4e72gzIO1P6PWM6NcKug=",[m
           "requires": {[m
[31m-            "graceful-fs": "4.1.11"[m
[32m+[m[32m            "graceful-fs": "^4.1.6"[m
           }[m
         }[m
       }[m
[36m@@ -10796,8 +10836,8 @@[m
       "resolved": "https://registry.npmjs.org/webpack-sources/-/webpack-sources-1.1.0.tgz",[m
       "integrity": "sha512-aqYp18kPphgoO5c/+NaUvEeACtZjMESmDChuD3NBciVpah3XpMEU9VAAtIaB1BsfJWWTSdv8Vv1m3T0aRk2dUw==",[m
       "requires": {[m
[31m-        "source-list-map": "2.0.0",[m
[31m-        "source-map": "0.6.1"[m
[32m+[m[32m        "source-list-map": "^2.0.0",[m
[32m+[m[32m        "source-map": "~0.6.1"[m
       }[m
     },[m
     "websocket-driver": {[m
[36m@@ -10805,8 +10845,8 @@[m
       "resolved": "https://registry.npmjs.org/websocket-driver/-/websocket-driver-0.7.0.tgz",[m
       "integrity": "sha1-DK+dLXVdk67gSdS90NP+LMoqJOs=",[m
       "requires": {[m
[31m-        "http-parser-js": "0.4.9",[m
[31m-        "websocket-extensions": "0.1.3"[m
[32m+[m[32m        "http-parser-js": ">=0.4.0",[m
[32m+[m[32m        "websocket-extensions": ">=0.1.1"[m
       }[m
     },[m
     "websocket-extensions": {[m
[36m@@ -10832,8 +10872,8 @@[m
       "resolved": "https://registry.npmjs.org/whatwg-url/-/whatwg-url-4.8.0.tgz",[m
       "integrity": "sha1-0pgaqRSMHgCkHFphMRZqtGg7vMA=",[m
       "requires": {[m
[31m-        "tr46": "0.0.3",[m
[31m-        "webidl-conversions": "3.0.1"[m
[32m+[m[32m        "tr46": "~0.0.3",[m
[32m+[m[32m        "webidl-conversions": "^3.0.0"[m
       },[m
       "dependencies": {[m
         "webidl-conversions": {[m
[36m@@ -10853,7 +10893,7 @@[m
       "resolved": "https://registry.npmjs.org/which/-/which-1.3.0.tgz",[m
       "integrity": "sha512-xcJpopdamTuY5duC/KnTTNBraPK54YwpenP4lzxU8H91GudWpFv38u0CKjclE1Wi2EH2EDz5LRcHcKbCIzqGyg==",[m
       "requires": {[m
[31m-        "isexe": "2.0.0"[m
[32m+[m[32m        "isexe": "^2.0.0"[m
       }[m
     },[m
     "which-module": {[m
[36m@@ -10866,7 +10906,7 @@[m
       "resolved": "https://registry.npmjs.org/widest-line/-/widest-line-1.0.0.tgz",[m
       "integrity": "sha1-DAnIXCqUaD0Nfq+O4JfVZL8OEFw=",[m
       "requires": {[m
[31m-        "string-width": "1.0.2"[m
[32m+[m[32m        "string-width": "^1.0.1"[m
       },[m
       "dependencies": {[m
         "is-fullwidth-code-point": {[m
[36m@@ -10874,7 +10914,7 @@[m
           "resolved": "https://registry.npmjs.org/is-fullwidth-code-point/-/is-fullwidth-code-point-1.0.0.tgz",[m
           "integrity": "sha1-754xOG8DGn8NZDr4L95QxFfvAMs=",[m
           "requires": {[m
[31m-            "number-is-nan": "1.0.1"[m
[32m+[m[32m            "number-is-nan": "^1.0.0"[m
           }[m
         },[m
         "string-width": {[m
[36m@@ -10882,9 +10922,9 @@[m
           "resolved": "https://registry.npmjs.org/string-width/-/string-width-1.0.2.tgz",[m
           "integrity": "sha1-EYvfW4zcUaKn5w0hHgfisLmxB9M=",[m
           "requires": {[m
[31m-            "code-point-at": "1.1.0",[m
[31m-            "is-fullwidth-code-point": "1.0.0",[m
[31m-            "strip-ansi": "3.0.1"[m
[32m+[m[32m            "code-point-at": "^1.0.0",[m
[32m+[m[32m            "is-fullwidth-code-point": "^1.0.0",[m
[32m+[m[32m            "strip-ansi": "^3.0.0"[m
           }[m
         }[m
       }[m
[36m@@ -10904,8 +10944,8 @@[m
       "resolved": "https://registry.npmjs.org/worker-farm/-/worker-farm-1.5.2.tgz",[m
       "integrity": "sha512-XxiQ9kZN5n6mmnW+mFJ+wXjNNI/Nx4DIdaAKLX1Bn6LYBWlN/zaBhu34DQYPZ1AJobQuu67S2OfDdNSVULvXkQ==",[m
       "requires": {[m
[31m-        "errno": "0.1.6",[m
[31m-        "xtend": "4.0.1"[m
[32m+[m[32m        "errno": "^0.1.4",[m
[32m+[m[32m        "xtend": "^4.0.1"[m
       }[m
     },[m
     "wrap-ansi": {[m
[36m@@ -10913,8 +10953,8 @@[m
       "resolved": "https://registry.npmjs.org/wrap-ansi/-/wrap-ansi-2.1.0.tgz",[m
       "integrity": "sha1-2Pw9KE3QV5T+hJc8rs3Rz4JP3YU=",[m
       "requires": {[m
[31m-        "string-width": "1.0.2",[m
[31m-        "strip-ansi": "3.0.1"[m
[32m+[m[32m        "string-width": "^1.0.1",[m
[32m+[m[32m        "strip-ansi": "^3.0.1"[m
       },[m
       "dependencies": {[m
         "is-fullwidth-code-point": {[m
[36m@@ -10922,7 +10962,7 @@[m
           "resolved": "https://registry.npmjs.org/is-fullwidth-code-point/-/is-fullwidth-code-point-1.0.0.tgz",[m
           "integrity": "sha1-754xOG8DGn8NZDr4L95QxFfvAMs=",[m
           "requires": {[m
[31m-            "number-is-nan": "1.0.1"[m
[32m+[m[32m            "number-is-nan": "^1.0.0"[m
           }[m
         },[m
         "string-width": {[m
[36m@@ -10930,9 +10970,9 @@[m
           "resolved": "https://registry.npmjs.org/string-width/-/string-width-1.0.2.tgz",[m
           "integrity": "sha1-EYvfW4zcUaKn5w0hHgfisLmxB9M=",[m
           "requires": {[m
[31m-            "code-point-at": "1.1.0",[m
[31m-            "is-fullwidth-code-point": "1.0.0",[m
[31m-            "strip-ansi": "3.0.1"[m
[32m+[m[32m            "code-point-at": "^1.0.0",[m
[32m+[m[32m            "is-fullwidth-code-point": "^1.0.0",[m
[32m+[m[32m            "strip-ansi": "^3.0.0"[m
           }[m
         }[m
       }[m
[36m@@ -10947,7 +10987,7 @@[m
       "resolved": "https://registry.npmjs.org/write/-/write-0.2.1.tgz",[m
       "integrity": "sha1-X8A4KOJkzqP+kUVUdvejxWbLB1c=",[m
       "requires": {[m
[31m-        "mkdirp": "0.5.1"[m
[32m+[m[32m        "mkdirp": "^0.5.1"[m
       }[m
     },[m
     "write-file-atomic": {[m
[36m@@ -10955,9 +10995,9 @@[m
       "resolved": "https://registry.npmjs.org/write-file-atomic/-/write-file-atomic-1.3.4.tgz",[m
       "integrity": "sha1-+Aek8LHZ6ROuekgRLmzDrxmRtF8=",[m
       "requires": {[m
[31m-        "graceful-fs": "4.1.11",[m
[31m-        "imurmurhash": "0.1.4",[m
[31m-        "slide": "1.1.6"[m
[32m+[m[32m        "graceful-fs": "^4.1.11",[m
[32m+[m[32m        "imurmurhash": "^0.1.4",[m
[32m+[m[32m        "slide": "^1.1.5"[m
       }[m
     },[m
     "xdg-basedir": {[m
[36m@@ -10965,7 +11005,7 @@[m
       "resolved": "https://registry.npmjs.org/xdg-basedir/-/xdg-basedir-2.0.0.tgz",[m
       "integrity": "sha1-7byQPMOF/ARSPZZqM1UEtVBNG9I=",[m
       "requires": {[m
[31m-        "os-homedir": "1.0.2"[m
[32m+[m[32m        "os-homedir": "^1.0.0"[m
       }[m
     },[m
     "xml-char-classes": {[m
[36m@@ -10998,19 +11038,19 @@[m
       "resolved": "https://registry.npmjs.org/yargs/-/yargs-7.1.0.tgz",[m
       "integrity": "sha1-a6MY6xaWFyf10oT46gA+jWFU0Mg=",[m
       "requires": {[m
[31m-        "camelcase": "3.0.0",[m
[31m-        "cliui": "3.2.0",[m
[31m-        "decamelize": "1.2.0",[m
[31m-        "get-caller-file": "1.0.2",[m
[31m-        "os-locale": "1.4.0",[m
[31m-        "read-pkg-up": "1.0.1",[m
[31m-        "require-directory": "2.1.1",[m
[31m-        "require-main-filename": "1.0.1",[m
[31m-        "set-blocking": "2.0.0",[m
[31m-        "string-width": "1.0.2",[m
[31m-        "which-module": "1.0.0",[m
[31m-        "y18n": "3.2.1",[m
[31m-        "yargs-parser": "5.0.0"[m
[32m+[m[32m        "camelcase": "^3.0.0",[m
[32m+[m[32m        "cliui": "^3.2.0",[m
[32m+[m[32m        "decamelize": "^1.1.1",[m
[32m+[m[32m        "get-caller-file": "^1.0.1",[m
[32m+[m[32m        "os-locale": "^1.4.0",[m
[32m+[m[32m        "read-pkg-up": "^1.0.1",[m
[32m+[m[32m        "require-directory": "^2.1.1",[m
[32m+[m[32m        "require-main-filename": "^1.0.1",[m
[32m+[m[32m        "set-blocking": "^2.0.0",[m
[32m+[m[32m        "string-width": "^1.0.2",[m
[32m+[m[32m        "which-module": "^1.0.0",[m
[32m+[m[32m        "y18n": "^3.2.1",[m
[32m+[m[32m        "yargs-parser": "^5.0.0"[m
       },[m
       "dependencies": {[m
         "camelcase": {[m
[36m@@ -11023,9 +11063,9 @@[m
           "resolved": "https://registry.npmjs.org/cliui/-/cliui-3.2.0.tgz",[m
           "integrity": "sha1-EgYBU3qRbSmUD5NNo7SNWFo5IT0=",[m
           "requires": {[m
[31m-            "string-width": "1.0.2",[m
[31m-            "strip-ansi": "3.0.1",[m
[31m-            "wrap-ansi": "2.1.0"[m
[32m+[m[32m            "string-width": "^1.0.1",[m
[32m+[m[32m            "strip-ansi": "^3.0.1",[m
[32m+[m[32m            "wrap-ansi": "^2.0.0"[m
           }[m
         },[m
         "is-fullwidth-code-point": {[m
[36m@@ -11033,7 +11073,7 @@[m
           "resolved": "https://registry.npmjs.org/is-fullwidth-code-point/-/is-fullwidth-code-point-1.0.0.tgz",[m
           "integrity": "sha1-754xOG8DGn8NZDr4L95QxFfvAMs=",[m
           "requires": {[m
[31m-            "number-is-nan": "1.0.1"[m
[32m+[m[32m            "number-is-nan": "^1.0.0"[m
           }[m
         },[m
         "string-width": {[m
[36m@@ -11041,9 +11081,9 @@[m
           "resolved": "https://registry.npmjs.org/string-width/-/string-width-1.0.2.tgz",[m
           "integrity": "sha1-EYvfW4zcUaKn5w0hHgfisLmxB9M=",[m
           "requires": {[m
[31m-            "code-point-at": "1.1.0",[m
[31m-            "is-fullwidth-code-point": "1.0.0",[m
[31m-            "strip-ansi": "3.0.1"[m
[32m+[m[32m            "code-point-at": "^1.0.0",[m
[32m+[m[32m            "is-fullwidth-code-point": "^1.0.0",[m
[32m+[m[32m            "strip-ansi": "^3.0.0"[m
           }[m
         }[m
       }[m
[36m@@ -11053,7 +11093,7 @@[m
       "resolved": "https://registry.npmjs.org/yargs-parser/-/yargs-parser-5.0.0.tgz",[m
       "integrity": "sha1-J17PDX/+Bcd+ZOfIbkzZS/DhIoo=",[m
       "requires": {[m
[31m-        "camelcase": "3.0.0"[m
[32m+[m[32m        "camelcase": "^3.0.0"[m
       },[m
       "dependencies": {[m
         "camelcase": {[m
[1mdiff --git a/AEImageHub/ClientApp/package.json b/AEImageHub/ClientApp/package.json[m
[1mindex 3ff0aaa..75ff1a9 100644[m
[1m--- a/AEImageHub/ClientApp/package.json[m
[1m+++ b/AEImageHub/ClientApp/package.json[m
[36m@@ -10,17 +10,20 @@[m
     "react": "^16.8.3",[m
     "react-adal": "^0.4.22",[m
     "react-bootstrap": "^0.31.5",[m
[32m+[m[32m    "react-cropper": "^1.2.0",[m
     "react-dom": "^16.8.3",[m
     "react-grid": "^1.1.7",[m
[31m-    "react-grid-gallery": "^0.5.3",[m
[32m+[m[32m    "react-grid-gallery": "^0.5.4",[m
     "react-image-gallery": "^0.8.14",[m
     "react-images": "^0.5.19",[m
     "react-images-upload": "^1.2.6",[m
     "react-photo-gallery": "^6.3.2",[m
[32m+[m[32m    "react-popup": "^0.10.0",[m
     "react-router-bootstrap": "^0.24.4",[m
     "react-router-dom": "^4.2.2",[m
     "react-scripts": "1.0.17",[m
     "react-table": "^6.9.2",[m
[32m+[m[32m    "reactjs-popup": "^1.3.2",[m
     "rimraf": "^2.6.2"[m
   },[m
   "scripts": {[m
[1mdiff --git a/AEImageHub/ClientApp/src/App.js b/AEImageHub/ClientApp/src/App.js[m
[1mindex bb9e250..ba5e41f 100644[m
[1m--- a/AEImageHub/ClientApp/src/App.js[m
[1m+++ b/AEImageHub/ClientApp/src/App.js[m
[36m@@ -11,6 +11,7 @@[m [mimport { Project } from './componentsTemplate/Project';[m
 import { Metadata } from './componentsTemplate/Metadata';[m
 import { User } from './componentsTemplate/User';[m
 import { Upload } from './componentsTemplate/Upload';[m
[32m+[m[32mimport { ImageEditor } from './componentsTemplate/ImageEditor'[m
 [m
 export default class App extends Component {[m
     displayName = App.name[m
[36m@@ -20,8 +21,9 @@[m [mexport default class App extends Component {[m
             <Layout>[m
                 <Route exact path='/' component={Home} />[m
                 <Route path='/search' component={Search} />[m
[31m-                <Route path='/palette' component={Palette} />[m
                 <Route path='/upload' component={Upload} />[m
[32m+[m[32m                <Route path='/palette' component={Palette} />[m
[32m+[m[32m                <Route path='/edit' component={ImageEditor} />[m
                 <Route path='/log' component={Log} />[m
                 <Route path='/trash' component={Trash} />[m
                 <Route path='/project' component={Project} />[m
[36m@@ -30,4 +32,4 @@[m [mexport default class App extends Component {[m
             </Layout>[m
         );[m
     }[m
[31m-}[m
[32m+[m[32m}[m
\ No newline at end of file[m
[1mdiff --git a/AEImageHub/ClientApp/src/AppTemplate.js b/AEImageHub/ClientApp/src/AppTemplate.js[m
[1mindex 871cf83..3beaadc 100644[m
[1m--- a/AEImageHub/ClientApp/src/AppTemplate.js[m
[1m+++ b/AEImageHub/ClientApp/src/AppTemplate.js[m
[36m@@ -10,6 +10,7 @@[m [mimport { Trash } from './componentsTemplate/Trash';[m
 import { Project } from './componentsTemplate/Project';[m
 import { Metadata } from './componentsTemplate/Metadata';[m
 import { User } from './componentsTemplate/User';[m
[32m+[m[32mimport { ImageEditor } from './componentsTemplate/ImageEditor'[m
 [m
 export default class App extends Component {[m
     displayName = App.name[m
[36m@@ -20,6 +21,7 @@[m [mexport default class App extends Component {[m
                 <Route exact path='/' component={Home} />[m
                 <Route path='/search' component={Search} />[m
                 <Route path='/palette' component={Palette} />[m
[32m+[m[32m                <Route path='/edit' component={ImageEditor} />[m
                 <Route path='/log' component={Log} />[m
                 <Route path='/trash' component={Trash} />[m
                 <Route path='/project' component={Project} />[m
[1mdiff --git a/AEImageHub/ClientApp/src/adalConfig.js b/AEImageHub/ClientApp/src/adalConfig.js[m
[1mindex 57dedf8..42fad21 100644[m
[1m--- a/AEImageHub/ClientApp/src/adalConfig.js[m
[1m+++ b/AEImageHub/ClientApp/src/adalConfig.js[m
[36m@@ -9,7 +9,7 @@[m [mconst adalConfig = {[m
         api: 'a42cbd10-bbd7-414f-b9f8-733274fea3c1'[m
     },[m
     postLogoutRedirectUri: window.location.origin,[m
[31m-    redirectUri: 'http://localhost:5000',[m
[32m+[m[32m    redirectUri: 'http://localhost:5000/palette',[m
     cacheLocation: 'sessionStorage'[m
 };[m
 [m
[36m@@ -19,6 +19,14 @@[m [mexport const getToken = () => {[m
     return authContext.getCachedToken(authContext.config.clientId);[m
 };[m
 [m
[32m+[m
[32m+[m[32mexport const getCredentials = () => {[m
[32m+[m[32m    var token  = getToken();[m
[32m+[m[32m    var base64Url = token.split('.')[1];[m
[32m+[m[32m    var base64 = base64Url.replace('-', '+').replace('_', '/');[m
[32m+[m[32m    return JSON.parse(window.atob(base64));[m
[32m+[m[32m};[m
[32m+[m
 export const adalApiFetch = (fetch, url, options) =>[m
     adalFetch(authContext, adalConfig.endpoints.api, fetch, url, options);[m
 [m
[1mdiff --git a/AEImageHub/ClientApp/src/componentsTemplate/Palette.js b/AEImageHub/ClientApp/src/componentsTemplate/Palette.js[m
[1mindex f25d619..f83f194 100644[m
[1m--- a/AEImageHub/ClientApp/src/componentsTemplate/Palette.js[m
[1m+++ b/AEImageHub/ClientApp/src/componentsTemplate/Palette.js[m
[36m@@ -1,64 +1,13 @@[m
[31m-import React, { Component } from 'react';[m
[32m+[m[32m﻿import React, { Component } from 'react';[m
 import { Title } from './Title';[m
[32m+[m[32mimport '../index.css';[m
 import Gallery from './custom-photo-gallery';[m
 import SelectedImage from './SelectedImage';[m
[31m-import hooverdam from './img/hooverdam.jpg';[m
[31m-import clevelanddam from './img/clevelanddam.jpg';[m
[31m-import enguridam from './img/enguridam.jpg';[m
[31m-import threegorgesdam from './img/threegorgesdam.jpg'[m
 import axios from 'axios'[m
[31m-import { getToken } from '../adalConfig';[m
[31m-[m
[31m-var photos = [[m
[31m-    {[m
[31m-        src: hooverdam, width: 1, height: 1, alt: "dam"[m
[31m-    },[m
[31m-    {[m
[31m-        src: clevelanddam, width: 1, height: 1, alt: "dam"[m
[31m-    },[m
[31m-    {[m
[31m-        src: hooverdam, width: 1, height: 1, alt: "dam"[m
[31m-    },[m
[31m-    {[m
[31m-        src: hooverdam, width: 1, height: 1, alt: "dam"[m
[31m-    },[m
[31m-    {[m
[31m-        src: hooverdam, width: 1, height: 1, alt: "dam"[m
[31m-    },[m
[31m-    {[m
[31m-        src: hooverdam, width: 1, height: 1, alt: "dam"[m
[31m-    },[m
[31m-    {[m
[31m-        src: hooverdam, width: 1, height: 1, alt: "dam"[m
[31m-    },[m
[31m-    {[m
[31m-        src: hooverdam, width: 1, height: 1, alt: "dam"[m
[31m-    },[m
[31m-    {[m
[31m-        src: hooverdam, width: 1, height: 1, alt: "dam"[m
[31m-    },[m
[31m-    {[m
[31m-        src: enguridam, width: 1, height: 1, alt: "dam"[m
[31m-    },[m
[31m-    {[m
[31m-        src: threegorgesdam, width: 1, height: 1, alt: "dam"[m
[31m-    },[m
[31m-    {[m
[31m-        src: enguridam, width: 1, height: 1, alt: "dam"[m
[31m-    },[m
[31m-    {[m
[31m-        src: enguridam, width: 1, height: 1, alt: "dam"[m
[31m-    },[m
[31m-    {[m
[31m-        src: enguridam, width: 1, height: 1, alt: "dam"[m
[31m-    },[m
[31m-    {[m
[31m-        src: enguridam, width: 1, height: 1, alt: "dam"[m
[31m-    },[m
[31m-    {[m
[31m-        src: threegorgesdam, width: 1, height: 1, alt: "dam"[m
[31m-    }[m
[31m-][m
[32m+[m[32mimport { getCredentials, getToken } from '../adalConfig';[m
[32m+[m[32mimport { Redirect } from 'react-router-dom'[m
[32m+[m
[32m+[m
 export class Palette extends Component {[m
     constructor(props) {[m
         super(props);[m
[36m@@ -67,20 +16,25 @@[m [mexport class Palette extends Component {[m
 [m
         this.state = {[m
             photos: [] ,[m
[31m-            selectAll: false[m
[32m+[m[32m            selectAll: false,[m
[32m+[m[32m            showInfo: false,[m
[32m+[m[32m            redirect: false,[m
         };[m
 [m
         this.GetUserImages = this.GetUserImages.bind(this);[m
[31m-        this.GetUserImages("todo");[m
[31m-    }[m
[32m+[m[32m        this.TrashSelectedImages = this.TrashSelectedImages.bind(this);[m
 [m
 [m
[32m+[m[32m        this.GetUserImages();[m
[32m+[m[32m    }[m
 [m
[31m-      selectPhoto(event, obj) {[m
[32m+[m[32m    selectPhoto(event, obj) {[m
[32m+[m[32m        console.log(obj);[m
         let photos = this.state.photos;[m
         photos[obj.index].selected = !photos[obj.index].selected;[m
         this.setState({ photos: photos });[m
[31m-      }[m
[32m+[m[32m    }[m
[32m+[m
       toggleSelect() {[m
         let photos = this.state.photos.map((photo, index) => {[m
           return { ...photo, selected: !this.state.selectAll };[m
[36m@@ -88,20 +42,19 @@[m [mexport class Palette extends Component {[m
         this.setState({ photos: photos, selectAll: !this.state.selectAll });[m
       }[m
 [m
[31m-    //Jae[m
[31m-[m
     // get Images with the userid[m
[31m-    GetUserImages(userid) {[m
[32m+[m[32m    GetUserImages() {[m
         // todo hardcoded for now[m
[31m-        userid = 'todo';[m
[32m+[m[32m        let userid = getCredentials().name;[m
         axios.get("/api/user/" + userid + "/images", { headers: { 'Authorization': "bearer " + getToken() } })[m
             .then(res => {[m
                 var images = [];[m
                 res.data.map((image, index) => {[m
                     images.push({[m
[31m-                        src: "/api/image/" + image.iId, width: 1, height: 1, alt: image.iId[m
[32m+[m[32m                        src: "/api/image/" + image.iId, width: 5, height: 4, alt: image.iId , meta : image[m
                     });[m
                 })[m
[32m+[m[32m                console.log(res.data);[m
                 this.setState({photos: images})[m
             })[m
     }[m
[36m@@ -116,7 +69,31 @@[m [mexport class Palette extends Component {[m
                 console.log(error);[m
             });[m
     }[m
[31m-    ////////////////////////////////////////////////////////////////////////[m
[32m+[m
[32m+[m[32m    TrashSelectedImages() {[m
[32m+[m[32m        const selected = this.state.photos.filter((value, index, array) => {[m
[32m+[m[32m            return value.selected;[m
[32m+[m[32m        })[m
[32m+[m
[32m+[m[32m        const notSelected = this.state.photos.filter((value, index, array) => {[m
[32m+[m[32m            return !value.selected;[m
[32m+[m[32m        })[m
[32m+[m
[32m+[m[32m        selected.map((image, index) => {[m
[32m+[m[32m            image.meta.Trashed = true;[m
[32m+[m[32m            axios.put("/api/image/" + image.meta.iId, image.meta, { headers: { 'Authorization': "bearer " + getToken() } })[m
[32m+[m[32m                .then(response => {[m
[32m+[m[32m                    console.log(response);[m
[32m+[m[32m                })[m
[32m+[m[32m                .catch(error => {[m
[32m+[m[32m                    console.log(error);[m
[32m+[m[32m                });[m
[32m+[m[32m        })[m
[32m+[m
[32m+[m[32m        this.setState({[m
[32m+[m[32m            photos: notSelected[m
[32m+[m[32m        })[m
[32m+[m[32m    }[m
 [m
     render() {[m
         return ([m
[36m@@ -134,14 +111,38 @@[m [mexport class Palette extends Component {[m
         );[m
     }[m
 [m
[32m+[m[32m    renderRedirect = () => {[m
[32m+[m[32m        let redirectLink = 'edit?src=' + this.state.editImageLink;[m
[32m+[m[32m        if (this.state.redirect) {[m
[32m+[m[32m            return <Redirect to={redirectLink} />[m
[32m+[m[32m        }[m
[32m+[m[32m    }[m
[32m+[m
[32m+[m
[32m+[m[32m    onImageBtnClick = () => {[m
[32m+[m[32m        const selected = this.state.photos.filter((value, index, array) => {[m
[32m+[m[32m            return value.selected;[m
[32m+[m[32m        })[m
[32m+[m
[32m+[m[32m        if (selected.length != 1) {[m
[32m+[m[32m            alert("select exactly one image");[m
[32m+[m[32m        } else {[m
[32m+[m[32m            this.state.editImageLink = selected[0].meta.iId;[m
[32m+[m[32m            this.setState({[m
[32m+[m[32m                redirect: true[m
[32m+[m[32m            })[m
[32m+[m[32m        }[m
[32m+[m[32m    }[m
[32m+[m
     // TODO[m
     renderFunction() {[m
         return ([m
             <div class="fnbar">[m
[32m+[m[32m                {this.renderRedirect()}[m
                 <button>Get Info</button>[m
[31m-                <button>Edit Photo</button>[m
[32m+[m[32m                <button onClick={this.onImageBtnClick}>Edit Photo</button>[m
                 <button>Submit</button>[m
[31m-                <button>Delete</button>[m
[32m+[m[32m                <button onClick={this.TrashSelectedImages}>Delete</button>[m
             </div>[m
         )[m
     }[m
[36m@@ -150,19 +151,20 @@[m [mexport class Palette extends Component {[m
     renderContent() {[m
         return ([m
             <div class="toggleButton">[m
[31m-            <p>[m
[31m-              <button onClick={this.toggleSelect}>[m
[31m-                Select All[m
[32m+[m[32m                <p>[m
[32m+[m[32m                    <button onClick={this.toggleSelect}>[m
[32m+[m[32m                        Select All[m
               </button>[m
[31m-            </p>[m
[31m-            <Gallery[m
[31m-              photos={this.state.photos}[m
[31m-              columns = {5}[m
[31m-              onClick={this.selectPhoto}[m
[31m-              ImageComponent={SelectedImage}[m
[31m-              direction={"row"}[m
[31m-            />[m
[31m-          </div>[m
[32m+[m[32m                </p>[m
[32m+[m[32m                <Gallery[m
[32m+[m[32m                    photos={this.state.photos}[m
[32m+[m[32m                    columns={3}[m
[32m+[m[32m                    onClick={this.selectPhoto}[m
[32m+[m[32m                    ImageComponent={SelectedImage}[m
[32m+[m[32m                    margin={4}[m
[32m+[m[32m                    direction={"row"}[m
[32m+[m[32m                />[m
[32m+[m[32m            </div>[m
         );[m
     }[m
 }[m
\ No newline at end of file[m
[1mdiff --git a/AEImageHub/ClientApp/src/componentsTemplate/Upload.js b/AEImageHub/ClientApp/src/componentsTemplate/Upload.js[m
[1mindex cecdfa3..ef6983f 100644[m
[1m--- a/AEImageHub/ClientApp/src/componentsTemplate/Upload.js[m
[1m+++ b/AEImageHub/ClientApp/src/componentsTemplate/Upload.js[m
[36m@@ -11,7 +11,6 @@[m [mexport class Upload extends Component {[m
     }[m
 [m
     onDrop(picture) {[m
[31m-        console.log(picture);[m
         this.setState({[m
             pictures: this.state.pictures.concat(picture),[m
         });[m
[1mdiff --git a/AEImageHub/ClientApp/src/componentsTemplate/custom-image-upload/index.css b/AEImageHub/ClientApp/src/componentsTemplate/custom-image-upload/index.css[m
[1mindex d03047d..b9043fd 100644[m
[1m--- a/AEImageHub/ClientApp/src/componentsTemplate/custom-image-upload/index.css[m
[1m+++ b/AEImageHub/ClientApp/src/componentsTemplate/custom-image-upload/index.css[m
[36m@@ -122,6 +122,36 @@[m
         height: 30px;[m
     }[m
 [m
[32m+[m[32m    .fileContainer .imageUploadSuccess {[m
[32m+[m[32m        position: absolute;[m
[32m+[m[32m        background-position: 50% 50%;[m
[32m+[m[32m        color: #fff;[m
[32m+[m[32m        background: #4BB543;[m
[32m+[m[32m        border-radius: 50%;[m
[32m+[m[32m        text-align: center;[m
[32m+[m[32m        cursor: pointer;[m
[32m+[m[32m        font-size: 46px;[m
[32m+[m[32m        font-weight: bold;[m
[32m+[m[32m        line-height: 45px;[m
[32m+[m[32m        width: 50px;[m
[32m+[m[32m        height: 50px;[m
[32m+[m[32m    }[m
[32m+[m
[32m+[m[32m    .fileContainer .imageUploadfail {[m
[32m+[m[32m        position: absolute;[m
[32m+[m[32m        background-position: 50% 50%;[m
[32m+[m[32m        color: #fff;[m
[32m+[m[32m        background: #FFCC00;[m
[32m+[m[32m        border-radius: 50%;[m
[32m+[m[32m        text-align: center;[m
[32m+[m[32m        cursor: pointer;[m
[32m+[m[32m        font-size: 46px;[m
[32m+[m[32m        font-weight: bold;[m
[32m+[m[32m        line-height: 45px;[m
[32m+[m[32m        width: 50px;[m
[32m+[m[32m        height: 50px;[m
[32m+[m[32m    }[m
[32m+[m
 .flipMove {[m
 	display: flex;[m
     align-items: center;[m
[1mdiff --git a/AEImageHub/ClientApp/src/componentsTemplate/custom-image-upload/index.js b/AEImageHub/ClientApp/src/componentsTemplate/custom-image-upload/index.js[m
[1mindex f448241..25f518f 100644[m
[1m--- a/AEImageHub/ClientApp/src/componentsTemplate/custom-image-upload/index.js[m
[1m+++ b/AEImageHub/ClientApp/src/componentsTemplate/custom-image-upload/index.js[m
[36m@@ -1,10 +1,12 @@[m
[31m-import React from 'react';[m
[32m+[m[32m﻿import React from 'react';[m
 import PropTypes from 'prop-types';[m
 import './index.css';[m
 import FlipMove from 'react-flip-move';[m
 import UploadIcon from './UploadIcon.svg';[m
 import axios from 'axios';[m
 import { getToken } from '../../adalConfig';[m
[32m+[m[32mimport Popup from 'reactjs-popup';[m
[32m+[m
 [m
 const styles = {[m
   display: "flex",[m
[36m@@ -86,7 +88,7 @@[m [mclass ReactImageUploadComponent extends React.Component {[m
       const files = this.state.files.slice();[m
 [m
       newFilesData.forEach(newFileData => {[m
[31m-        dataURLs.push(newFileData.dataURL);[m
[32m+[m[32m          dataURLs.push({ "value" : newFileData.dataURL });[m
         files.push(newFileData.file);[m
       });[m
 [m
[36m@@ -186,16 +188,28 @@[m [mclass ReactImageUploadComponent extends React.Component {[m
     );[m
   }[m
 [m
[31m-  renderPreviewPictures() {[m
[31m-    return this.state.pictures.map((picture, index) => {[m
[31m-      return ([m
[31m-        <div key={index} className="uploadPictureContainer">[m
[31m-          <div className="deleteImage" onClick={() => this.removeImage(picture)}>X</div>[m
[31m-          <img src={picture} className="uploadPicture" alt="preview"/>[m
[31m-        </div>[m
[31m-      );[m
[31m-    });[m
[31m-  }[m
[32m+[m[32m    renderPreviewPictures() {[m
[32m+[m[32m        return this.state.pictures.map((picture, index) => {[m
[32m+[m[32m            let uploadstatus;[m
[32m+[m[32m            let deleteButton;[m
[32m+[m[32m            if (picture.status != null) {[m
[32m+[m[32m                deleteButton = null[m
[32m+[m[32m                let success = <Popup trigger={<div className="imageUploadSuccess" onClick={() => this.removeImage(picture)}>✓</div>} position="top center" on="hover">Image successfully uploaded</Popup> ;[m
[32m+[m[32m                let fail = <Popup trigger={<div className="imageUploadfail" onClick={() => this.removeImage(picture)}>!</div>} position="top center" on="hover">Image exists in the system</Popup>[m[41m [m
[32m+[m[32m                uploadstatus = picture.status ? success : fail;[m[41m [m
[32m+[m[32m            } else {[m
[32m+[m[32m                deleteButton = <div className="deleteImage" onClick={() => this.removeImage(picture)}>X</div>;[m
[32m+[m[32m                uploadstatus = null;[m
[32m+[m[32m            }[m
[32m+[m[32m            return ([m
[32m+[m[32m                <div key={index} className="uploadPictureContainer">[m
[32m+[m[32m                    {deleteButton}[m
[32m+[m[32m                    {uploadstatus}[m
[32m+[m[32m                    <img src={picture.value} className="uploadPicture" alt="preview" />[m
[32m+[m[32m                </div>[m
[32m+[m[32m            );[m
[32m+[m[32m        });[m
[32m+[m[32m    }[m
 [m
   /*[m
    On button click, trigger input file to open[m
[36m@@ -221,7 +235,13 @@[m [mclass ReactImageUploadComponent extends React.Component {[m
                     'Authorization': "bearer " + getToken()[m
                 }[m
             }).then(res => {[m
[31m-                console.log(res.data)[m
[32m+[m[32m                delete this.state.files[index][m
[32m+[m[32m                this.state.pictures[index].status = true;[m
[32m+[m[32m                this.props.onChange(this.state.files, this.state.pictures);[m
[32m+[m[32m                }).catch(err => {[m
[32m+[m[32m                    delete this.state.files[index][m
[32m+[m[32m                    this.state.pictures[index].status = false;[m
[32m+[m[32m                    this.props.onChange(this.state.files, this.state.pictures);[m
             })[m
         })[m
     }[m
[36m@@ -237,21 +257,21 @@[m [mclass ReactImageUploadComponent extends React.Component {[m
                     </div>[m
 [m
                     <div className="buttonContainer">[m
[31m-                    <button[m
[31m-                        type={this.props.buttonType}[m
[31m-                        className={"chooseImageButton " + this.props.chooseImageButtonClassName}[m
[31m-                        style={this.props.buttonStyles}[m
[31m-                        onClick={this.triggerFileUpload}[m
[31m-                    >[m
[31m-                        {this.props.chooseImageButtonText}[m
[31m-                    </button>[m
[31m-                    <button[m
[31m-                        type={this.props.buttonType}[m
[31m-                        className={"uploadImagesButton " + this.props.uploadButtonClassName}[m
[31m-                        style={this.props.buttonStyles}[m
[32m+[m[32m                        <button[m
[32m+[m[32m                            type={this.props.buttonType}[m
[32m+[m[32m                            className={"chooseImageButton " + this.props.chooseImageButtonClassName}[m
[32m+[m[32m                            style={this.props.buttonStyles}[m
[32m+[m[32m                            onClick={this.triggerFileUpload}[m
[32m+[m[32m                        >[m
[32m+[m[32m                            {this.props.chooseImageButtonText}[m
[32m+[m[32m                        </button>[m
[32m+[m[32m                        <button[m
[32m+[m[32m                            type={this.props.buttonType}[m
[32m+[m[32m                            className={"uploadImagesButton " + this.props.uploadButtonClassName}[m
[32m+[m[32m                            style={this.props.buttonStyles}[m
                             onClick={this.uploadImagesToServer}[m
[31m-                    >[m
[31m-                        {this.props.uploadToServerButtonText}[m
[32m+[m[32m                        >[m
[32m+[m[32m                            {this.props.uploadToServerButtonText}[m
                         </button>[m
                     </div>[m
 [m
[1mdiff --git a/AEImageHub/ClientApp/src/index.js b/AEImageHub/ClientApp/src/index.js[m
[1mindex d90d20a..e359b45 100644[m
[1m--- a/AEImageHub/ClientApp/src/index.js[m
[1m+++ b/AEImageHub/ClientApp/src/index.js[m
[36m@@ -1,5 +1,5 @@[m
 import { runWithAdal } from 'react-adal';[m
[31m-import { authContext, getToken } from './adalConfig';[m
[32m+[m[32mimport { authContext } from './adalConfig';[m
 [m
 const DO_NOT_LOGIN = false;[m
 [m
[36m@@ -8,16 +8,5 @@[m [mrunWithAdal(authContext, () => {[m
 [m
     // eslint-disable-next-line[m
     require('./indexApp.js');[m
[31m-    const token = getToken();[m
[31m-    console.log(token);[m
[31m-    console.log(parseJwt(token));[m
[31m-    console.log(parseJwt(token).name);[m
 [m
[31m-},DO_NOT_LOGIN);[m
[31m-[m
[31m-[m
[31m-function parseJwt(token) {[m
[31m-    var base64Url = token.split('.')[1];[m
[31m-    var base64 = base64Url.replace('-', '+').replace('_', '/');[m
[31m-    return JSON.parse(window.atob(base64));[m
[31m-};[m
\ No newline at end of file[m
[32m+[m[32m},DO_NOT_LOGIN);[m
\ No newline at end of file[m
[1mdiff --git a/AEImageHub/Controllers/ImageController.cs b/AEImageHub/Controllers/ImageController.cs[m
[1mindex aac8652..54c3b86 100644[m
[1m--- a/AEImageHub/Controllers/ImageController.cs[m
[1m+++ b/AEImageHub/Controllers/ImageController.cs[m
[36m@@ -54,7 +54,18 @@[m [mnamespace ImageServer.Controllers[m
             Image img = GetImageModel(image);[m
             if (ImageExists(img.IId))[m
             {[m
[31m-                return Conflict("image already exists");[m
[32m+[m[32m                Image dbImgRecord = (Image)_context.Image.Where(i => i.IId == img.IId).First();[m
[32m+[m[32m                if (dbImgRecord.Trashed)[m
[32m+[m[32m                {[m
[32m+[m[32m                    dbImgRecord.Trashed = false;[m
[32m+[m[32m                    _context.Update(dbImgRecord);[m
[32m+[m[32m                    _context.SaveChanges();[m
[32m+[m[32m                    return Created(dbImgRecord.IId, img);[m
[32m+[m[32m                }[m
[32m+[m[32m                else[m
[32m+[m[32m                {[m
[32m+[m[32m                    return Conflict("image already exists");[m
[32m+[m[32m                }[m
             }[m
 [m
             // add image meta data into database[m
[36m@@ -81,7 +92,7 @@[m [mnamespace ImageServer.Controllers[m
             Image img = new Image()[m
             {[m
                 IId = ImageWriter.GetImageHash(image),[m
[31m-                UId = HttpContext.User.Identity.Name,[m
[32m+[m[32m                UId = HttpContext.User.Identity.Name.Split("@")[0],[m
                 ImageName = fn,[m
                 Size = (Int32)image.Length,[m
                 UploadedDate = DateTime.Now,[m
[36m@@ -140,9 +151,10 @@[m [mnamespace ImageServer.Controllers[m
         public string PutImage(string imageid, [FromBody] JObject payload)[m
         {[m
             Image image = (Image)_context.Image.Where(i => i.IId == imageid).First();[m
[31m-            if (payload["ImageName"].Type != JTokenType.Null) { image.ImageName = (string)payload["ImageName"]; };[m
[31m-            if (payload["Trashed"].Type != JTokenType.Null) { image.Trashed = (bool)payload["Trashed"]; };[m
[31m-            if (payload["Submitted"].Type != JTokenType.Null) { image.Submitted = (bool)payload["Submitted"]; };[m
[32m+[m[32m            if (payload["ImageName"] != null) { image.ImageName = (string)payload["ImageName"]; };[m
[32m+[m[32m            if (payload["Trashed"] != null) { image.Trashed = (bool)payload["Trashed"]; };[m
[32m+[m[32m            if (payload["Submitted"] != null) { image.Submitted = (bool)payload["Submitted"]; };[m
[32m+[m[32m            _context.Update(image);[m
             _context.SaveChanges();[m
             return imageid;[m
         }[m
[1mdiff --git a/AEImageHub/ImageResources/141989d7118b6b8f308ee3db961b7f09 b/AEImageHub/ImageResources/141989d7118b6b8f308ee3db961b7f09[m
[1mdeleted file mode 100644[m
[1mindex 9c15fe1..0000000[m
Binary files a/AEImageHub/ImageResources/141989d7118b6b8f308ee3db961b7f09 and /dev/null differ
[1mdiff --git a/AEImageHub/ImageResources/7a810e021711a4a4095e2d8fd2e19926 b/AEImageHub/ImageResources/7a810e021711a4a4095e2d8fd2e19926[m
[1mdeleted file mode 100644[m
[1mindex b3bc815..0000000[m
Binary files a/AEImageHub/ImageResources/7a810e021711a4a4095e2d8fd2e19926 and /dev/null differ
[1mdiff --git a/AEImageHub/ImageResources/cad8ccc0685456ea0b0c3919a205ba9f b/AEImageHub/ImageResources/cad8ccc0685456ea0b0c3919a205ba9f[m
[1mdeleted file mode 100644[m
[1mindex 2e63fe8..0000000[m
Binary files a/AEImageHub/ImageResources/cad8ccc0685456ea0b0c3919a205ba9f and /dev/null differ
[1mdiff --git a/AEImageHub/ImageResources/cdc93999d9ebc2524c7c606d6cf376a4 b/AEImageHub/ImageResources/cdc93999d9ebc2524c7c606d6cf376a4[m
[1mdeleted file mode 100644[m
[1mindex 45697a7..0000000[m
Binary files a/AEImageHub/ImageResources/cdc93999d9ebc2524c7c606d6cf376a4 and /dev/null differ
