//
// Created by wolf on 8/30/18.
//

#include <libusb-1.0/libusb.h>
#include <cstdlib>
#include <iostream>


bool PrintCaddyFound(libusb_device *dev);

int main()
{

    libusb_device **devices_;
    libusb_context *context_ = nullptr;
    ssize_t count_{0};
    auto results{libusb_init(&context_)};
    auto found{false};


    do
    {
        count_ = libusb_get_device_list(context_, &devices_);
        for (ssize_t i{0}; i < count_; ++i)
        {
            if (PrintCaddyFound(devices_[i]))
            {
                found = true;
            }
        }

    } while(!found);



    return 0;
}

bool PrintCaddyFound(libusb_device *dev)
{
    auto found{false};
    libusb_device_descriptor descriptor_{};
    int results = libusb_get_device_descriptor(dev, &descriptor_);

    if (descriptor_.idVendor == 11774) {
        std::cout << "\nPrint Caddy is connected: " << '\n';
        std::cout << "VendorID: " << std::hex << descriptor_.idVendor << "  ";
        std::cout << "ProductID: " << std::hex << descriptor_.idProduct << std::endl;
        found = true;
    }

    return found;
}