<?php

return [
    'name' => 'Marketplace',
    'email' => [
        'store_new_order_title' => 'Notice about new order',
        'store_new_order_description' => 'Send email to the store owner when an order placed',
        'verify_vendor_title' => 'Verify vendor',
        'verify_vendor_description' => 'Send email to the admin when a vendor registers',
        'pending_product_approval_title' => 'Pending product approval',
        'pending_product_approval_description' => 'Send email to the admin when a vendor post their products',
        'vendor_account_approved_title' => 'Vendor account approved',
        'vendor_account_approved_description' => 'Send email to vendor when their account approved',
        'product_approved_title' => 'Product approved',
        'product_approved_description' => 'Send email to vendor when their product approved',
        'withdrawal_approved_title' => 'Withdrawal approved',
        'withdrawal_approved_description' => 'Send email to vendor when their withdrawal request approved',
    ],
    'current_balance' => 'Current balance',
    'settings' => [
        'title' => 'Settings for marketplace',
        'description' => 'Setup commission fee',
        'fee_per_order' => 'Fee per fee (%), suggest: 2 or 3',
        'default_commission_fee' => 'Default commission fee (%), suggest: 2 or 3',
        'enable_commission_fee_for_each_category' => 'Enable commission fee for each category?',
        'categories' => 'Categories',
        'select_categories' => 'Select categories..',
        'commission_fee' => 'Commission fee (%)',
        'commission_fee_by_category' => 'Commission fee by category (%)',
        'fee_withdrawal' => 'Fee withdrawal (Fixed amount)',
        'check_valid_signature' => 'Check valid signature in vendor\'s earnings',
        'verify_vendor' => 'Vendor verification (Vendor just can post their product listing after getting verified)',
        'enable_product_approval' => 'Enable product approval',
        'enable_product_approval_description' => 'If enabled, the admin must approve the product before it is published.',
        'hide_store_phone_number' => 'Hide store phone number?',
        'hide_store_email' => 'Hide store email?',
        'hide_store_address' => 'Hide store address?',
        'hide_store_social_links' => 'Hide store social links?',
        'allow_vendor_manage_shipping' => 'Allow vendor manage shipping?',
        'commission_fee_each_category_fee_name' => 'Commission fee of commission setting :key',
        'commission_fee_each_category_name' => 'Categories of commission setting :key',
        'add_new' => 'Add new',
        'payout_methods' => 'Payout methods',
        'max_upload_filesize' => 'Max upload filesize (MB)',
        'max_upload_filesize_placeholder' => 'Default: 10',
        'max_product_images_upload_by_vendor' => 'Max number of images for each product',
        'enable_vendor_registration' => 'Enable vendor registration',
        'minimum_withdrawal_amount' => 'Minimum withdrawal amount (Fixed)',
        'minimum_withdrawal_amount_helper' => 'Specify the minimum amount a vendor can withdraw. Default is 0.',
        'allow_vendor_delete_their_orders' => 'Allow vendors to delete their orders',
        'allow_vendor_delete_their_orders_description' => 'When enabled, vendors can manage their order list by removing unwanted entries. Use with caution as deleted orders may impact transaction records.',
    ],
    'theme_options' => [
        'name' => 'Marketplace',
        'description' => 'Theme options for Marketplace',
        'logo_vendor_dashboard' => 'Logo in the vendor dashboard (Default is the main logo)',
    ],
    'store_name' => 'Store name',
    'store_email' => 'Store email',
    'store_phone' => 'Store phone',
    'store_address' => 'Store address',
    'store_url' => 'Store URL',
    'product_name' => 'Product name',
    'product_url' => 'Product URL',
    'withdrawal_amount' => 'Withdrawal amount',
    'helpers' => [
        'customer_status' => 'If you change the status other than ":status" this vendor\'s store will also change to ":store"',
        'store_status' => 'If you change the status other than ":status" this store\'s account will also change to ":customer"',
    ],
    'tables' => [
        'earnings' => 'Earnings',
        'products_count' => 'Products Count',
    ],
    'vendors' => 'Vendors',
    'payout_payment_methods' => [
        'bank_transfer' => 'Bank Transfer',
        'paypal' => 'PayPal',
    ],
    'reports' => [
        'name' => 'Reports',
        'total_fee_earnings' => 'Total fee earnings: :value',
        'total_fee' => 'Total fee',
        'total_amount' => 'Total amount',
        'store_revenues' => 'Store revenues',
        'sale_commissions' => 'Sale commissions',
        'fee' => 'Fee (:symbol)',
        'amount' => 'Amount (:symbol)',
    ],
    'vendor' => 'Vendor',
    'vendor_name' => 'Vendor name',
];
