Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7573B9F46B
	for <lists+linux-riscv@lfdr.de>; Tue, 27 Aug 2019 22:43:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dM6JaybuQ4vWcxoOY93D5GuXZsexIPjmeU49XPFJgO0=; b=fz44g7vDwTBrDl
	QOz+s7aoNY/1XpIaCxMD6vQz35szogb+lG1DymPy6eVrsOX10cjSE/zvWIZ6qfP3Y8Xxg1IYvIdjw
	TLiihPB5Ux9kQaeoEc/z1FAm+d05ZVdQhHj3QPcs3T7PkhaGG6B+FvRjTjhdnuuSzcnxrmjfWvGxI
	F3PpAJGDir632O0XVlu5q32xBmesf/VbVP+I9Xdd84A6h9cKuyIFbBU1JnjG0Smzhcq988mVPLIpz
	2vCCWMdKcjl0GI16V8HPhxCZzPbAg6+4Ha544rSpGBeMdTC0weR/nk3wUfZlBwqdhmFChS2Ff88bd
	LAi/c8JS45/m153dhqhA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2iJH-00050H-Rc; Tue, 27 Aug 2019 20:43:23 +0000
Received: from esa4.hgst.iphmx.com ([216.71.154.42])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2iJD-0004zW-CN
 for linux-riscv@lists.infradead.org; Tue, 27 Aug 2019 20:43:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1566938599; x=1598474599;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=9mK0b1On8v3thwngczLio5vdgDq57AS3YU5XCvoLda4=;
 b=WXxLbqyY8jKuPjB/IF9c60ihrFsX5kZTDY2OcYL4N1HvtTtUp+rAtli8
 WT8LaRNK22rsc9ZYJJub78fxm5yBo7XHBqyXYAbUHCB59aTs2DVnmO1dK
 cW4Y5IgLUtBz7vbW1G4h9VOoSmv9hGu7ZWYNoPsyuVSJj6xow3foEHKCH
 gyyyC3WHhyl+sxOQER4rkBGZ0ZshNT7oeRcPjs6qoW3KgEE/IFXiWR6hn
 8BSr7HCChmxk5B2BdDXPalo/+SHOkipPGCppWT/gIONNJd83ihUq7QMO6
 FheCDX1DmqTA7loKBkkOyGzX5FNSNR10QdhGFEI1Z34LDXx+2Gfvd4A5w g==;
IronPort-SDR: 9iXQ92cgLp6tc5V5vKiczUIdefGBuEbSVpaCDw6RsZ7dbcnMqtGoYj4lnPFi6A1OrcbcBsI0OK
 1l++iNJ5UeLlYn9A/mV8Clw4G1KVtU/U9k8HR7Q9BpPz+HqNCQYQzhMwpcfC9uwONMD+I7W3Td
 C/i092ubqEMhfn7hg/ILssRjpa9hpFQNxwh4WefapbdCFEfe4BFhpviWqveoVH1ZJnYUCwdYnS
 ddf0rGUs8sWv2lohvX7L1VveV4AS6RlNdbnMbfUDZ9xn7dU3doQSeVv09WcYBDEdpRdWsoZH/o
 A5I=
