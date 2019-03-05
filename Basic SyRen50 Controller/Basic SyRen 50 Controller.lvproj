<?xml version='1.0' encoding='UTF-8'?>
<Project Type="Project" LVVersion="16008000">
	<Item Name="My Computer" Type="My Computer">
		<Property Name="server.app.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="server.control.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="server.tcp.enabled" Type="Bool">false</Property>
		<Property Name="server.tcp.port" Type="Int">0</Property>
		<Property Name="server.tcp.serviceName" Type="Str">My Computer/VI Server</Property>
		<Property Name="server.tcp.serviceName.default" Type="Str">My Computer/VI Server</Property>
		<Property Name="server.vi.callsEnabled" Type="Bool">true</Property>
		<Property Name="server.vi.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="specify.custom.address" Type="Bool">false</Property>
		<Item Name="Basic SyRen 50 Controller.vi" Type="VI" URL="../Basic SyRen 50 Controller.vi"/>
		<Item Name="Basic SyRen 50 Controller_VarSpeed.vi" Type="VI" URL="../Basic SyRen 50 Controller_VarSpeed.vi"/>
		<Item Name="Dependencies" Type="Dependencies">
			<Item Name="vi.lib" Type="Folder">
				<Item Name="VISA Configure Serial Port" Type="VI" URL="/&lt;vilib&gt;/Instr/_visa.llb/VISA Configure Serial Port"/>
				<Item Name="VISA Configure Serial Port (Instr).vi" Type="VI" URL="/&lt;vilib&gt;/Instr/_visa.llb/VISA Configure Serial Port (Instr).vi"/>
				<Item Name="VISA Configure Serial Port (Serial Instr).vi" Type="VI" URL="/&lt;vilib&gt;/Instr/_visa.llb/VISA Configure Serial Port (Serial Instr).vi"/>
			</Item>
		</Item>
		<Item Name="Build Specifications" Type="Build">
			<Item Name="Basic SyRen 50 Variable Speed" Type="EXE">
				<Property Name="App_copyErrors" Type="Bool">true</Property>
				<Property Name="App_INI_aliasGUID" Type="Str">{548D8B69-E895-4A6C-B77E-05820682DF3B}</Property>
				<Property Name="App_INI_GUID" Type="Str">{98138E8E-52C6-4D38-A5C1-CE19FC2BAEB6}</Property>
				<Property Name="App_serverConfig.httpPort" Type="Int">8002</Property>
				<Property Name="App_winsec.description" Type="Str">http://www.NOS.com</Property>
				<Property Name="Bld_autoIncrement" Type="Bool">true</Property>
				<Property Name="Bld_buildCacheID" Type="Str">{3DD0DB9D-4F14-49F7-A1F0-5EF28B334A8E}</Property>
				<Property Name="Bld_buildSpecName" Type="Str">Basic SyRen 50 Variable Speed</Property>
				<Property Name="Bld_excludeInlineSubVIs" Type="Bool">true</Property>
				<Property Name="Bld_excludeLibraryItems" Type="Bool">true</Property>
				<Property Name="Bld_excludePolymorphicVIs" Type="Bool">true</Property>
				<Property Name="Bld_localDestDir" Type="Path">../builds/Basic SyRen 50 Variable Speed</Property>
				<Property Name="Bld_localDestDirType" Type="Str">relativeToProject</Property>
				<Property Name="Bld_modifyLibraryFile" Type="Bool">true</Property>
				<Property Name="Bld_previewCacheID" Type="Str">{E24DAECF-6483-477E-926B-1CF85AE4BD43}</Property>
				<Property Name="Bld_version.build" Type="Int">8</Property>
				<Property Name="Bld_version.major" Type="Int">1</Property>
				<Property Name="Destination[0].destName" Type="Str">SyRen 50 VarSpeed.exe</Property>
				<Property Name="Destination[0].path" Type="Path">../builds/Basic SyRen 50 Variable Speed/SyRen 50 VarSpeed.exe</Property>
				<Property Name="Destination[0].path.type" Type="Str">relativeToProject</Property>
				<Property Name="Destination[0].preserveHierarchy" Type="Bool">true</Property>
				<Property Name="Destination[0].type" Type="Str">App</Property>
				<Property Name="Destination[1].destName" Type="Str">Support Directory</Property>
				<Property Name="Destination[1].path" Type="Path">../builds/Basic SyRen 50 Variable Speed/data</Property>
				<Property Name="Destination[1].path.type" Type="Str">relativeToProject</Property>
				<Property Name="DestinationCount" Type="Int">2</Property>
				<Property Name="Source[0].itemID" Type="Str">{9E4C9FB1-8905-4E09-9BAE-EA17245D6A43}</Property>
				<Property Name="Source[0].type" Type="Str">Container</Property>
				<Property Name="Source[1].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[1].itemID" Type="Ref">/My Computer/Basic SyRen 50 Controller_VarSpeed.vi</Property>
				<Property Name="Source[1].sourceInclusion" Type="Str">TopLevel</Property>
				<Property Name="Source[1].type" Type="Str">VI</Property>
				<Property Name="SourceCount" Type="Int">2</Property>
				<Property Name="TgtF_companyName" Type="Str">NOS</Property>
				<Property Name="TgtF_fileDescription" Type="Str">Basic SyRen 50 Variable Speed</Property>
				<Property Name="TgtF_internalName" Type="Str">Basic SyRen 50 Variable Speed</Property>
				<Property Name="TgtF_legalCopyright" Type="Str">Copyright © 2016 NOS</Property>
				<Property Name="TgtF_productName" Type="Str">Basic SyRen 50 Variable Speed</Property>
				<Property Name="TgtF_targetfileGUID" Type="Str">{D5358BA2-70DC-4646-B6F3-D3839C03B08C}</Property>
				<Property Name="TgtF_targetfileName" Type="Str">SyRen 50 VarSpeed.exe</Property>
			</Item>
			<Item Name="SyRen 50 Controller" Type="EXE">
				<Property Name="App_copyErrors" Type="Bool">true</Property>
				<Property Name="App_INI_aliasGUID" Type="Str">{CFEC3126-C738-49BD-8EA5-77EA00935C91}</Property>
				<Property Name="App_INI_GUID" Type="Str">{AB4A1111-01B2-4376-8E0A-C282C1644DAF}</Property>
				<Property Name="App_serverConfig.httpPort" Type="Int">8002</Property>
				<Property Name="Bld_autoIncrement" Type="Bool">true</Property>
				<Property Name="Bld_buildCacheID" Type="Str">{0EFD3496-9D15-4375-AE54-B8D6E539C484}</Property>
				<Property Name="Bld_buildSpecName" Type="Str">SyRen 50 Controller</Property>
				<Property Name="Bld_excludeInlineSubVIs" Type="Bool">true</Property>
				<Property Name="Bld_excludeLibraryItems" Type="Bool">true</Property>
				<Property Name="Bld_excludePolymorphicVIs" Type="Bool">true</Property>
				<Property Name="Bld_localDestDir" Type="Path">../builds/SyRen50 Controller</Property>
				<Property Name="Bld_localDestDirType" Type="Str">relativeToProject</Property>
				<Property Name="Bld_modifyLibraryFile" Type="Bool">true</Property>
				<Property Name="Bld_previewCacheID" Type="Str">{2C3BF1BA-5C2E-42ED-8DFD-011003DF57E4}</Property>
				<Property Name="Bld_version.build" Type="Int">14</Property>
				<Property Name="Bld_version.major" Type="Int">1</Property>
				<Property Name="Destination[0].destName" Type="Str">SyRen 50 Controller.exe</Property>
				<Property Name="Destination[0].path" Type="Path">../builds/SyRen50 Controller/SyRen 50 Controller.exe</Property>
				<Property Name="Destination[0].path.type" Type="Str">relativeToProject</Property>
				<Property Name="Destination[0].preserveHierarchy" Type="Bool">true</Property>
				<Property Name="Destination[0].type" Type="Str">App</Property>
				<Property Name="Destination[1].destName" Type="Str">Support Directory</Property>
				<Property Name="Destination[1].path" Type="Path">../builds/SyRen50 Controller/data</Property>
				<Property Name="Destination[1].path.type" Type="Str">relativeToProject</Property>
				<Property Name="DestinationCount" Type="Int">2</Property>
				<Property Name="Source[0].itemID" Type="Str">{9E4C9FB1-8905-4E09-9BAE-EA17245D6A43}</Property>
				<Property Name="Source[0].type" Type="Str">Container</Property>
				<Property Name="Source[1].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[1].itemID" Type="Ref">/My Computer/Basic SyRen 50 Controller.vi</Property>
				<Property Name="Source[1].sourceInclusion" Type="Str">TopLevel</Property>
				<Property Name="Source[1].type" Type="Str">VI</Property>
				<Property Name="SourceCount" Type="Int">2</Property>
				<Property Name="TgtF_fileDescription" Type="Str">SyRen 50 Controller</Property>
				<Property Name="TgtF_internalName" Type="Str">SyRen 50 Controller</Property>
				<Property Name="TgtF_legalCopyright" Type="Str">Copyright © 2016 </Property>
				<Property Name="TgtF_productName" Type="Str">SyRen 50 Controller</Property>
				<Property Name="TgtF_targetfileGUID" Type="Str">{55A2CBA7-C650-4E77-9AD9-116734532EF9}</Property>
				<Property Name="TgtF_targetfileName" Type="Str">SyRen 50 Controller.exe</Property>
			</Item>
		</Item>
	</Item>
</Project>
