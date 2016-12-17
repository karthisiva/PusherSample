//
//  ViewController.swift
//  PlainTextConversion
//
//  Created by Sureshbabu Naidu on 16/12/16.
//  Copyright © 2016 Vishwak Sol pvt. ltd. All rights reserved.
//

import UIKit
import PusherSwift
class ViewController: UIViewController {
     var attrStr = NSMutableAttributedString()
    var pusher: Pusher! = nil
    
    
    
    let sampleText = "<span style=\"color: red;\">1.1.2016&nbsp; முதல்&nbsp; 31.12.2016 வரை</span><br />\r\n<br />\r\n<em>அசுவதி, பரணி, கார்த்திகை 1&#8211;ம் பாதம் வரை</em><br />\r\n<strong><br />\r\n(பெயரின் முதல் எழுத்துக்கள்: சு, சே, சோ, ல, லி, லு, லே, லோ, அ உள்ளவர்களுக்கும்)</strong><br />\r\n<br />\r\n<span style=\"font-size: 14pt;\"><span style=\"font-size: 18pt;\"><span style=\"font-size: 14pt;\">ராசிநாதன் பார்க்கின்றார்! ராஜ யோகம் வருகிறது!</span></span></span><br />\r\n<span style=\"color: red;\"><br />\r\nசவால் விடுவதையும், அதைச் சமாளிப்பதையும் கைவந்த கலையாகக் கொண்ட மேஷ ராசி நேயர்களே!</span><br />\r\n<br />\r\nவந்துவிட்டது புத்தாண்டு. வாழ்க்கைத் தேவைகள் வரிசையாகப் பூர்த்தியாகப் போகின்றது. வேண்டியதை எல்லாம் அள்ளிக்கொடுக்கப் போகின்றது இந்தப் புத்தாண்டு. <br />\r\n<br />\r\n2016&#8211;ம் ஆண்டு உத்திரம் நட்சத்திரத்தில் பிறக்கிறது. அது சூரியனுக்குரிய நட்சத்திரமாகும். சூரியன் உங்கள் ராசிக்கு ஐந்தாம் இடத்திற்கு அதிபதியாவார். பஞ்சம ஸ்தானத்தைப் புத்திர ஸ்தானம் என்று சொல்வார்கள். பூர்வ புண்ணிய ஸ்தானம் என்றும் வர்ணிப்பர். எனவே பூர்வ புண்ணி பலனால் உங்களுக்கு வாழ்க்கையில் என்னவெல்லாம் கிடைக்க வேண்டுமோ அத்தனையும் கிடைக்க இந்தப் புத்தாண்டு வழிவகுத்துக் கொடுக்கப் போகின்றது. <br />\r\n<br />\r\nஅது மட்டுமல்லாமல் புத்தாண்டு பிறக்கும் நாள் வெள்ளிக்கிழமை என்பதால் சுக்ர பலத்தோடு பிறக்கின்றது. அள்ளிக் கொடுக்கும் சுக்ரன் உங்கள் ராசிக்கு 2, 7 ஆகிய இடங்களுக்கு அதிபதியாவார். எனவே நகையும், தொகையும் வந்து கொண்டே இருக் கும்.&nbsp; <br />\r\n<br />\r\n<strong>1.1.2016 முதல் 6.2.2016 வரை</strong><br />\r\n<br />\r\nஇக்காலத்தில், குரு கன்னி ராசியில் வக்ரம் பெற்றுச் சஞ்சரிக்கின்றார். அதிசாரமாக வரும் குரு அதிக நற்பலன்களை உங்களுக்கு வழங்கலாம். மதிப்பும், மரியாதையும் கூடும். மக்கள் செல்வங்களுக்கான விழாக்கள் மகத்தாக நடைபெறும். 9, 12 ஆகிய இடங்களுக்கு அதிபதியான குரு வக்ரம் பெறும்பொழுது பொன், பொருள், பூமி சேர்க்கைக்கு வாய்ப்பு ஏற்படும். அதே நேரத்தில்&nbsp; பெற்றோர், உற்றார், உறவினர் பிரியத்தை குறைக்கவும் செய்வார். எனவே இக்காலத்தில் உறவினர்களை அனுசரித்துக் கொள்வது நல்லது. அந்நிய தேசத்தில் இருப்பவர்கள் தாய் நாடு திரும்புவர்.<br />\r\n<br />\r\n<strong>ராகு&#8211;கேது பெயர்ச்சிக் காலம்!</strong><br />\r\n<br />\r\nஇதுவரை உங்கள் ராசிக்கு 6&#8211;ம் இடத்தில் சஞ்சரித்து வந்த ராகு பகவான் ஜனவரி 8&#8211;ந் தேதி முதல் 5&#8211;ம் இடமான சிம்ம ராசியில் சஞ்சரிக்கப் போகின்றார். இதுவரை உங்கள் ராசிக்கு 12&#8211;ம் இடத்தில் சஞ்சரித்து வந்த கேது பகவான் 11&#8211;ம் இடமான லாப ஸ்தானத்தில் சஞ்சரிக்கப் போகின்றார். <br />\r\n<br />\r\nஇந்த ராகு&#8211;கேது பெயர்ச்சிக் காலம் ஒரு இனிய காலம் என்றே சொல்லலாம். பிள்ளைகள் வழியில் நல்ல தகவல்களைக் கொடுக்கலாம். கடன் மேல் கடன் என்றிருந்த நிலை மாறி, இனி கனிவான வாழ்க்கை அமையப் போகின்றது. இடம் மாறும் யோகமும், இல்லம் கட்டிக் குடியேறும் யோகமும் கூட ஒரு சிலருக்கு வந்து சேரலாம்.<br />\r\n<br />\r\nபதினோராமிடத்து கேது பண வரவை அதிகரிக்கச் செய்யும். அந்நிய தேசத்திலிருந்து வரும் அழைப்புகளை ஏற்றுக் கொள்வதா?, வேண்டாமா? என்று மனதிற்குள்ளேயே பட்டிமன்றம் நடத்திப் பார்ப்பீர்கள். இளைய சகோதரத்தோடு இணக்கம் ஏற்படும். <br />\r\n<br />\r\n<strong>சிம்ம குருவின் சஞ்சாரம்!</strong><br />\r\n<br />\r\n7.2.2016 முதல் 1.8.2016 வரை சிம்மத்தில் குரு சஞ்சரிக்கிறார்.<br />\r\n<span style=\"color: red;\"><br />\r\n&#8216;பஞ்சம ஸ்தானம் தன்னில்<br />\r\nபகர்ந்திடும் குருதான் வந்தால்<br />\r\nமிஞ்சிடும் செல்வம் வாய்க்கும்!<br />\r\nமிக மிக நன்மை சேரும்!<br />\r\nகொஞ்சிடும் குழந்தைப் பேறும்<br />\r\nகுவலயம் போற்றும் வாழ்வும்,<br />\r\nவந்திடும் வரனும் வாய்க்கும்!<br />\r\nவாழ்க்கையில் வளர்ச்சி கூடும்!&#8217;</span><br />\r\n<br />\r\nஎன்று ஜோதிட சாஸ்திரம் சொல்கின்றது.<br />\r\n<br />\r\n7.2.2016 முதல் 17.5.2016 வரை சிம்மத்தில் குரு வக்ரம் பெறுகிறார். 18.5.2016 முதல் வக்ர நிவர்த்தியாகி 1.8.2016 வரை ராகுவோடு இணைந்து நன்மையை வழங்கப் போகிறார். ஆதாயம் தரும் தகவல்கள்&nbsp; வந்து கொண்டே இருக்கும். வக்ர இயக்கத்தில் இருக்கும் பொழுது செய்யாத நற்பலன்களை வக்ர நிவர்த்திக்குப் பின்னால் குரு கொடுக்கத் தயாராகி விடுவார். <br />\r\n<br />\r\nஎனவே மே 2016&#8211;க்கு மேல் அடிப்படை வசதிகளைப் பெருக்கிக்கொள்ள படிப்படியான முன்னேற்றம் வந்து சேரும்.&nbsp; நிதி நிலை உயரும். நிம்மதி கிடைக்கும். மதிப்பும், மரியாதையும் கூடும். கசந்த காலங்கள் வசந்த காலமாக மாறும். இழந்த சொத்துக்கள் மீண்டும் கிடைக்கும். மனஸ்தாபம் மறையும். குருவின் நேரடிப் பார்வை உங்கள் ராசியில் பதிவதால் கல்யாணக் கனவுகள் நனவாகும்.&nbsp; கல்வியில் இருந்த தடைகள் அகலும். செய் தொழிலில் எதிர்பார்த்த லாபம் கிடைக்கும். சேமிப்பு உச்சத்தை எட்டும். <br />\r\n<br />\r\nசாமி துணையோடு சகலமும் நீங்கள் செய்தால் &#8216;நாமிருவர்&#8217; என்றிருந்த தம்பதியருக்கு &#8216;நமக்கு ஒருவர்&#8217; என்று பிள்ளை பிறக்கும். மணிக்கணக்காக வேலை பார்த்தும் மனதிற்கு திருப்தி தரும் விதத்தில் இல்லையே என்று நினைத்தவர்கள் இனி உயர்வின் உச்சத்தை தேடிச் செல்லப் போகிறீர்கள். ஆரோக்கியம் சீராகி ஆனந்தப்படுத்தும். <br />\r\n<br />\r\n<strong>குருவின் பார்வை பலன்!</strong><br />\r\n<br />\r\nமந்தமாக இருந்த தொழில், குருவின் பார்வை காரணமாக இனி விறுவிறுப்பாக நடைபெறும். கட்டளைக்கு அடிபணியாமல் கவலையைக் கொடுத்த பணியாளர்கள் இனி கூப்பிட்ட குரலுக்கு ஓடிவருவர். திருமண முயற்சிகள் கைகூடும். சிம்ம குருவின் பார்வை உங்கள் ராசிக்கு 1, 9, 11 ஆகிய இடங்களில் பதிகிறதல்லவா? நவக்கிரகங்களில் சுபகிரகமாக விளங்கும் குரு பகவான் பார்வை பலத்தால் இந்தப் புத்தாண்டு பொன் கொழிக்கும் ஆண்டாக அமையப் போகின்றது. மண்ணைத் தொட்டாலும் பொன்னாகும். என்ன நினைத்தாலும் எளிதில் நடைபெறும். <br />\r\n<br />\r\n<strong>சனியின் சஞ்சார நிலை!</strong><br />\r\n<br />\r\n27.3.2016 முதல் 10.8.2016 வரை விருச்சிகத்தில் சனி வக்ரம் பெறுகிறார். &#8216;கெட்டவன் கெட்டிடில் கிட்டிடும் ராஜயோகம்&#8217; என்பதற்கிணங்க அஷ்டமத்துச் சனி வக்ரம் பெற்றால் ஆதாயம் அதிகரிக்கும். ஆரோக்கியம் சீராகி ஆனந்தப்படுத்தும். &#8216;நஷ்டம்&#8217; என்ற சொல் மாறி &#8216;லாபம்&#8217; என்ற சொல் உங்கள் நாக்கிலேயே உச்சரிக்கப்படும். அச்சங்கள் அகலும். ஆதரிப்போர் எண்ணிக்கை உயரும். வீடு மாற்றம், வேலை மாற்றம், வாகன மாற்றம் போன்றவை விரும்பியபடியே அமையும் நேரமிது. <br />\r\n<br />\r\n<strong>செவ்வாய் சனி சேர்க்கைக் காலம்!</strong><br />\r\n<br />\r\nஅதிக கவனம் செலுத்த வேண்டிய நேரமிது. நீங்கள் மட்டுமல்ல. அனைத்து ராசிக்காரர்களும் தான். ஆயினும் குறிப்பாக உங்கள் ராசிக்கு அதிபதி செவ்வாய் என்பதால் 27.2.2016 முதல் 9.9.2016 வரை விருச்சிக ராசியில் மந்தன் சனியும், மங்களகாரகன் செவ்வாயும் இணைந்திருக்கிறார்கள். தங்கு தடைகள் தவிடு பொடியாக, உங்களுக்கு ஏற்ற ஆலயம் எங்கெங்கெல்லாம் இருக்கிறதோ அதை&nbsp; கண்டறிந்து, சுய ஜாதகத்தின் அடிப்படையில் யோகபலம் பெற்ற நாளில் அங்கு சென்று, பரிகாரம் செய்து வழிபட்டு வந்தால் அரிய தகவலும் ஆனந்த வாழ்க்கையும் உங்களைத் தேடி வரும். இல்லையேல் உரிய காரியத்தை உரிய நேரத்தில் செய்ய இயலாது. ஊர் மாற்றங்களாலும் நிம்மதி கிடைக்காது. கார், வண்டி யிலும் கவனம் தேவை. கையிருப்பு&nbsp; கரையலாம். ஆர்வத்தோடு செய்த செயல் அனைத்திலும் உழைப்பிற்கேற்ற பலன் கிடைக்காது.<br />\r\n<br />\r\nஅதே நேரத்தில் உங்கள் ராசிநாதன் செவ்வாய் உச்சம் பெறும் பொழுது உன்னத வாழ்க்கையும் உங்களுக்கு அமையும். 25.10.2016 முதல் 6.12.2016 வரை அற்புதமான நேரம். அக்காலம் ஒரு பொற்காலமாக அமையும். தொட்ட காரியங்களில் எல்லாம் வெற்றி கிடைக்கும். பற்று வைத்த பொருள் உங்கள் பக்கம் வந்து சேரும். கற்று வைத்த கலையும் கைகொடுக்கும். சுற்றம் போற்றும் வாழ்வு அமையும். சுகங்களும், சந்தோஷங் களும் வந்து சேரும்.<br />\r\n<br />\r\nஆரோக்கியக் குறைபாட்டிற்கென்று ஒரு தொகையை அதிகமாகச் செலவழித்து வந்த நீங்கள் இனி சீரான உடலோடு செயல்பாடுகளில் உற்சாகம் கொள்வீர்கள். இல்லம் கட்டிக் குடியேற வேண்டும் அல்லது மனை வாங்க வேண்டும் என்று விடா முயற்சி செய்ததன்&nbsp; விளைவாக&nbsp; வீடு&nbsp; வாங்கிக் குடியேறும் வாய்ப்பு கிட்டும்.<br />\r\n<br />\r\nதாங்கித் தடுக்கிட்டு தக்க விதத்தில் உபசரிக்க உறவினர்களும், நண்பர்களும் காத்திருப்பர். கட்டிய வீட்டை விரிவு செய்து கற்பனை செய்த அளவிற்கு அழகு பார்க்கும் யோகமும் ஒருசிலருக்கு உண்டு.<br />\r\n<strong><br />\r\nசெல்வ வளம் தரும் சிறப்பு வழிபாடு!</strong><br />\r\n<br />\r\nஉங்கள் ராசிநாதன் செவ்வாய் என்பதால் சஷ்டி விரதமிருந்து சண்முக&nbsp;&nbsp;&nbsp; நாதப் பெருமானை வழிபட்டால் சங்கடங்கள் விலகும். சந்தோஷங்கள் சேரும். சண்முகநாதரை வழிபட யோகபலம் பெற்ற நாளில் குன்றக்குடியில் உள்ள குமரக்கடவுளை வழிபாடு செய்யுங்கள். சுமைகள் குறையும். சுகங்கள் கூடும்.<br />\r\n<br />\r\n<strong><span style=\"color: red;\">மேஷ&nbsp; ராசியில் பிறந்த பெண்களுக்கு!</span></strong><br />\r\n<br />\r\nஇந்த ஆண்டு சுபகாரியங்கள் நடைபெறும் ஆண்டாகும். துணிவும், தன்னம்பிக்கையும் கூடும். பணியில் இருந்த தொய்வு நிலை அகலும். பண வரவு திருப்தி தரும். ஆண்டின் தொடக்கத்தில் அதிசாரத்தில் வரும் குருவால் உத்தியோக மாற்றங்கள், ஊர் மாற்றங்கள் உருவாகலாம்.&nbsp; வீட்டுத் தேவைகள் பூர்த்தியாகும். பொன்னகையும், புதிய ஆடைகளும் வாங்கும் வாய்ப்பு உண்டு. தாய்வீட்டுத் தகராறுகள் அகலும். <br />\r\n<br />\r\nஆகஸ்ட் குருப்பெயர்ச்சிக்குப் பிறகு அடுக்கடுக்காக நல்ல வாய்ப்புகள் வந்து கொண்டே இருக்கும். கணவன்&#8211;மனைவிக்குள் ஒற்றுமை பலப்படும். கல்யாணம் ஆகாதவர்களுக்கு நல்ல வரன்கள் வந்து சேரும். தங்கு தடைகள் நீங்கும். ராகு&#8211;கேது பெயர்ச்சியின் விளைவாக நன்மைகள் ஏற்படவும், குடும்பத்தில் ஏற்பட்ட குழப்பங்கள் அகலவும் சர்ப்ப சாந்திப் பரிகாரங்களைச் செய்வது நல்லது. வருடக் கடைசியில் வளர்ச்சி கூடும். சனிக்கிழமை அனுமனை வழிபட்டால் அல்லல்கள் தீரும்.<br />\r\n<br />\r\n<strong><span style=\"color: red;\">ஆடி பதினெட்டில் தேடி வரும் யோகம்!</span></strong><br />\r\n<br />\r\nஆடி 18 அன்று தான் அடுத்த குருப்பெயர்ச்சி வருகின்றது. 18&#8211;ம் பெருக்கன்று (2.8.2016) கன்னி ராசியில் குரு சஞ்சரிக்கப் போகின்றார். 6&#8211;ல் வரும் குரு ஆதாயம் தருமா? என்று நீங்கள் நினைக்க வேண்டாம். அதன் பார்வை பலம் உங்களுக்கு கைகொடுக்கும். <br />\r\n<br />\r\nஅந்த அடிப்படையில் குருவின் பார்வை 2, 10, 12 ஆகிய இடங்களில் பதிவதால் குருப்பெயர்ச்சிக்குப் பிறகு வருமானம் அதிகரிக்கும் வாய்ப்புகளை உபயோகப்படுத்திக் கொள்ள முன்வருவீர்கள். திருமணம் வாய்க்கும். திடீர் முன்னேற்றம் கிடைக்கும். செய்தொழிலில் இருந்த சிக்கல்கள் அகலும். முயற்சியில் இருந்த முட்டுக்கட்டைகள் விலகி வளர்ச்சியைக் கொடுக்கும்."
    
    
    @IBOutlet var convertedTextLbl: UILabel!
    @IBOutlet var originalLbl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //self.originalLbl.text = sampleText
        pusher = Pusher(key: "xxxxxxxxx")
        self.setupPusher(pusherInstance: pusher)
      
        convertedTextLbl.isHidden = true
        
        DispatchQueue.global(qos: .background).async {
            let attribut = self.sampleText.utf8Data?.attributedStringHtml
            DispatchQueue.main.async {
                self.originalLbl.attributedText = attribut
            }
        }
        // Do any additional setup after loading the view, typically from a nib.
    }
    func setupPusher(pusherInstance: Pusher) {
        let channel = pusherInstance.subscribe("test_channel")
        let _ = channel.bind(eventName: "my_event", callback: { (data: Any?) -> Void in
            if let data = data as? [String : AnyObject] {
                if let message = data["message"] as? String {
                    print(message)
                    let today = Date()
                    let dateFormatter = DateFormatter()
                    dateFormatter.dateFormat = "H:mm"
                    let dateString = dateFormatter.string(from: today)
                    print(dateString)
                    
                }
            }
        })
        
        pusherInstance.connect()
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func convert(_ sender: Any) {
        DispatchQueue.global(qos: .background).async {
            let attribut = self.sampleText.utf8Data?.attributedStringHtml
            DispatchQueue.main.async {
                self.convertedTextLbl.attributedText = attribut
            }
        }
    }
  
}