X-IronPort-AV: E=Sophos;i="5.64,438,1559491200"; d="scan'208";a="116800503"
Received: from mail-sn1nam02lp2056.outbound.protection.outlook.com (HELO
 NAM02-SN1-obe.outbound.protection.outlook.com) ([104.47.36.56])
 by ob1.hgst.iphmx.com with ESMTP; 28 Aug 2019 04:43:15 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=J3hcMHphx4/uap5FZD/JvfFj/zrN/We1YS7qy3wqF0XJWenQlLD1+4m0Q/9m5V7TnnzhhSLyYO81IRPCY2fy9G7QR/pWTU8LnvhzwX+7AuQzJEoXimHFMIesP8ILntN5Axd2+5YjxCC7C/4a6btDMDidB+Mq52xJy2Yhi/sJ63z5J9f4ojdZF3+UhE6vT1t/WQCHHjmwgqBe+b4sTF+MSOIxyEBUiOGDluBYccSRYa36uqehjcox1oyXFP91tdEwvgPC5NZg4uQ0kCBTiiSA91HVyoEDAqWVIsHOo/j/QrI90KObZJGk0FhHc1MkaxGv/pyemNU7nOrD+yEH9n524Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=9mK0b1On8v3thwngczLio5vdgDq57AS3YU5XCvoLda4=;
 b=aco5OLoAVoii/5EGX4J7vrEH557HB/ax+hWrwojWgoWKkNx/JxrWmS6vBt6AVZOBW3oy1J8OMyHXKDJb/LOXD6xNw8DQTv8VccKVwiw9gfwNAjcjrVnHe874k12jMgneHkpfQBi4ZPUuCyEKEBD8dIl7eJPZZ+bYzV6Eyk+nTs1GWcUt6ve3uAHtdH2jvAsl5gCwJUps6OZPZUYL/KlwAiMTEEsuuxCDj1nBgFgyIhfjdkpP9L61n3dcs7UF4Rle+Zz6qMTyJpgfhPGxVP0VB4vB3jn7hfhiFF1HBh52u2AQjnQsVqKVAJx2jccV7F3YdRYZHo6LxGJA/iyonfPP1Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=9mK0b1On8v3thwngczLio5vdgDq57AS3YU5XCvoLda4=;
 b=HHxnJuW9vr6Y6YHbH+PlnqJPOkRdgvpFELUwD3H+f5EmLuotmjDhVi/9xLniwimPqcYRirB2MBopSeNo9FezCzf3NbmM36KNSY8fvaGUBNbLKZBZwTfxZ19btULQKXMJ8vgaF+TQTs0YPIBiMcqVfhHNp6i4K8Ew28RoJFd3qy8=
Received: from BYAPR04MB3990.namprd04.prod.outlook.com (52.135.215.29) by
 BYAPR04MB5814.namprd04.prod.outlook.com (20.179.58.205) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2199.21; Tue, 27 Aug 2019 20:43:13 +0000
Received: from BYAPR04MB3990.namprd04.prod.outlook.com
 ([fe80::24ca:5178:5475:9a0e]) by BYAPR04MB3990.namprd04.prod.outlook.com
 ([fe80::24ca:5178:5475:9a0e%4]) with mapi id 15.20.2178.020; Tue, 27 Aug 2019
 20:43:13 +0000
From: Atish Patra <Atish.Patra@wdc.com>
To: "anup@brainfault.org" <anup@brainfault.org>
Subject: Re: [RFC PATCH 2/2] RISC-V: Add basic support for SBI v0.2
Thread-Topic: [RFC PATCH 2/2] RISC-V: Add basic support for SBI v0.2
Thread-Index: AQHVXGawG+IpOh5bxU6Og3bOIuxxjKcOvSCAgAC6KAA=
Date: Tue, 27 Aug 2019 20:43:13 +0000
Message-ID: <471bd8891fa96cde2a8f5fa8bdb4195a5f746a2a.camel@wdc.com>
References: <20190826233256.32383-1-atish.patra@wdc.com>
 <20190826233256.32383-3-atish.patra@wdc.com>
 <CAAhSdy35btg0SPDsrS70DezJpjrzmn07v2z04s65D_-U+NKPGA@mail.gmail.com>
