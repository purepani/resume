#import "@preview/modernpro-cv:1.3.0": *
#import "@preview/fontawesome:0.6.0": *

#show: cv-single.with(
  font-type: "PT Serif",
  continue-header: "false",
  margin: (left: 1.75cm, right: 1.75cm, top: 2cm, bottom: 2cm),
  name: [Satwik Pani],
  address: [4140 Washington Blvd Apt 201, Saint Louis, MO, 63108. United States.],
  lastupdated: "true",
  pagecount: "true",
  date: "2025-11-25",
  contacts: (
    (text: [#fa-icon("location-dot") US]),
    (text: [#fa-icon("envelope") panisatwik\@pm.me], link: "mailto:panisatwik@pm.me"),
    (text: [#fa-icon("mobile") 601-668-5827], link: "tel:601-668-5827"),
    (text: [#fa-icon("link") github.com/purepani], link: "https://www.github.com/purepani"),
  )
)

#let sections = (
  section-block("experience", title: "Experience")[
    #job(
      position: "Clinical Physics Assistant I",
      institution: [Washington University in St. Louis],
      location: "St. Louis, Missouri",
      date: "2023 - Current",
      description: [
        - Independently perform machine QA for a Varian Truebeam.
        - Generate patient specific QA for IMRT and SBRT photon treatment plans with Eclipse including ion chamber and portal dosimetry for photon.
        - Assisted in performing Annual QA for a Varian Truebeam including recommendations from TG-142 and TG-51.
        - Generated patient specific QA for proton treatment plans with Raystation, including for ion chamber, surface dose plane, and depth dose plane measurements.
        - Assisting faculty with research.
        - Develop a web-based chart checking script for proton therapy using the Raystation Python API.
        - Investigate methods of 3D surface scanning for clinical use using LIDAR and laser scanning.
        - Automate simulated phantom generation and CT generation using Python and the XCAT Phantom.
        - Built Excel tools to streamline creation of Patient Specific QA task emails.
        - Mentored project to rewrite an excel generator for Patient Specific QA in Python.
        - Assisted in commissioning of a Varian Halcyon linear accelerator.
        - Contribute to open source software, including pylinac and the Core Imaging Library. 
        - Automated output factor measurements using Sun Nuclear PC Electrometer, reducing the measurement time from 2 hours to 40 minutes. 
        - Generated dicoms for automated output factor measurements for both Halycon and Truebeams using pydicom.
      ],
    )

    #job(
      position: "Research Assistant/Graduate Assistant",
      institution: [University of Minnesota Twin Cities],
      location: "Minneapolis, Minnesota",
      date: "2021-2023",
      description: [
        - Designed and iterated on a printed circuit board for hall effect sensors using KiCad. 
        - Implemented an algorithm in Python to measure motion of a magnet using hall effect sensors in real time using SciPy.
        - Verified accuracy of the system by interfacing with a 3D printer to move the magnet. 
        - Performed quality assurance for diagnostic machines, including X-ray and Fluoroscopy.
        - Prepared monthly reports and schedules for diagnostic imaging quality assurance.
      ]
    )

    #job(
      position: "Research Assistant",
      institution: [University of Illinois at Urbana-Champaign],
      location: "Urbana, Illinois",
      date: "2020-2021",
      description: [
        - Simulated electronic responses for many configurations of an silicon photomultiplier(SiPM) array to add Pulse Shape Discrimination functionality to a commercially available board using Ngspice and Python. 
        - Collected data from a JSeries SiPM to compare to simulation.
      ]
    )
  ],
  section-block("education", title: "Education")[
    #education(
      institution: [University of Minnesota Twin Cities],
      major: [Masters of Science, Medical Physics],
      description: "CAMPEP Accredited\nGPA: 3.5",
      location: "Minneapolis, Minnesota",
      date: "August, 2021 - October 2025",
    )

    #education(
      institution: [University of Illinois at Urbana-Champaign],
      major: [Bachelors of Science, Physics],
      description: "GPA: 3.67",
      location: "Urbana, Illinois",
      date: "August 2018- December 2020",
    )

  ],

  section-block("publications", title: "Publications", separator: false)[
    + @poster_presentation
    + @Leland_Fang_Pani_Venturini_Locatelli_Di_Fulvio_2024
  ],

  section-block("skills", title: "Skills")[
    #oneline-title-item(
      title: "Programming",
      content: [Python, Rust, Javascript, Embedded, Sensors],
    )
    #oneline-title-item(
      title: "Clinical",
      content: [Truebeam, Halcyon, Eclipse, Raystation, Doselab, PTW Beamscan, Patient Specific QA, Linear Accelerator QA, Fluoroscopic QA, X-Ray QA],
    )
    #oneline-title-item(
      title: "Software",
      content: [Excel, Microsoft Power Platform],
    )
  ],
)

#let section-order = ("education", "experience", "publications", "skills")

#render-sections(sections: sections, order: section-order, include-remaining: false)

#show bibliography: none
#bibliography("bib.bib", style: "chicago-author-date")
