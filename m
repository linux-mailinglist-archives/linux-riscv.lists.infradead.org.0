Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CC9B194E23
	for <lists+linux-riscv@lfdr.de>; Fri, 27 Mar 2020 01:39:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:References:Message-ID:Date:Subject:To:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:List-Owner;
	 bh=aElbInxk1rZqIbZFmkjQ0Lo88Z2zvqznvzgYMnBJzUk=; b=aLxFdSnZxFLc2btRsLRU4vZ0c
	JiaHdyNolBlcgR7jManrWqjVDOq9/XNFUY2S57fMTJJqKcUHUuqDV8gc2JxU41ev5IOKpbH2DJj9R
	Z6TZm6uP986RJbxalHu2SOKQyTLmqGcJb5vIgOgjkHLOeLwVOrghOm+s6R6NMgYVxz5jn8kQtUj1y
	P5umwin55d/idu6cZXLa2mYlGCcZJ1p69tq46s83sH+rwd2Hhv+9DX1Tq94MZ7N7jYAsKp8OAA928
	2HSVCesbCaX+MUkO/bhN1RVaRs/W7qnZlxUZx9p1dWK855x7O2hV40jxrSejY8SyjLkcmDT01ifl4
	8l2LgsNWw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHd1V-0002UG-JO; Fri, 27 Mar 2020 00:38:57 +0000
Received: from esa1.hgst.iphmx.com ([68.232.141.245])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHd1R-0002Tj-T3
 for linux-riscv@lists.infradead.org; Fri, 27 Mar 2020 00:38:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1585269533; x=1616805533;
 h=from:to:cc:subject:date:message-id:references:
 content-transfer-encoding:mime-version;
 bh=kdAlq4EddospasJZqqT1tauwfMDnuWSf/8K6UzyLohw=;
 b=bDQzk3NEBeqGR2fPz9DYt7dHDAPLRGDXExUBVzF3/Ujd0S8b73BG0dp6
 AYd1IIUBBFrdo24nZu4ESxUf6cl5Xs1Rqy1Mtdq7HrUvch3f33JpxEDBD
 6UxYXnquI3EodF4O8SOo0vGrBef4hmz3yAkdwWukJa9S/b7gVloE0Mitj
 8yY35jV7cbba+6jFQsemO8r2CS79yaCF9dxZKsFg5xGHsAmDI5cn01DPb
 /iTdWwarri5WGM2Y5pL8xmQscuGlDbeq+lRVeNv7C9AKWmVp14gzCTVLe
 rp5QyilToO/1gGRK7raq6W22lomQGAvR1w23TrhSiZRfLziSN0dDFOOXE g==;
IronPort-SDR: u/7QyBd6FrAB4ezfnm+k+1jfhjWJo7RTk5Mt3LWe3qKDNWEl+7dmLCd37aY4rbcljEzWAmxGrT
 zNTWPwq+HUK/WXpD9Vfivu8GKsxqSwxNfN8bRxmvC1XDXxgHAyNNPytsu9S+Y67zkTzNVECJwe
 kZpR+/Y8KsWDxwiUedYYp2CRyBpgBi+tG9aUeJmPqOjU0djkqFTkjeS2iZ1x/qIOhxgXtDwa/f
 MuyTVyS5FJqmT9MXTs97NQOSh6VpxJPMsJrKm6rc6Xfr6DyNM7hcRPQLrYL8IV0Yncexc7uwwp
 P28=