In-Reply-To: <CAAhSdy35btg0SPDsrS70DezJpjrzmn07v2z04s65D_-U+NKPGA@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Atish.Patra@wdc.com; 
x-originating-ip: [199.255.44.250]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 5b35cc7e-3c57-4bcb-1db8-08d72b2f2e18
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600166)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:BYAPR04MB5814; 
x-ms-traffictypediagnostic: BYAPR04MB5814:
x-microsoft-antispam-prvs: <BYAPR04MB5814B587D6BD835C48B9EC81FAA00@BYAPR04MB5814.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:5516;
x-forefront-prvs: 0142F22657
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(346002)(136003)(39860400002)(376002)(396003)(366004)(199004)(189003)(25786009)(2616005)(476003)(26005)(102836004)(7416002)(446003)(2906002)(6246003)(486006)(66476007)(316002)(53546011)(256004)(76176011)(4326008)(11346002)(99286004)(229853002)(14454004)(6916009)(305945005)(54906003)(66946007)(6116002)(64756008)(66556008)(186003)(118296001)(71200400001)(66066001)(7736002)(53936002)(71190400001)(478600001)(5640700003)(5660300002)(8676002)(6512007)(81166006)(81156014)(1730700003)(86362001)(2501003)(2351001)(66446008)(8936002)(36756003)(76116006)(6436002)(6506007)(3846002)(6486002);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BYAPR04MB5814;
 H:BYAPR04MB3990.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: SJaXkR6+4AOrSKDPpQ1uKnCyunJbuMZ6vUoFjd+MPFKx3bHnr0nohYjjIqkJV53dHVtG08tRvCIs8uOktAo5iy5idW7DGcjIF5g6ep+C1ildxIbKGUXoCz2SB84TcH5BjuDlrmXHYl9ElTS9y9AGK4/vymo4vQiHAGV8y/0VewbxXf2VvJhNUt+NZ430rCXsm7kCP7fGBOArpMoZAXG8gazC1i6WcoBFyqKe+WBxUzSLLHWEsRLK62xKzICWSp47oR5ZjLSG9NFL3GbSBXXVVZxVBYZtcQAjchW6/enxM/y3E7E6nM60AS1R4dEcP/WGuy0KVCbBLGGOi9CC/HKtp0uViv+R//KMH1SdmN1bqxc0j/VNCPKHtRwaRejYz55q2BB/3hObAsFbY0N3eIJbmTkHVdCv3l7Gai6mVTHBAmQ=
