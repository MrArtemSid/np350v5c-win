<?xml version="1.0" encoding="UTF-16"?>
<instrumentationManifest xsi:schemaLocation="http://schemas.microsoft.com/win/2004/08/events eventman.xsd" xmlns="http://schemas.microsoft.com/win/2004/08/events" xmlns:win="http://manifests.microsoft.com/win/2004/08/windows/events" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:trace="http://schemas.microsoft.com/win/2004/08/events/trace">
	<instrumentation>
		<events>
			<provider name="AMD-Kernel" guid="{33AEC352-AA8D-4905-B5AE-DBFF3B5F369D}" symbol="AMD_KERNEL_GUID" resourceFileName="%WINDIR%\SYSTEM32\drivers\atikmdag.sys" messageFileName="%WINDIR%\SYSTEM32\drivers\atikmdag.sys" parameterFileName="%WINDIR%\SYSTEM32\drivers\atikmdag.sys ">
				<events>
					<event symbol="FlipPrimary" value="0" version="0" channel="AMD-Kernel-Provider/Analytic" level="win:Informational" task="FlipPrimary" opcode="FlipPrimary" template="FlipPrimary" message="$(string.AMD-Kernel.event.0.message)">
					</event>
					<event symbol="VSync" value="1" version="0" channel="AMD-Kernel-Provider/Analytic" level="win:Informational" task="VSync" opcode="VSync" template="VSync" message="$(string.AMD-Kernel.event.1.message)">
					</event>
				</events>
				<levels>
				</levels>
				<tasks>
					<task name="FlipPrimary" symbol="TASK_FLIPPRIMARY" value="1" eventGUID="{62EEB1AE-AA7C-427D-AA47-D218A1385F2E}">
					</task>
					<task name="VSync" symbol="TASK_VSYNC" value="2" eventGUID="{855FF603-4C4D-4864-BA85-ED8066288B28}">
					</task>
				</tasks>
				<opcodes>
					<opcode name="FlipPrimary" symbol="OPCODE_FLIP_PRIMARY" value="10">
					</opcode>
					<opcode name="VSync" symbol="OPCODE_VSYNC" value="11">
					</opcode>
				</opcodes>
				<channels>
					<channel name="AMD-Kernel-Provider/Analytic" chid="AMD-Kernel-Provider/Analytic" symbol="CHANNEL_ANALYTIC" type="Analytic" enabled="false" message="$(string.AMD-Kernel.channel.CHANNEL_ANALYTIC.message)">
					</channel>
				</channels>
				<templates>
					<template tid="FlipPrimary">
						<data name="VidPnTargetId" inType="win:UInt32" outType="xs:unsignedInt">
						</data>
						<data name="hAllocation" inType="win:Pointer" outType="win:HexInt64">
						</data>
						<data name="PrimaryAddress" inType="win:UInt64" outType="xs:unsignedLong">
						</data>
					</template>
					<template tid="VSync">
						<data name="Type" inType="win:Int32" outType="xs:int">
						</data>
						<data name="VidPnTargetId" inType="win:UInt32" outType="xs:unsignedInt">
						</data>
						<data name="PrimaryAddress" inType="win:UInt64" outType="xs:unsignedLong">
						</data>
					</template>
				</templates>
			</provider>
		</events>
	</instrumentation>
	<localization>
		<resources culture="en-US">
			<stringTable>
				<string id="level.Informational" value="Information">
				</string>
				<string id="AMD-Kernel.event.4.message" value="SecondaryVSync Type %1 VidPnTargetId %2">
				</string>
				<string id="AMD-Kernel.event.3.message" value="FlipSleeping Type %1 VidPnTargetId %2">
				</string>
				<string id="AMD-Kernel.event.1.message" value="VSync Type %2 VidPnTargetId %2">
				</string>
				<string id="AMD-Kernel.event.0.message" value="Sync VidPnTargetId %1 hAllocation %2 PrimaryPhysicalAddress %3">
				</string>
				<string id="AMD-Kernel.channel.CHANNEL_ANALYTIC.message" value="Events for analysis of swap chain timing.">
				</string>
			</stringTable>
		</resources>
	</localization>
</instrumentationManifest>