X-IronPort-AV: E=Sophos;i="5.72,310,1580745600"; d="scan'208";a="242135105"
Received: from mail-mw2nam10lp2109.outbound.protection.outlook.com (HELO
 NAM10-MW2-obe.outbound.protection.outlook.com) ([104.47.55.109])
 by ob1.hgst.iphmx.com with ESMTP; 27 Mar 2020 08:38:52 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=EJL2j26o8zowPhCtOW67qeYjaYoZ9IHK+SNdZdgbIprUJHc3tyGZzmxOUFnU34WafOBFLJ/CNsX1OnjVeQT91tXoEFlIzkskLTifN5Hi96/iTp7U7s6PubWJtnQEifTnMRD7Nx9DswECnORGqcJZ9HEdPp1ntCHQ0T/eupi9dlvFeTGixuUFF16+pVOaCQ0xKucXPeNlSpmPZaEH/Ey3dTJ0bqzWGzT9QggBjzhKiP0XzNNmdsty1UlPHVCDGGp37qUaehWo5q6k1oktpYCHwsNxCOaTczPmmS9Skkb87Y0Mg9qjUjHmLliIXFNtd8T79wLaOOadl9dP5GO7hzgvNw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=aElbInxk1rZqIbZFmkjQ0Lo88Z2zvqznvzgYMnBJzUk=;
 b=UNHvg3u/BWg1Uoh0NZ7e5l4+4sfPubzjPanFnWbSvYTLNb9de/wWiJyiYSuMRZLVV4gcjMw1L+9Dgvt6TOXRLB6wNsyr8LPtKKGFe1B3xHKNoOwjQfaIagbeH041CS0U4gi2wnA9MeIkgcsLFLm1UMbgQ6QpaJAHhaL8xQKL1xYbYSnjKcC0xddzhF9SVDUk74zphHojUtvUWH9lFbMjNRhwjCSCIp364ZgWqcpjGrbTULUIUmWa88xHAbSu+VdToC7+n27/DdFdGzkxy69Gtg4wIsTXGEb/mzvOVcJaO3Q+WevYjOCR7v4E2r5SphFdsb0+uiNO6VbhcV9TO6L3Yw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=aElbInxk1rZqIbZFmkjQ0Lo88Z2zvqznvzgYMnBJzUk=;
 b=l+nY6SGywT4saZ3gV+2njj+Ht2q+y3M+Q7sRWj4hhCjJ4Gj+1L4ySljexaiFXvj97LTHkPL99C22j5F/hegaXYsbPoMp9ONNNthAadbIZu/5l0efIGjldcurKes8YMr3dkvbPJbjzwNR9YaSKxWuQTKsiV8ojznc0GOlaXdYSho=