x-ms-exchange-transport-forked: True
Content-ID: <F5B479EEEE7463409640E71F5D75F10C@namprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5b35cc7e-3c57-4bcb-1db8-08d72b2f2e18
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Aug 2019 20:43:13.2524 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: QNrUOVMwwqyrERiJ5DUc0DpSw9uH2+HMIiWic1im3wkTJqT4o3ugIFDu4tyXgXUUau1cAc14HGdoJuOM06KYtA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR04MB5814
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190827_134319_476116_EECE2EA6 
X-CRM114-Status: GOOD (  22.02  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.154.42 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "aou@eecs.berkeley.edu" <aou@eecs.berkeley.edu>,
 "alankao@andestech.com" <alankao@andestech.com>,
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 "palmer@sifive.com" <palmer@sifive.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "rppt@linux.ibm.com" <rppt@linux.ibm.com>,
 "alexios.zavras@intel.com" <alexios.zavras@intel.com>,
 "gary@garyguo.net" <gary@garyguo.net>,
 "paul.walmsley@sifive.com" <paul.walmsley@sifive.com>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>,
 "tglx@linutronix.de" <tglx@linutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Tue, 2019-08-27 at 15:06 +0530, Anup Patel wrote:
> On Tue, Aug 27, 2019 at 5:03 AM Atish Patra <atish.patra@wdc.com>
> wrote:
> > The SBI v0.2 introduces a base extension which is backward
> > compatible
> > with v0.1. Implement all helper functions and minimum required SBI
> > calls from v0.2 for now. All other base extension function will be
> > added later as per need.
> > 
> > Signed-off-by: Atish Patra <atish.patra@wdc.com>
> > ---
> >  arch/riscv/include/asm/sbi.h | 68 +++++++++++++++++++++++++++++---
> > ----
> >  arch/riscv/kernel/Makefile   |  1 +
> >  arch/riscv/kernel/sbi.c      | 50 ++++++++++++++++++++++++++
> >  arch/riscv/kernel/setup.c    |  2 ++
> >  4 files changed, 108 insertions(+), 13 deletions(-)
> >  create mode 100644 arch/riscv/kernel/sbi.c
> > 
> > diff --git a/arch/riscv/include/asm/sbi.h
> > b/arch/riscv/include/asm/sbi.h
> > index 7f5ecaaaa0d7..4a4476956693 100644
> > --- a/arch/riscv/include/asm/sbi.h
> > +++ b/arch/riscv/include/asm/sbi.h
> > @@ -8,7 +8,6 @@
> > 
> >  #include <linux/types.h>
> > 
> > -
> >  #define SBI_EXT_LEGACY_SET_TIMER 0x0
> >  #define SBI_EXT_LEGACY_CONSOLE_PUTCHAR 0x1
> >  #define SBI_EXT_LEGACY_CONSOLE_GETCHAR 0x2
> > @@ -19,28 +18,61 @@
> >  #define SBI_EXT_LEGACY_REMOTE_SFENCE_VMA_ASID 0x7
> >  #define SBI_EXT_LEGACY_SHUTDOWN 0x8
> > 
> > -#define SBI_CALL_LEGACY(which, arg0, arg1, arg2, arg3)
> > ({             \
> > +#define SBI_EXT_BASE 0x10
> > +
> > +enum sbi_ext_base_fid {
> > +       SBI_EXT_BASE_GET_SPEC_VERSION = 0,
> > +       SBI_EXT_BASE_GET_IMP_ID,
> > +       SBI_EXT_BASE_GET_IMP_VERSION,
> > +       SBI_EXT_BASE_PROBE_EXT,
> > +       SBI_EXT_BASE_GET_MVENDORID,
> > +       SBI_EXT_BASE_GET_MARCHID,
> > +       SBI_EXT_BASE_GET_MIMPID,
> > +};
> > +
> > +#define SBI_CALL_LEGACY(ext, fid, arg0, arg1, arg2, arg3) ({   \
> >         register uintptr_t a0 asm ("a0") = (uintptr_t)(arg0);   \
> >         register uintptr_t a1 asm ("a1") = (uintptr_t)(arg1);   \
> >         register uintptr_t a2 asm ("a2") = (uintptr_t)(arg2);   \
> >         register uintptr_t a3 asm ("a3") = (uintptr_t)(arg3);   \
> > -       register uintptr_t a7 asm ("a7") = (uintptr_t)(which);  \
> > +       register uintptr_t a6 asm ("a6") = (uintptr_t)(fid);    \
> > +       register uintptr_t a7 asm ("a7") = (uintptr_t)(ext);    \
> >         asm volatile ("ecall"                                   \
> > -                     : "+r" (a0)                               \
> > -                     : "r" (a1), "r" (a2), "r" (a3), "r" (a7)  \
> > +                     : "+r" (a0), "+r" (a1)                    \
> > +                     : "r" (a2), "r" (a3), "r" (a6), "r" (a7) \
> >                       : "memory");                              \
> >         a0;                                                     \
> >  })
> 
> I think instead of removing old convention we should use
> calling convention based on sbi_version detected at boot-time.
> 
> >  /* Lazy implementations until SBI is finalized */
> > -#define SBI_CALL_LEGACY_0(which) SBI_CALL_LEGACY(which, 0, 0, 0,
> > 0)
> > -#define SBI_CALL_LEGACY_1(which, arg0) SBI_CALL_LEGACY(which,
> > arg0, 0, 0, 0)
> > -#define SBI_CALL_LEGACY_2(which, arg0, arg1) \
> > -               SBI_CALL_LEGACY(which, arg0, arg1, 0, 0)
> > -#define SBI_CALL_LEGACY_3(which, arg0, arg1, arg2) \
> > -               SBI_CALL_LEGACY(which, arg0, arg1, arg2, 0)
> > -#define SBI_CALL_LEGACY_4(which, arg0, arg1, arg2, arg3) \
> > -               SBI_CALL_LEGACY(which, arg0, arg1, arg2, arg3)
> > +#define SBI_CALL_LEGACY_0(ext) SBI_CALL_LEGACY(ext, 0, 0, 0, 0, 0)
> > +#define SBI_CALL_LEGACY_1(ext, arg0) SBI_CALL_LEGACY(ext, 0, arg0,
> > 0, 0, 0)
> > +#define SBI_CALL_LEGACY_2(ext, arg0, arg1) \
> > +               SBI_CALL_LEGACY(ext, 0, arg0, arg1, 0, 0)
> > +#define SBI_CALL_LEGACY_3(ext, arg0, arg1, arg2) \
> > +               SBI_CALL_LEGACY(ext, 0, arg0, arg1, arg2, 0)
> > +#define SBI_CALL_LEGACY_4(ext, arg0, arg1, arg2, arg3) \
> > +               SBI_CALL_LEGACY(ext, 0, arg0, arg1, arg2, arg3)
> > +
> > +extern unsigned long sbi_firmware_version;
> > +struct sbiret {
> > +       long error;
> > +       long value;
> > +};
> > +
> > +void riscv_sbi_init(void);
> > +struct sbiret riscv_sbi_ecall(int ext, int fid, int arg0, int
> > arg1,
> > +                              int arg2, int arg3);
> > +
> > +#define SBI_CALL_0(ext, fid) riscv_sbi_ecall(ext, fid, 0, 0, 0, 0)
> > +#define SBI_CALL_1(ext, fid, arg0) riscv_sbi_ecall(ext, fid, arg0,
> > 0, 0, 0)
> > +#define SBI_CALL_2(ext, fid, arg0, arg1) \
> > +               riscv_sbi_ecall(ext, fid, arg0, arg1, 0, 0)
> > +#define SBI_CALL_3(ext, fid, arg0, arg1, arg2) \
> > +               riscv_sbi_ecall(ext, fid, arg0, arg1, arg2, 0)
> > +#define SBI_CALL_4(ext, fid, arg0, arg1, arg2, arg3) \
> > +               riscv_sbi_ecall(ext, fid, arg0, arg1, arg2, arg3)
> > +
> > 
> >  static inline void sbi_console_putchar(int ch)
> >  {
> > @@ -99,4 +131,14 @@ static inline void
> > sbi_remote_sfence_vma_asid(const unsigned long *hart_mask,
> >                           start, size, asid);
> >  }
> 
> To be sure that new kernels work fine on older kernel, we
> can be conservative and move all legacy SBI calls to kernel/sbi.c.
> All legacy SBI calls can check sbi_version and use appropriate
> SBI calling convention.
> 
> This might be redundant if we can ensure that newer kernels
> work fine with older SBI v0.1 firmwares.

