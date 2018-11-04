#pragma once

#ifndef APPLICATION_h
    #include "Application.h"
#endif

#ifdef HZ_PLATFORM_WINDOWS
extern Hazel::Aplication* Hazel::CreateApplication();

int main(int argc, char ** argv)
{
    auto app = Hazel::CreateApplication();
    app->Run();
    delete app;
}
#else
extern Hazel::Application* Hazel::CreateApplication();

int main()
{
    Hazel::Application* app = Hazel::CreateApplication();
    app->Run();
    delete app;
}
#endif