Received: from CO2PR04MB2343.namprd04.prod.outlook.com (2603:10b6:102:12::9)
 by CO2PR04MB2328.namprd04.prod.outlook.com (2603:10b6:102:f::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2856.19; Fri, 27 Mar
 2020 00:38:50 +0000
Received: from CO2PR04MB2343.namprd04.prod.outlook.com
 ([fe80::c1a:6c0f:8207:580b]) by CO2PR04MB2343.namprd04.prod.outlook.com
 ([fe80::c1a:6c0f:8207:580b%7]) with mapi id 15.20.2835.023; Fri, 27 Mar 2020
 00:38:50 +0000
From: Damien Le Moal <Damien.LeMoal@wdc.com>
To: Palmer Dabbelt <palmerdabbelt@google.com>
Subject: Re: Kendryte K210 support v4
Thread-Topic: Kendryte K210 support v4
Thread-Index: AQHWAZNaLEjVeiBygka2zA2IfW/gVg==
Date: Fri, 27 Mar 2020 00:38:50 +0000
Message-ID: <CO2PR04MB2343F5DC42542E7FC9268FF2E7CC0@CO2PR04MB2343.namprd04.prod.outlook.com>
References: <mhng-9925e921-28e5-4f0d-8f93-3958d8226e11@palmerdabbelt-glaptop1>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Damien.LeMoal@wdc.com; 
x-originating-ip: [129.253.182.57]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: f9d0ddcd-0a8b-433e-a252-08d7d1e73821
x-ms-traffictypediagnostic: CO2PR04MB2328:
x-microsoft-antispam-prvs: <CO2PR04MB2328BA73C9E5C2E3780A5BBCE7CC0@CO2PR04MB2328.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 0355F3A3AE
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO2PR04MB2343.namprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(10019020)(4636009)(39860400002)(376002)(366004)(136003)(396003)(346002)(7696005)(81166006)(8676002)(71200400001)(81156014)(8936002)(55016002)(9686003)(86362001)(2906002)(6916009)(64756008)(316002)(66446008)(186003)(26005)(6506007)(53546011)(4326008)(33656002)(66556008)(5660300002)(66476007)(66946007)(478600001)(91956017)(52536014)(76116006);
 DIR:OUT; SFP:1102; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Tbkpec74WG0fztbQ93VbB+0In0CPSSMpsRaMXrcRPPSCaB9kMHkEywhkotMIqbfBXHsk5duxSd5DIw7mlOcPbJa7Wm83EwXTbSWyYNHhNKsDkQadXzUwvIGcpyz2x4hibSptYgPNhfIWXKa4MLlj03EHMWQp6eIDXNISx+hxJrmD/0PEUuxlFvMNm6xb4eBUPu4xQpSTwtw64xaW4ufG2V/lIdJx/LBuBm5iiTOmWkxl9S3j66tM1x7hCFmcyVJOzDenRzB7Wq9GQJ/bI2Q2liSaDjdgMtohwVSYCfii08WjriBfpS/lXY98U/4b0jhVM3QFgVabK4epsxLyj1PSvRSCcT6T86/JR7Qus7i0gDtqI124Qijg6xyW9VV92Nv2FmkBMChdRbeI1r7irn5AVy09m69of2/X5jMtgdjKeM4kjjVkXqY4UUmm6kJw+VA+
x-ms-exchange-antispam-messagedata: /StSljlxXmBy0QSMizq6I3H8/DLWoQSlNebfdeC6Gd4czihKnLeI/YfdDAmAR1BtabJUcktXcvQeJwPpQgyWyRgIW+gGqE2Yhhx1Pq8SofRZ2AoAAShUIj/Dn3nSanskxYgyuaneZlhSN6vqaoL37A==
x-ms-exchange-transport-forked: True
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f9d0ddcd-0a8b-433e-a252-08d7d1e73821
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Mar 2020 00:38:50.4184 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: UFlPVE+FargQ79cnYLkAzrBgTafbyGJTO3IfwUrTwsb2mNwKOyJVnkJZb8vwD7CiYX7WTcSpgsLfP25oemn0IA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO2PR04MB2328
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200326_173853_953388_F7A8EBE1 
X-CRM114-Status: GOOD (  19.67  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.141.245 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-BeenThere: linux-riscv@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <linux-riscv.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-riscv>,
 <mailto:linux-riscv-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-riscv/>
List-Post: <mailto:linux-riscv@lists.infradead.org>
List-Help: <mailto:linux-riscv-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-riscv>,
 <mailto:linux-riscv-request@lists.infradead.org?subject=subscribe>
Cc: "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On 2020/03/27 8:59, Palmer Dabbelt wrote:=0A=
> On Thu, 26 Mar 2020 16:40:34 PDT (-0700), Damien Le Moal wrote:=0A=
>> On 2020/03/27 7:09, Palmer Dabbelt wrote:=0A=
>> On Mon, 23 Mar 2020 21:19:05 PDT (-0700), Damien Le Moal wrote:=0A=
>>>> Palmer,=0A=
>>>=0A=
>>> Ping ?=0A=
>>>=0A=
>>> It would be great to get this series in 5.7.=0A=
>>=0A=
>> Well, the real issue here is that the new series don't appear to address=
 the=0A=
>> fundamental issue I had with the patch set (kernel binaries that only ru=
n on=0A=
>> one system).  As a result it's gone on the list of things I need to go f=
ix,=0A=
>> which is quite a bit longer than the review queue.=0A=
>>=0A=
> =0A=
> I do not understand... Are you referring to the compressed instruction #i=
fdef=0A=
> that was in the unaligned load/store handler ? The latest v4 removed that=
 and I=0A=
> actuall tested all 4 combinations of kernel and user space being compiled=
 with=0A=
> and without compressed instructions. All worked fine.=0A=
> =0A=
> We had the same problem in OpenSBI by the way and we fixed it there too.=
=0A=
> =0A=
> It's the BUILTIN_DTB issue -- this should look up the DTB to use based on=
 some=0A=
> sort of SOC unique identifier, either something unique in the device tree=
 that=0A=
> was provided (assuming whatever loads Linux on the Kendryte provides one)=
 or=0A=
> mvendorid+marchid+mimpid (probably with some sort of masking).=0A=
=0A=
Hmmm. Yes, that would be nice. However, an SoC identifier is not the same a=
s a=0A=
board identifier, and since the device tree describes not just the SoC, I a=
m not=0A=
sure this would in the end be a unique enough ID and so not improve anythin=
g.=0A=
=0A=
The other problem with this I think is that this does not improve in any wa=
y the=0A=
"bad" case where none of the embedded DTBs available match the hardware. Wh=
at to=0A=
do then ? At that point, the kernel code is such in an early stage that it=
=0A=
cannot even display anything. That is the same situation with the current s=
ingle=0A=
BUILTIN dtb: if the dtb is wrong, the kernel will likely not boot.=0A=
=0A=
The current BUILTIN_DTB approach comes from other arch where that already=
=0A=
exists. Nothing new here, and it looks like other arch at least didn't mind=
 the=0A=
end-result special kernel-for-this-paltform-only approach. We are talking a=
bout=0A=
a tiny hardware/super embedded thing here. I sure would not want to use BUI=
LTIN=0A=
DTB for anything bigger then the Kendryte boards and this may be where we c=
an=0A=
improve using KConfig: allow selecting BUILTIN DTB only if the KENDRYTE SOC=
 is=0A=
selected ?=0A=
=0A=
In the end, I would really like to see this series in 5.7 to enable all the=
=0A=
hobbyist and hackers out there to more easily contribute improvements in th=
is=0A=
area. I do not see much problem with starting with the BUILTIN DTB as it is=
 and=0A=
improve on it as we go. There will not be any "backward compatibility" prob=
lems=0A=
that I can see.=0A=
=0A=
=0A=
-- =0A=
Damien Le Moal=0A=
Western Digital Research=0A=