Yes that's why I didnot want to do it first time. How about this ?

Use only 0.2 convention only and get rid of the 0.1 convention. As it
is anyways backward compatible with 0.1, we don't need a if else
clause.

The legacy calls will not use any value set in a1 and always set 0 in
function id (a6).

> 
> > +static inline unsigned long riscv_sbi_major_version(void)
> > +{
> > +       return (sbi_firmware_version >> 24) & 0x7f;
> > +}
> > +
> > +static inline unsigned long riscv_sbi_minor_version(void)
> > +{
> > +       return sbi_firmware_version & 0xffffff;
> > +}
> > +
> >  #endif
> > diff --git a/arch/riscv/kernel/Makefile
> > b/arch/riscv/kernel/Makefile
> > index 2420d37d96de..faf862d26924 100644
> > --- a/arch/riscv/kernel/Makefile
> > +++ b/arch/riscv/kernel/Makefile
> > @@ -17,6 +17,7 @@ obj-y += irq.o
> >  obj-y  += process.o
> >  obj-y  += ptrace.o
> >  obj-y  += reset.o
> > +obj-y  += sbi.o
> >  obj-y  += setup.o
> >  obj-y  += signal.o
> >  obj-y  += syscall_table.o
> > diff --git a/arch/riscv/kernel/sbi.c b/arch/riscv/kernel/sbi.c
> > new file mode 100644
> > index 000000000000..457b8cc0e9d9
> > --- /dev/null
> > +++ b/arch/riscv/kernel/sbi.c
> > @@ -0,0 +1,50 @@
> > +// SPDX-License-Identifier: GPL-2.0-only
> > +/*
> > + * SBI initialilization and base extension implementation.
> > + *
> > + * Copyright (c) 2019 Western Digital Corporation or its
> > affiliates.
> > + */
> > +
> > +#include <asm/sbi.h>
> > +#include <linux/sched.h>
> > +
> > +unsigned long sbi_firmware_version;
> 
> Rename this too sbi_version or sbi_spec_version.
> The firmware version is different thing.
> 

