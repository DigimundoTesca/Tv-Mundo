from django import forms
from django.contrib.auth.models import User
from django.contrib.auth.forms import UserCreationForm

class LogInForm(forms.Form):
	username = forms.CharField()
	password = forms.CharField()

class RegisterForm(UserCreationForm):
	def __init__(self, *args, **kwargs):
		super(RegisterForm, self).__init__(*args, **kwargs)
		self.fields['username'].widget.attrs.update({'class': 'form-control', 'type': 'text', 'placeholder': 'Nombre de usuario'})
		self.fields['email'].widget.attrs.update({'class': 'form-control', 'placeholder': 'correo'})
		self.fields['password1'].widget.attrs.update({'class': 'form-control', 'placeholder': 'Contraseña'})
		self.fields['password2'].widget.attrs.update({'class': 'form-control', 'placeholder': 'Confirmar contraseña'})

	class Meta:
		model = User
		fields = (
			"username",
			"email",
			"password1",
			"password2",
		)

		labels = {
			'username': 'Nombre de usuario',
			'email': 'Correo' ,
			'password1':'Contraseña',
			'password2': 'Confirmar contraseña',
		}
		widgets = {
			'username': forms.TextInput(attrs={'class':'form-control', 'placeholder':'Nombre de Usuario'}),
			'email': forms.TextInput(attrs={'class':'form-control', 'placeholder':'Correo'}), 
		}
