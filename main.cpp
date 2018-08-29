#include <iostream>
#include <libusb-1.0/libusb.h>

bool PrintCaddyFound(libusb_device *dev);

int main()
{

    libusb_device **devices_;
    libusb_context *context_ = nullptr;
    ssize_t count{0};
    auto results{libusb_init(&context_)};

    if (results < 0)
    {
        std::cout << "Error initializing session";
        return 1;
    }

    count = libusb_get_device_list(context_, &devices_);

    if (count < 0)
    {
       std::cout << "Error Getting Devices" << std::endl;
    }

    auto found{false};
    for (ssize_t i{0}; i < count; ++i)
    {
        if (PrintCaddyFound(devices_[i]))
        {
            found = true;
        }
    }

    if (!found)
    {
        std::cout << "Print Caddy is not Connected." << std::endl;
    }

    libusb_free_device_list(devices_, 1);
    libusb_exit(context_);

    return 0;
}

bool PrintCaddyFound(libusb_device *dev)
{
    auto found{false};
    libusb_device_descriptor descriptor_{};
    int results = libusb_get_device_descriptor(dev, &descriptor_);
    if (results < 0) {
        std::cout << "Unable to retrieve device descriptor" << std::endl;
        return found;
    }

    if (descriptor_.idVendor == 11774) {
        std::cout << "\nPrint Caddy is connected: " << std::endl;
        std::cout << "VendorID: " << std::hex << descriptor_.idVendor << "  ";
        std::cout << "ProductID: " << std::hex << descriptor_.idProduct << std::endl;
        found = true;
    }

    return found;
}
