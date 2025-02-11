mkdir -p ./config || true
echo '[
    {
        "ds": "external",
        "method": "post",
        "controller": "Contact",
        "apiUri": "/contact",
        "url": "https://api.bexio.com/2.0/contact",
        "bodyParams": {
            "type": "object",
            "properties": {
                "nr": {
                    "type": "string"
                },
                "contact_type_id": {
                    "type": "number"
                },
                "name_1": {
                    "type": "string",
                    "required": true
                },
                "name_2": {
                    "type": "string"
                },
                "salutation_id": {
                    "type": "number"
                },
                "salutation_form": {
                    "type": "number"
                },
                "titel_id": {
                    "type": "number"
                },
                "address": {
                    "type": "string"
                },
                "postcode": {
                    "type": "string"
                },
                "city": {
                    "type": "string"
                },
                "country_id": {
                    "type": "number"
                },
                "mail": {
                    "type": "string"
                },
                "mail_second": {
                    "type": "string"
                },
                "phone_fixed": {
                    "type": "string"
                },
                "phone_fixed_second": {
                    "type": "string"
                },
                "phone_mobile": {
                    "type": "string"
                },
                "fax": {
                    "type": "string"
                },
                "url": {
                    "type": "string"
                },
                "skype_name": {
                    "type": "string"
                },
                "remarks": {
                    "type": "string"
                },
                "language_id": {
                    "type": "number"
                },
                "contact_group_ids": {
                    "type": "string"
                },
                "contact_branch_ids": {
                    "type": "string"
                },
                "user_id": {
                    "type": "number",
                    "required": true
                },
                "owner_id": {
                    "type": "number",
                    "required": true
                }
            }
        },
        "createModel": true,
        "modelName": "Contact",
        "additionalProperties": {
            "id": {
                "type": "number",
                "required": false
            },
            "updated_at": {
                "type": "string"
            },
            "profile_image": {
                "type": "string"
            }
        },
        "apiFunction": "createBexioContact",
        "responses": {
            "422": {
                "description": "Validation error",
                "schema": {
                    "type": "object",
                    "properties": {
                        "error_code": {
                            "type": "number"
                        },
                        "message": {
                            "type": "number"
                        }
                    }
                }
            },
            "201": {
                "schema": {
                    "type": "object",
                    "model": "Contact"
                }
            }
        }
    },
    {
        "ds": "external",
        "controller": "Contact",
        "apiUri": "/contact",
        "url": "https://api.bexio.com/2.0/contact",
        "apiFunction": "fetchBexioContact",
        "modelName": "Contact",
        "responses": {
            "200": {
                "schema": {
                    "type": "array",
                    "model": "Contact"
                }
            }
        }
    },
    {
        "ds": "external",
        "controller": "Contact",
        "method": "post",
        "apiUri": "/contact/search",
        "description": "search contects.",
        "url": "https://api.bexio.com/2.0/contact/search",
        "apiFunction": "searchBexioContact",
        "bodyParams": {
            "type": "object",
            "properties": {
                "field": {
                    "type": "string",
                    "required": true
                },
                "value": {
                    "type": "string",
                    "required": true
                },
                "criteria": {
                    "type": "string",
                    "required": true,
                    "enum": [
                        "=",
                        "equal",
                        "!=",
                        "not_equal",
                        ">",
                        "greater_than",
                        ">=",
                        "greater_equal",
                        "<",
                        "less_than",
                        "<=",
                        "less_equal",
                        "like",
                        "not_like",
                        "is_null",
                        "not_null",
                        "in",
                        "not_in"
                    ]
                }
            }
        },
        "createModel": true,
        "requestModelName": "SearchContact",
        "modelName": "Contact",
        "queryParams": {
            "order_by": {
                "type": "string",
                "enum": [
                    "id",
                    "nr",
                    "name_1",
                    "updated_at"
                ]
            },
            "limit": {
                "type": "number"
            },
            "offset": {
                "type": "number"
            },
            "show_archived": {
                "type": "boolean"
            }
        },
        "responses": {
            "200": {
                "schema": {
                    "type": "array",
                    "model": "Contact"
                }
            }
        }
    },
    {
        "ds": "external",
        "controller": "Contact",
        "apiUri": "/contact/{contact_id}",
        "url": "https://api.bexio.com/2.0/contact/{contact_id}",
        "apiFunction": "fetchSingleBexioContact",
        "description": "fetch single contects.",
        "modelName": "Contact",
        "pathParams": {
            "contact_id": {
                "type": "number"
            }
        },
        "queryParams": {
            "show_archived": {
                "type": "boolean"
            }
        },
        "responses": {
            "200": {
                "schema": {
                    "type": "object",
                    "model": "Contact"
                }
            }
        }
    },
    {
        "ds": "external",
        "method": "post",
        "controller": "Contact",
        "apiUri": "/contact/{contact_id}",
        "description": "update contects.",
        "url": "https://api.bexio.com/2.0/contact/{contact_id}",
        "pathParams": {
            "contact_id": {
                "type": "number"
            }
        },
        "bodyParams": {
            "type": "object",
            "properties": {
                "nr": {
                    "type": "string"
                },
                "contact_type_id": {
                    "type": "number"
                },
                "name_1": {
                    "type": "string",
                    "required": true
                },
                "name_2": {
                    "type": "string"
                },
                "salutation_id": {
                    "type": "number"
                },
                "salutation_form": {
                    "type": "number"
                },
                "titel_id": {
                    "type": "number"
                },
                "address": {
                    "type": "string"
                },
                "postcode": {
                    "type": "string"
                },
                "city": {
                    "type": "string"
                },
                "country_id": {
                    "type": "number"
                },
                "mail": {
                    "type": "string"
                },
                "mail_second": {
                    "type": "string"
                },
                "phone_fixed": {
                    "type": "string"
                },
                "phone_fixed_second": {
                    "type": "string"
                },
                "phone_mobile": {
                    "type": "string"
                },
                "fax": {
                    "type": "string"
                },
                "url": {
                    "type": "string"
                },
                "skype_name": {
                    "type": "string"
                },
                "remarks": {
                    "type": "string"
                },
                "language_id": {
                    "type": "number"
                },
                "contact_group_ids": {
                    "type": "string"
                },
                "contact_branch_ids": {
                    "type": "string"
                },
                "user_id": {
                    "type": "number",
                    "required": true
                },
                "owner_id": {
                    "type": "number",
                    "required": true
                }
            }
        },
        "modelName": "Contact",
        "apiFunction": "editBexioContact",
        "responses": {
            "422": {
                "description": "Validation error",
                "schema": {
                    "type": "object",
                    "properties": {
                        "error_code": {
                            "type": "number"
                        },
                        "message": {
                            "type": "number"
                        }
                    }
                }
            },
            "200": {
                "schema": {
                    "type": "object",
                    "model": "Contact"
                }
            }
        }
    },
    {
        "ds": "external",
        "method": "del",
        "controller": "Contact",
        "apiUri": "/contact/{contact_id}",
        "url": "https://api.bexio.com/2.0/contact/{contact_id}",
        "pathParams": {
            "contact_id": {
                "type": "number"
            }
        },
        "apiFunction": "deleteBexioContact",
        "modelName": "Contact",
        "responses": {
            "200": {
                "schema": {
                    "type": "object",
                    "properties": {
                        "success": {
                            "type": "boolean"
                        }
                    }
                }
            }
        }
    },
    {
        "ds": "external",
        "method": "post",
        "controller": "Contact",
        "apiUri": "/contact/bulk_create",
        "description": "create bulk contects.",
        "url": "https://api.bexio.com/2.0/contact/_bulk_create",
        "apiFunction": "bulkCreateBexioContact",
        "bodyParams": {
            "type": "array",
            "properties": {
                "nr": {
                    "type": "string"
                },
                "contact_type_id": {
                    "type": "number"
                },
                "name_1": {
                    "type": "string",
                    "required": true
                },
                "name_2": {
                    "type": "string"
                },
                "salutation_id": {
                    "type": "number"
                },
                "salutation_form": {
                    "type": "number"
                },
                "titel_id": {
                    "type": "number"
                },
                "address": {
                    "type": "string"
                },
                "postcode": {
                    "type": "string"
                },
                "city": {
                    "type": "string"
                },
                "country_id": {
                    "type": "number"
                },
                "mail": {
                    "type": "string"
                },
                "mail_second": {
                    "type": "string"
                },
                "phone_fixed": {
                    "type": "string"
                },
                "phone_fixed_second": {
                    "type": "string"
                },
                "phone_mobile": {
                    "type": "string"
                },
                "fax": {
                    "type": "string"
                },
                "url": {
                    "type": "string"
                },
                "skype_name": {
                    "type": "string"
                },
                "remarks": {
                    "type": "string"
                },
                "language_id": {
                    "type": "number"
                },
                "contact_group_ids": {
                    "type": "string"
                },
                "contact_branch_ids": {
                    "type": "string"
                },
                "user_id": {
                    "type": "number",
                    "required": true
                },
                "owner_id": {
                    "type": "number",
                    "required": true
                }
            }
        },
        "modelName": "Contact",
        "responses": {
            "422": {
                "description": "Validation error",
                "schema": {
                    "type": "object",
                    "properties": {
                        "error_code": {
                            "type": "number"
                        },
                        "message": {
                            "type": "number"
                        }
                    }
                }
            },
            "200": {
                "schema": {
                    "type": "array",
                    "model": "Contact"
                }
            }
        }
    },
    {
        "ds": "external",
        "method": "post",
        "controller": "Contact",
        "description": "restore deleted contect.",
        "apiUri": "/contact/{contact_id}/restore",
        "url": "https://api.bexio.com/2.0/contact/{contact_id}/restore",
        "pathParams": {
            "contact_id": {
                "type": "number"
            }
        },
        "apiFunction": "restoreBexioContact",
        "modelName": "Contact",
        "responses": {
            "200": {
                "schema": {
                    "type": "object",
                    "properties": {
                        "success": {
                            "type": "boolean"
                        }
                    }
                }
            }
        }
    },
    {
        "ds": "external",
        "controller": "Invoice",
        "method": "get",
        "apiUri": "/invoice/list",
        "description": "Retrieve invoice data from Bexio.",
        "url": "https://api.bexio.com/2.0/kb_invoice",
        "createModel": true,
        "modelName": "Invoice",
        "queryParams": {
            "order_by": {
                "type": "string",
                "enum": [
                    "id",
                    "total",
                    "total_net",
                    "total_gross",
                    "updated_at"
                ]
            },
             "limit": {
                "type": "number"
            },
            "offset": {
                "type": "number"
            }
        },
        "apiFunction": "getBexioInvoices",
        "responses": {
            "200": {
                "schema": {
                    "type": "array",
                    "properties": {
                        "id": {
                            "type": "number"
                        },
                        "document_nr": {
                            "type": "string"
                        },
                        "title": {
                            "type": "string"
                        },
                        "contact_id": {
                            "type": "number"
                        },
                        "contact_sub_id": {
                            "type": "number"
                        },
                        "user_id": {
                            "type": "number"
                        },
                        "project_id": {
                            "type": "number"
                        },
                        "logopaper_id": {
                            "type": "number"
                        },
                        "language_id": {
                            "type": "number"
                        },
                        "bank_account_id": {
                            "type": "number"
                        },
                        "currency_id": {
                            "type": "number"
                        },
                        "payment_type_id": {
                            "type": "number"
                        },
                        "header": {
                            "type": "string"
                        },
                        "footer": {
                            "type": "string"
                        },
                        "total_gross": {
                            "type": "string"
                        },
                        "total_net": {
                            "type": "string"
                        },
                        "total_taxes": {
                            "type": "string"
                        },
                        "total_received_payments": {
                            "type": "string"
                        },
                        "total_credit_vouchers": {
                            "type": "string"
                        },
                        "total_remaining_payments": {
                            "type": "string"
                        },
                        "total": {
                            "type": "string"
                        },
                        "total_rounding_difference": {
                            "type": "number"
                        },
                        "mwst_type": {
                            "type": "number"
                        },
                        "mwst_is_net": {
                            "type": "boolean"
                        },
                        "show_position_taxes": {
                            "type": "boolean"
                        },
                        "is_valid_from": {
                            "type": "string"
                        },
                        "is_valid_to": {
                            "type": "string"
                        },
                        "contact_address": {
                            "type": "string"
                        },
                        "kb_item_status_id": {
                            "type": "number"
                        },
                        "reference": {
                            "type": "string"
                        },
                        "api_reference": {
                            "type": "string"
                        },
                        "viewed_by_client_at": {
                            "type": "string"
                        },
                        "updated_at": {
                            "type": "string"
                        },
                        "esr_id": {
                            "type": "number"
                        },
                        "qr_invoice_id": {
                            "type": "number"
                        },
                        "template_slug": {
                            "type": "string"
                        },
                        "network_link": {
                            "type": "string"
                        }
                    }
                }
            }
        }
    }
]' > ./config/bexio-options.json