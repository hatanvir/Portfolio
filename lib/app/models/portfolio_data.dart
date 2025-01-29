import 'dart:convert';

PortfolioData portfolioDataFromJson(String str) => PortfolioData.fromJson(json.decode(str));

String portfolioDataToJson(PortfolioData data) => json.encode(data.toJson());

class PortfolioData {
  PersonalInfo? personalInfo;
  List<ImportantLink>? skillSet;
  List<ImportantLink>? projects;
  List<Experience>? experiences;
  List<Blog>? blogs;
  Contact? contact;
  List<ImportantLink>? importantLink;

  PortfolioData({
    this.personalInfo,
    this.skillSet,
    this.projects,
    this.experiences,
    this.blogs,
    this.contact,
    this.importantLink,
  });

  factory PortfolioData.fromJson(Map<String, dynamic> json) => PortfolioData(
    personalInfo: json["personal_info"] == null ? null : PersonalInfo.fromJson(json["personal_info"]),
    skillSet: json["skill_set"] == null ? [] : List<ImportantLink>.from(json["skill_set"]!.map((x) => ImportantLink.fromJson(x))),
    projects: json["projects"] == null ? [] : List<ImportantLink>.from(json["projects"]!.map((x) => ImportantLink.fromJson(x))),
    experiences: json["experiences"] == null ? [] : List<Experience>.from(json["experiences"]!.map((x) => Experience.fromJson(x))),
    blogs: json["blogs"] == null ? [] : List<Blog>.from(json["blogs"]!.map((x) => Blog.fromJson(x))),
    contact: json["contact"] == null ? null : Contact.fromJson(json["contact"]),
    importantLink: json["important_link"] == null ? [] : List<ImportantLink>.from(json["important_link"]!.map((x) => ImportantLink.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "personal_info": personalInfo?.toJson(),
    "skill_set": skillSet == null ? [] : List<dynamic>.from(skillSet!.map((x) => x.toJson())),
    "projects": projects == null ? [] : List<dynamic>.from(projects!.map((x) => x.toJson())),
    "experiences": experiences == null ? [] : List<dynamic>.from(experiences!.map((x) => x.toJson())),
    "blogs": blogs == null ? [] : List<dynamic>.from(blogs!.map((x) => x.toJson())),
    "contact": contact?.toJson(),
    "important_link": importantLink == null ? [] : List<dynamic>.from(importantLink!.map((x) => x.toJson())),
  };
}

class Blog {
  String? title;
  String? image;
  String? link;

  Blog({
    this.title,
    this.image,
    this.link,
  });

  factory Blog.fromJson(Map<String, dynamic> json) => Blog(
    title: json["title"],
    image: json["image"],
    link: json["link"],
  );

  Map<String, dynamic> toJson() => {
    "title": title,
    "image": image,
    "link": link,
  };
}

class Contact {
  String? email;
  String? phone;
  String? location;

  Contact({
    this.email,
    this.phone,
    this.location,
  });

  factory Contact.fromJson(Map<String, dynamic> json) => Contact(
    email: json["email"],
    phone: json["phone"],
    location: json["location"],
  );

  Map<String, dynamic> toJson() => {
    "email": email,
    "phone": phone,
    "location": location,
  };
}

class Experience {
  String? from;
  String? to;
  String? position;
  String? location;
  String? company;
  String? companyLogo;
  String? jobType;
  String? responsibility;
  String? technology;

  Experience({
    this.from,
    this.to,
    this.position,
    this.location,
    this.company,
    this.companyLogo,
    this.jobType,
    this.responsibility,
    this.technology,
  });

  factory Experience.fromJson(Map<String, dynamic> json) => Experience(
    from: json["from"],
    to: json["to"],
    position: json["position"],
    location: json["location"],
    company: json["company"],
    companyLogo: json["company_logo"],
    jobType: json["jobType"],
    responsibility: json["responsibility"],
    technology: json["technology"],
  );

  Map<String, dynamic> toJson() => {
    "from": from,
    "to": to,
    "position": position,
    "location": location,
    "jobType": jobType,
    "responsibility": responsibility,
    "technology": technology,
  };
}

class ImportantLink {
  String? name;
  String? image;
  String? link;
  String? details;

  ImportantLink({
    this.name,
    this.image,
    this.link,
    this.details,
  });

  factory ImportantLink.fromJson(Map<String, dynamic> json) => ImportantLink(
    name: json["name"],
    image: json["image"],
    link: json["link"],
    details: json["details"],
  );

  Map<String, dynamic> toJson() => {
    "name": name,
    "image": image,
    "link": link,
    "details": details,
  };
}

class PersonalInfo {
  String? name;
  String? designation;
  String? about;
  String? cvDownloadLink;

  PersonalInfo({
    this.name,
    this.designation,
    this.about,
    this.cvDownloadLink,
  });

  factory PersonalInfo.fromJson(Map<String, dynamic> json) => PersonalInfo(
    name: json["name"],
    designation: json["designation"],
    about: json["about"],
    cvDownloadLink: json["cv_download_link"],
  );

  Map<String, dynamic> toJson() => {
    "name": name,
    "designation": designation,
    "about": about,
    "cv_download_link": cvDownloadLink,
  };
}
