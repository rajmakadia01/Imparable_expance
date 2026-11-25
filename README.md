# Imparable

React और Express से बना टॉय शॉप का लोकल बहीखाता। Node.js 18 या नया आवश्यक है।

## चलाने का तरीका

1. इस फोल्डर में टर्मिनल खोलें और `npm install` चलाएँ।
2. विकास के लिए `npm run dev` चलाएँ और टर्मिनल में दिखने वाला Vite पता (आम तौर पर http://127.0.0.1:5173) ब्राउज़र में खोलें।
3. तैयार ऐप चलाने के लिए पहले `npm run build`, फिर `npm start` चलाएँ और http://127.0.0.1:3001 खोलें। बंद करने के लिए टर्मिनल में Ctrl+C दबाएँ।

डेटा `data/entries.json` में इस कंप्यूटर पर सेव होता है। नियमित रूप से ऐप के बैकअप बटन से JSON डाउनलोड करें और सुरक्षित जगह रखें। बैकअप वापस लाने पर वर्तमान रिकॉर्ड बदल जाते हैं। पहले वाले ब्राउज़र आधारित ऐप का डाउनलोड किया हुआ बैकअप भी आयात कर सकते हैं। यह सिंगल कंप्यूटर के लिए है; लॉगिन, ऑनलाइन सिंक या कई कंप्यूटरों पर एक साथ उपयोग शामिल नहीं है।

बैंक जमा को बिक्री में दोबारा नहीं जोड़ा जाता। “बिक्री में से खर्च” बिक्री घटाकर खर्च है; यह बैंक बैलेंस या लेखांकन लाभ नहीं है। सभी फ़िल्टर सारांश और सूची दोनों पर लागू होते हैं।

## Account setup

On first launch, create exactly three unique usernames and passwords on the setup screen. Each account has full access to the same records. Passwords must be at least 8 characters. Account password hashes are stored in `data/users.json`; keep your passwords and a secure copy of this file safe. Login sessions expire after 12 hours or when the server restarts. This is a local single-computer application and does not provide password recovery or internet hosting security.
