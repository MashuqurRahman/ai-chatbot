from django import forms

class BotForm(forms.Form):
    text=forms.CharField(max_length=150, widget=forms.TextInput(attrs={'placeholder': 'Send a message','id':'chat-input'}))