.. _extension-birt-process-reporting:

Process Reporting extension
------------------------------

The Axon.ivy Process Model Reporting Wizard lets you create customized
reports of your process models.

.. figure:: /_images/process-modeling/report-configuration-wizard.png
   :alt: Process Model Reporting Wizard

   Process Model Reporting Wizard

Install
~~~~~~~~~~~~~

Process Model reporting is an extension that must be installed before it can be used. 

- Open the Menu: Help->Install New Software...-
- Work with combo: select the pre-configured Update Site of Axon.ivy ``https://download.axonivy.rocks/p2/...`` 
- Check ``Axon.ivy Designer Projet Reporting`` from the list of installable features
- Click through the install Wizard by clicking next and confirm upcoming install request.

Visit <https://file.axonivy.rocks/p2> for detailed installation instructions.

Accessibility
~~~~~~~~~~~~~

Axon.ivy->Create Report...

Features
~~~~~~~~

Name
   The name of the report that will be created. This name should be
   without file name extension. E.g. use "MyReport" instead of
   "MyReport.pdf".

Output Format
   The report output format. Currently this can be HTML, PDF or DOC. You
   can also select multiple report formats that should be created
   simultaneously.

Save to Folder
   Choose the location where the reports should be generated to. The
   default destination where reports are stored is
   ``IvyDesigner/reporting/reports/``.

Report Template
   Choose a report template, also known as *BIRT report design*
   file(\*.rptdesign) which defines the structure and contents of your
   report. There are some BIRT report designs provided by default (e.g.
   ``Default.rptdesign``). Please use the predefined report designs
   unless you want to create a custom report design.

   .. note::
   
      In case you want to create a custom BIRT report design you first need
      to install a BIRT Report Designer which can be found on the `BIRT
      Website <http://www.eclipse.org/birt/phoenix/>`__. With the BIRT
      Report Designer you can create your own reports. In order to use the
      Process Model Data, as e.g. Process model images, process names, User
      Dialog interfaces, data class attributes etc., or predefined themes
      in your newly created report design, you need to use the
      ``IvyDesigner/reporting/designs/Axon.ivy.rptlibrary``
      BIRT Report Library within your report and link against its Data
      Source, Data Sets and Parameters. In this way you will also be able
      to use the predefined themes of the Report Library.
      
      For further information on how the BIRT Designer can be used, please
      refer to a BIRT Book or online Resource which can be found at
      http://www.eclipse.org/birt/ or http://www.birt-exchange.com.

Corporate Identity
   This group of text fields provides you some additional, optional
   information to customize your report.

   -  Title: Select a Title that will be shown on the first page of your
      report.

   -  Header: Select a Header for the report, that will be shown on
      every page.

   -  Footer: Select a Footer for the report, that will be shown on
      every page.

   -  Logo: Select a Company Logo Image that will be displayed on the
      first page of your report.

Projects
   This Tree shows the currently active projects that can be reported.
   You may check or uncheck the individual Process Models, Process
   Groups, Processes, User Dialogs or Data Classes that are to be
   reported.

Maximum nesting depth
   Choose the maximum depth up to which nested embedded sub processes
   should be reported. By default and when the field is empty all
   embedded sub processes are reported.

Cancel Button
   To cancel report creation. The current report configuration settings
   will be stored to
   ``your_ivy_workspace/.metadata/.plugins/ch.ivyteam.ivy.designer.reporting.ui/lastReportconfiguration.xml``

Save the Configuration...
   To save the report configuration you have entered up to now into an
   XML report configuration file (\*.rptconfig). This allows you to store
   multiple configurations for different types of reports and reuse them
   later. Note that currently the selected Projects, Processes, User
   Dialogs etc. are not remembered, as they might not be available at
   loading time. The default place where the report configurations are
   stored is in ``IvyDesigner/reporting/configurations/``.

Load a Configuration...
   This allows you to load a previously stored report configuration
   files (\*.rptconfig).

Create the Report...
   This will start the generation of the reports. While the report is
   being generated you will be informed about its progress. After the
   report has been generated a confirmation window will provide you with
   links to the generated reports. The default destination where reports
   are stored is ``IvyDesigner/reporting/reports/``.

   The report configuration will be stored to
   ``your_ivy_workspace/.metadata/.plugins/ch.ivyteam.ivy.designer.reporting.ui/lastReportconfiguration.xml``