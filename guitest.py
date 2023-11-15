import customtkinter
from configparser import ConfigParser

settings_file = "config.ini"

customtkinter.set_appearance_mode("System") # System, Dark, Light
customtkinter.set_default_color_theme("dark-blue")

root =customtkinter.CTk()
root.geometry("500x350")

config = ConfigParser()

config.read(settings_file)

config_data = config["DEFAULT"]

print(config_data["script"])

def test_function():
    print("Test Function")
    # Settings.
    print("TEXT: ", entry1.get())

"""     config["DEFAULT"] = {
        "numberdigits": 6,
        "numbertries": 8,
        "playername": "Player"
    }

    config["NeuralMind"] = {
        "numberdigits": 10,
        "numbertries": 6,
        "playername": "PlayerName"
    }

    with open(settings_file, "w") as f:
        config.write(f) """

def new_setting(value, key, section="DEFAULT"):
    config[section][key] = value
    with open(settings_file, "w") as f:
        config.write(f)


radio_var = customtkinter.IntVar(value=1)

frame = customtkinter.CTkFrame(master=root)
frame.pack(pady=20, padx=60, fill="both", expand=True) #pack or grid?

label = customtkinter.CTkLabel(master=frame, text="Choose Here") # , text_font=("Roboto", 24)
label.pack(pady=12, padx=10)
radio_button_1 = customtkinter.CTkRadioButton(frame, text="Python", value=1, variable=radio_var)
radio_button_2 = customtkinter.CTkRadioButton(frame, text="NextJS", value=2, variable=radio_var)
radio_button_1.pack(pady=10)
radio_button_2.pack(pady=10)

entry1 = customtkinter.CTkEntry(master=frame, placeholder_text="Name...") # show="*"
entry1.on_change(new_setting(entry1.get(), "name"))
entry1.pack(pady=12, padx=10)
entry1.insert(0, config_data["name"])

button = customtkinter.CTkButton(master=frame, text="Run", command=test_function)
button.pack(pady=12, padx=10)

root.mainloop()
