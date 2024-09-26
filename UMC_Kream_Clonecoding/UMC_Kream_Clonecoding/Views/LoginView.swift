//
//  LoginView.swift
//  UMC_Kream_Clonecoding
//
//  Created by 송재곤 on 9/26/24.
//

import UIKit

class LoginView: UIView {
    
    private let textFieldTextColor: UIColor = UIColor(hex: "#C1C1C1") ?? .gray
    private let textFieldBolderColor: UIColor = UIColor(hex: "#A2A2A2") ?? .lightGray
    private let btnColor: UIColor = UIColor(hex: "#D9D9D9") ?? .lightGray
    private let KKBtnColor: UIColor = UIColor(hex: "#D3D3D3") ?? .lightGray

    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = .white
        self.LoginComponents()
    }
    
    required init?(coder: NSCoder){
        fatalError("init (coder:) has not been implemented")
    }
    
    
    private let KreamLogo: UIImageView = {
        
            let imageView = UIImageView()
            imageView.contentMode = .scaleAspectFit // 이미지 비율 유지
            imageView.translatesAutoresizingMaskIntoConstraints = false // 오토 레이아웃 사용
            imageView.image = UIImage(named: "KreamLogo")
            return imageView
        }()
    
    public lazy var IdLabel: UILabel = {
        
        let IdLabel = UILabel()
        
        IdLabel.text = "이메일 주소"
        IdLabel.textColor = .black
        IdLabel.textAlignment = .left
        IdLabel.font = UIFont(name: "Inter-Medium", size: 12)
        
        IdLabel.translatesAutoresizingMaskIntoConstraints = false
        
        
        return IdLabel
    }()
    
    public lazy var IdField: UITextField = {
        
        let IdField = UITextField()
        
        IdField.placeholder = "      예) kream@kream.co.kr"
        IdField.textAlignment = .left
        IdField.textColor = textFieldTextColor
        IdField.font = UIFont(name: "Inter-Medium", size: 12)
        
        
        IdField.layer.borderColor = textFieldBolderColor.cgColor
        IdField.layer.borderWidth = 1.0
        IdField.layer.cornerRadius = 15
        IdField.translatesAutoresizingMaskIntoConstraints = false
        
        
        return IdField
    }()
    
    public lazy var pwLabel: UILabel = {
        
        let pwLabel = UILabel()
        
        pwLabel.text = "비밀번호"
        pwLabel.textColor = .black
        pwLabel.textAlignment = .left
        pwLabel.font = UIFont(name: "Inter-Medium", size: 12)
        
        pwLabel.translatesAutoresizingMaskIntoConstraints = false
        
        
        return pwLabel
    }()
    
    public lazy var pwField: UITextField = {
        
        let pwField = UITextField()
        
        pwField.placeholder = "      비밀번호를 입력해주새요"
        pwField.textAlignment = .left
        pwField.textColor = textFieldTextColor
        pwField.font = UIFont(name: "Inter-Medium", size: 12)
        
        
        pwField.layer.borderColor = textFieldBolderColor.cgColor
        pwField.layer.borderWidth = 1.0
        pwField.layer.cornerRadius = 15
        pwField.translatesAutoresizingMaskIntoConstraints = false
        
        
        return pwField
    }()
    
    public lazy var LoginButton: UIButton = {
        
        let LoginBtn = UIButton()
        
        LoginBtn.backgroundColor = btnColor
        LoginBtn.layer.cornerRadius = 8
        
        LoginBtn.setTitle("로그인", for: .normal)
        LoginBtn.setTitleColor(.white, for: .normal)
        LoginBtn.titleLabel?.font = UIFont(name: "Inter-Black", size: 14)
        
        LoginBtn.translatesAutoresizingMaskIntoConstraints = false
        
        return LoginBtn
    }()
    
    public lazy var KakaoLoginButton: UIButton = {
        
        let KKLoginBtn = UIButton()
        
        KKLoginBtn.layer.cornerRadius = 10
        KKLoginBtn.layer.borderWidth = 1
        KKLoginBtn.layer.borderColor = KKBtnColor.cgColor
        
        
        var configuration = UIButton.Configuration.plain()
        
        configuration.title = "카카오로 로그인"
        configuration.image = UIImage(named: "KakaoLogo")?.withRenderingMode(.alwaysOriginal)
        configuration.imagePlacement = .leading // 이미지를 왼쪽에 배치
        configuration.imagePadding = 69 // 이미지와 텍스트 사이의 간격
        configuration.baseForegroundColor = .black
        

        KKLoginBtn.configuration = configuration
        
        KKLoginBtn.contentHorizontalAlignment = .left
        KKLoginBtn.translatesAutoresizingMaskIntoConstraints = false
        
        return KKLoginBtn
    }()
    
    public lazy var AppleLoginButton: UIButton = {
        
        let AppleLoginBtn = UIButton()
        
        AppleLoginBtn.layer.cornerRadius = 10
        AppleLoginBtn.layer.borderWidth = 1
        AppleLoginBtn.layer.borderColor = KKBtnColor.cgColor
        
        
        var configuration = UIButton.Configuration.plain()
        
        configuration.title = "Apple로 로그인"
        configuration.image = UIImage(named: "AppleLogo")?.withRenderingMode(.alwaysOriginal)
        configuration.imagePlacement = .leading // 이미지를 왼쪽에 배치
        configuration.imagePadding = 69 // 이미지와 텍스트 사이의 간격
        configuration.baseForegroundColor = .black
        

        AppleLoginBtn.configuration = configuration
        
        AppleLoginBtn.contentHorizontalAlignment = .left
        AppleLoginBtn.translatesAutoresizingMaskIntoConstraints = false
        
        return AppleLoginBtn
    }()
    
    public func LoginComponents(){
        self.addSubview(KreamLogo)
        self.addSubview(IdLabel)
        self.addSubview(IdField)
        self.addSubview(pwLabel)
        self.addSubview(pwField)
        self.addSubview(LoginButton)
        self.addSubview(KakaoLoginButton)
        self.addSubview(AppleLoginButton)
        
        NSLayoutConstraint.activate([
            
            KreamLogo.topAnchor.constraint(equalTo: self.topAnchor, constant: 126),
            KreamLogo.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 53),
            
            IdLabel.topAnchor.constraint(equalTo: KreamLogo.bottomAnchor, constant: 87),
            IdLabel.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 45),
            
            IdField.topAnchor.constraint(equalTo: IdLabel.bottomAnchor, constant: 8),
            IdField.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 45),
            IdField.heightAnchor.constraint(equalToConstant: 34),
            IdField.widthAnchor.constraint(equalToConstant: 303),
            
            pwLabel.topAnchor.constraint(equalTo: IdField.bottomAnchor, constant: 17),
            pwLabel.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 45),
            
            pwField.topAnchor.constraint(equalTo: pwLabel.bottomAnchor, constant: 8),
            pwField.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 45),
            pwField.heightAnchor.constraint(equalToConstant: 34),
            pwField.widthAnchor.constraint(equalToConstant: 303),
            
            LoginButton.topAnchor.constraint(equalTo: pwField.bottomAnchor, constant: 17),
            LoginButton.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 45),
            LoginButton.widthAnchor.constraint(equalToConstant: 303),
            LoginButton.heightAnchor.constraint(equalToConstant: 38),
            
            KakaoLoginButton.topAnchor.constraint(equalTo: LoginButton.bottomAnchor, constant: 87),
            KakaoLoginButton.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 47.5),
            KakaoLoginButton.widthAnchor.constraint(equalToConstant: 298),
            KakaoLoginButton.heightAnchor.constraint(equalToConstant: 40),
            
            AppleLoginButton.topAnchor.constraint(equalTo: KakaoLoginButton.bottomAnchor, constant: 22),
            AppleLoginButton.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 47.5),
            AppleLoginButton.widthAnchor.constraint(equalToConstant: 298),
            AppleLoginButton.heightAnchor.constraint(equalToConstant: 40),
            
            
        ])
    }
        
    
}

extension UIColor {
    convenience init?(hex: String) {
        let r, g, b: CGFloat
        
        var hexColor = hex.trimmingCharacters(in: .whitespacesAndNewlines)
        hexColor = hexColor.replacingOccurrences(of: "#", with: "")
        
        var rgb: UInt64 = 0
        Scanner(string: hexColor).scanHexInt64(&rgb)
        
        switch hexColor.count {
        case 3: // RGB
            r = CGFloat((rgb & 0xF00) >> 8) / 15.0
            g = CGFloat((rgb & 0x0F0) >> 4) / 15.0
            b = CGFloat(rgb & 0x00F) / 15.0
        case 6: // RRGGBB
            r = CGFloat((rgb & 0xFF0000) >> 16) / 255.0
            g = CGFloat((rgb & 0x00FF00) >> 8) / 255.0
            b = CGFloat(rgb & 0x0000FF) / 255.0
        default:
            return nil
        }
        
        self.init(red: r, green: g, blue: b, alpha: 1.0)
    }
}
