from flask import Flask,request

app = Flask(__name__)

@app.route("/greet",method=["POST"])
def greet_post():
    name = request.form.get("name","Guest")
    return(f"Hello, {name}!")

if __name__ =='__main__':
    app.run(debug=True)