ok.

> > +
> > +struct sbiret riscv_sbi_ecall(int ext, int fid, int arg0, int
> > arg1,
> > +                            int arg2, int arg3)
> > +{
> > +       struct sbiret ret;
> > +
> > +       register uintptr_t a0 asm ("a0") = (uintptr_t)(arg0);
> > +       register uintptr_t a1 asm ("a1") = (uintptr_t)(arg1);
> > +       register uintptr_t a2 asm ("a2") = (uintptr_t)(arg2);
> > +       register uintptr_t a3 asm ("a3") = (uintptr_t)(arg3);
> > +       register uintptr_t a6 asm ("a6") = (uintptr_t)(fid);
> > +       register uintptr_t a7 asm ("a7") = (uintptr_t)(ext);
> > +       asm volatile ("ecall"
> > +                     : "+r" (a0), "+r" (a1)
> > +                     : "r" (a2), "r" (a3), "r" (a6), "r" (a7)
> > +                     : "memory");
> > +       ret.error = a0;
> > +       ret.value = a1;
> > +
> > +       return ret;
> > +}
> > +
> > +static struct sbiret sbi_get_spec_version(void)
> > +{
> > +       return SBI_CALL_0(SBI_EXT_BASE,
> > SBI_EXT_BASE_GET_SPEC_VERSION);
> > +}
> > +
> > +void riscv_sbi_init(void)
> > +{
> > +       struct sbiret ret;
> > +
> > +       /* legacy SBI version*/
> > +       sbi_firmware_version = 0x1;
> > +       ret = sbi_get_spec_version();
> > +       if (!ret.error)
> > +               sbi_firmware_version = ret.value;
> > +       pr_info("SBI version implemented in firmware [%lu:%lu]\n",
> > +               riscv_sbi_major_version(),
> > riscv_sbi_minor_version());
> 
> Should we not print SBI implementation ID and SBI firmware version.
> 

Eventually yes. I wanted to have this series minimal implementation and
build upon it.

I will go ahead and add those.

> Regards,
> Anup
> 
> > +}
> > diff --git a/arch/riscv/kernel/setup.c b/arch/riscv/kernel/setup.c
> > index a990a6cb184f..4c324fd398c8 100644
> > --- a/arch/riscv/kernel/setup.c
> > +++ b/arch/riscv/kernel/setup.c
> > @@ -21,6 +21,7 @@
> >  #include <asm/sections.h>
> >  #include <asm/pgtable.h>
> >  #include <asm/smp.h>
> > +#include <asm/sbi.h>
> >  #include <asm/tlbflush.h>
> >  #include <asm/thread_info.h>
> > 
> > @@ -70,6 +71,7 @@ void __init setup_arch(char **cmdline_p)
> >         swiotlb_init(1);
> >  #endif
> > 
> > +       riscv_sbi_init();
> >  #ifdef CONFIG_SMP
> >         setup_smp();
> >  #endif
> > --
> > 2.21.0
> > 

-- 
Regards,
Atish
_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
