Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FE9410A3F5
	for <lists+linux-riscv@lfdr.de>; Tue, 26 Nov 2019 19:12:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5Y0dh2jaMWkdWmVa68yTtG+wNYYtTaMJY6M1DSR/8nQ=; b=DbQ7K3YNPhnFVt
	h+T3oaLcUg3gUZDSMGVaKDsoQWvQkBNV99S0HfsHWgQUHR4Ta42HeG1XrNaJRw+gGLrCgLlJUW6pc
	PTel+L8sEgusYFEwO88I48xW+Wwco8quJYNsddr0sUDDxSqFDsodTuyW7u2lJv1Gux+WkqNNy+9si
	J/lwm+zjDvs07IE6n5b+9LXSh7CFJxf5rknSxplk6IkEo1aedfeY8j/2Gh4A9ONMMPYDt5YzET/Zn
	gvH8CIbAvLx1AoOlV1/j1tM6GcEu1WRxOl15hARiLoetBKqWIADW1kouDUu186QsdyuuLEbZZ0s0S
	Ox5WFtkg19YHxhq2MftA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZfJr-0004av-7r; Tue, 26 Nov 2019 18:12:11 +0000
Received: from esa3.hgst.iphmx.com ([216.71.153.141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZfJm-0004a6-PA
 for linux-riscv@lists.infradead.org; Tue, 26 Nov 2019 18:12:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1574791926; x=1606327926;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=kHN10wvyrTYqGW2dCXBX1jvWi+R6RIC77WwYZVpvJ1U=;
 b=RAX335Isc6fqTxQklLtuZ01MEYvHnIm1/FGNqas+a4082DDd1Lupexd3
 hlMsE4TWaClVLSks9M9nLMlqHx16LEhY5YjBSpW8N6Cjgb2PHj6vI6kj5
 bfUtAlkzYN8m7NU1NKVKRWZT0UiPUK+MvAyMnSe25SR139c4pNEiT7q0p
 auQxpEFusMbg6/YH3NwU8XgVpxbWeMejeOZ33TR61ZUI6yCUDJN9Y/yfa
 f/LTz55MYy50zAE9vqc0QufxJ7npmKjVrGKzphLlJgYdiI+o2fKV6/u4B
 9Z/zxNTv5D9KJL3NxWai6NR8BEOEeEOxCPi8jIkWEB7ZGGqadfd3RCBOz Q==;
IronPort-SDR: tqy7I60id+ZOBIFeZGOPsPgmVxQOUT+jHiQPuhupXbcd48g9mk67eI65V9JNYkDIjQRCoVzAe3
 3FvotQ8YFiQ9PVuRyhsEsl4/rPDVIAx3CUNs3wSJfu66aDsRVQIvIYK7tNPG5KVO04CgYq5E0p
 673vYH3C6mn9Sv097Pz6Evhs8oy95tq6iFAZrIJb01urIhmVMPv17RDMOadLp0cCyeSxROqK/j
 GOvNqQdazvkYaMWkKQUQQL3VCcIAdoZVq9O/rxNC3PqEnfCgDUP2O74UniJo69wKWrZMJDr4lA
 oeA=
X-IronPort-AV: E=Sophos;i="5.69,246,1571673600"; d="scan'208";a="128477930"
Received: from mail-dm3nam05lp2053.outbound.protection.outlook.com (HELO
 NAM05-DM3-obe.outbound.protection.outlook.com) ([104.47.49.53])
 by ob1.hgst.iphmx.com with ESMTP; 27 Nov 2019 02:12:03 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=eb7o/svL32mrb/FfYHlEPObnPEC0mEUcck82HUq/NyT1Jz/9XMYdXbyzemzGKak3cmg91EvBtaDLOxMLC4YUzRozUUEDZ4tsfxIdWaShj0BSs9r2GMWXe5Xd43Ud6dp/kas3LqfP1Q7HjpwzDRP36K7/yqad1jPdd+hNLysqUUsvISLmn4ka/1tpSjTLtrzGFS2seOtVeZwTU3/6Wi6t13GbgzJJuw7c/PGAo458QMHuhDPEWAOmxalM+xYoxzdye82inNQRvOVE4NGVCek4JL58bgDUb5A87+yf60eN5FCV45CkM3utPaatlMa8Y760PwlPsEPoyqJ0zfeHoZPadw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=kHN10wvyrTYqGW2dCXBX1jvWi+R6RIC77WwYZVpvJ1U=;
 b=DY8W4kM84DJbb+0axELHxrqryu2q69vfMaiPUJ86ofhOgTpNH3TzA/JUzNw9pJrF9Kv9xWY8wXqO8ToJg6k2LU8YO0562od4hTurjr/YnrP6PRP0rLqzk5/bGS2oHRgLli3ye4nhidxrRDRTGxjGKmBMeOLLtYaqErNaI3YApAtjXA2jMTmlaJwyv35F8VDgnHCnRRcADXjGRsWYgt4hxavXu6tDB8MPREeZQ3gYg7ShSZn08dsu2u39ujOjm2qJF+gwYN8SbJrSL0jzErktIgVP8zBSBbdZtfBDb+HXWbpVwZHFXxNl2iuJS3qWhZsfaW5vg5xR6XNASJz8Wkid5A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=kHN10wvyrTYqGW2dCXBX1jvWi+R6RIC77WwYZVpvJ1U=;
 b=Ztmf0etSlEYVAQ2pMHGnBsxsKEalzH/1P59ZWKWWFUMsJk1uT/VyMMZQ/wSxVn9TbUGQyBblJxMjjeqs9S5PKwHw4sQC+pzO188unuljOlbPYh90LUbPU1pkJRF5jtUeFMXsxBmgasOxyEuUfqFpUhHWs/MegbaEeptqHlsskU8=
Received: from BYAPR04MB3990.namprd04.prod.outlook.com (52.135.215.29) by
 BYAPR04MB5447.namprd04.prod.outlook.com (20.178.48.203) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2474.19; Tue, 26 Nov 2019 18:12:01 +0000
Received: from BYAPR04MB3990.namprd04.prod.outlook.com
 ([fe80::1d22:29b6:df03:86f7]) by BYAPR04MB3990.namprd04.prod.outlook.com
 ([fe80::1d22:29b6:df03:86f7%3]) with mapi id 15.20.2474.023; Tue, 26 Nov 2019
 18:12:01 +0000
From: Atish Patra <Atish.Patra@wdc.com>
To: "anup@brainfault.org" <anup@brainfault.org>
Subject: Re: [PATCH v4 3/4] RISC-V: Introduce a new config for SBI v0.1
Thread-Topic: [PATCH v4 3/4] RISC-V: Introduce a new config for SBI v0.1
Thread-Index: AQHVpAh6mZ4qaSNZ9k2Poh9HAXfG6Kec1+iAgADqBQA=
Date: Tue, 26 Nov 2019 18:12:01 +0000
Message-ID: <8b226ec548b17514143c2f58e047b7bf093f4574.camel@wdc.com>
References: <20191126032033.14825-1-atish.patra@wdc.com>
 <20191126032033.14825-4-atish.patra@wdc.com>
 <CAAhSdy2icvYPfa5Dm+1qF9sr=22ErHVYr=ZmXYqu6dHZing81A@mail.gmail.com>
In-Reply-To: <CAAhSdy2icvYPfa5Dm+1qF9sr=22ErHVYr=ZmXYqu6dHZing81A@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Atish.Patra@wdc.com; 
x-originating-ip: [2601:646:8280:fdf0:69be:1cca:a557:65ea]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 208cfc96-bf00-4f1c-304c-08d7729c2297
x-ms-traffictypediagnostic: BYAPR04MB5447:
x-microsoft-antispam-prvs: <BYAPR04MB544760E746B7F8306495CB14FA450@BYAPR04MB5447.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:7219;
x-forefront-prvs: 0233768B38
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(346002)(396003)(366004)(376002)(136003)(39860400002)(189003)(199004)(6436002)(102836004)(6116002)(478600001)(305945005)(118296001)(64756008)(66556008)(66446008)(53546011)(316002)(229853002)(5640700003)(2351001)(6486002)(46003)(71200400001)(71190400001)(6916009)(7736002)(76116006)(66476007)(186003)(11346002)(4001150100001)(8936002)(6506007)(6246003)(2501003)(14454004)(14444005)(30864003)(256004)(5660300002)(4326008)(25786009)(8676002)(36756003)(2906002)(1730700003)(66946007)(54906003)(446003)(86362001)(6512007)(81156014)(76176011)(99286004)(2616005)(81166006);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BYAPR04MB5447;
 H:BYAPR04MB3990.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: OIkkUxk4d2yg55qrcRUfNmDHhXWtIf/S0kgS5V/0hKevlnXwHjh9ixSDIVP+bvvEvwP2+ScPaxC0o6CzOziSotyOibLfhZmSvUIIPBWmq/MgQFc3tpJpwwcax1l4dB+weZwUK74p6iQMI71h72CDeSg+PGb7ODPrjmLIqxdI94pel/sW7ypeeY1SAEPdxCP1kTdiSsBDjTlRhEjx/CuuSyAx5a1Ldx8k1bqC/3XSgSKyZvZp+1/VQJvCn0jrGB7G2BBFWbvBtFc4AynyHA86xqksnX269LunvRi57TwwsUsxZ3g3rFW6iKhoUeCUYBGDlVVQQXN9aCYnonY/aHcMzlp0XIqECniFwX2PmGmY/tKBh1aX8vJwcjUwikEeAzr6IpUN5K2VdeewghWkJlWXMW6kAzqZzRky+1Zpy9Pc5Y3MgoYIkn5e/7MYruh4qNjs
x-ms-exchange-transport-forked: True
Content-ID: <FB85AFD60B2E294C922A936B705A1DD8@namprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 208cfc96-bf00-4f1c-304c-08d7729c2297
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Nov 2019 18:12:01.5783 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: PGP+SZukEEN3QQcauai7cr19P5nC79iN3rSS9jw+uJTltfJEz+5A+yeIEmzYz2Jh9lE2Y1oP7QDMS4hsl8Lo3Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR04MB5447
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191126_101206_952588_F7A6FDEF 
X-CRM114-Status: GOOD (  24.53  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.153.141 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "rppt@linux.ibm.com" <rppt@linux.ibm.com>,
 "palmer@dabbelt.com" <palmer@dabbelt.com>,
 "paul.walmsley@sifive.com" <paul.walmsley@sifive.com>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>,
 "tglx@linutronix.de" <tglx@linutronix.de>,
 "han_mao@c-sky.com" <han_mao@c-sky.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Tue, 2019-11-26 at 09:44 +0530, Anup Patel wrote:
> On Tue, Nov 26, 2019 at 8:50 AM Atish Patra <atish.patra@wdc.com>
> wrote:
> > We now have SBI v0.2 which is more scalable and extendable to
> > handle
> > future needs for RISC-V supervisor interfaces.
> > 
> > Introduce a new config and move all SBI v0.1 code under that
> > config.
> > This allows to implement the new replacement SBI extensions cleanly
> > and remove v0.1 extensions easily in future. Currently, the config
> > is enabled by default. Once all M-mode software with v0.1 are no
> > longer in use, this config option and all relevant code can be
> > easily
> > removed.
> > 
> > Signed-off-by: Atish Patra <atish.patra@wdc.com>
> > ---
> >  arch/riscv/Kconfig           |   6 ++
> >  arch/riscv/include/asm/sbi.h |   2 +
> >  arch/riscv/kernel/sbi.c      | 154 +++++++++++++++++++++++++++++
> > ------
> >  3 files changed, 138 insertions(+), 24 deletions(-)
> > 
> > diff --git a/arch/riscv/Kconfig b/arch/riscv/Kconfig
> > index ca3b5541ae93..15c020d6837b 100644
> > --- a/arch/riscv/Kconfig
> > +++ b/arch/riscv/Kconfig
> > @@ -304,6 +304,12 @@ config SECCOMP
> >           and the task is only allowed to execute a few safe
> > syscalls
> >           defined by each seccomp mode.
> > 
> > +config RISCV_SBI_V01
> > +       bool "SBI v0.1 support"
> > +       default y
> > +       help
> > +         This config allows kernel to use SBI v0.1 APIs. This will
> > be
> > +         deprecated in future once legacy M-mode software are no
> > longer in use.
> >  endmenu
> > 
> >  menu "Boot options"
> > diff --git a/arch/riscv/include/asm/sbi.h
> > b/arch/riscv/include/asm/sbi.h
> > index 906438322932..cc82ae63f8e0 100644
> > --- a/arch/riscv/include/asm/sbi.h
> > +++ b/arch/riscv/include/asm/sbi.h
> > @@ -10,6 +10,7 @@
> > 
> >  #ifdef CONFIG_RISCV_SBI
> >  enum sbi_ext_id {
> > +#ifdef CONFIG_RISCV_SBI_V01
> >         SBI_EXT_0_1_SET_TIMER = 0x0,
> >         SBI_EXT_0_1_CONSOLE_PUTCHAR = 0x1,
> >         SBI_EXT_0_1_CONSOLE_GETCHAR = 0x2,
> > @@ -19,6 +20,7 @@ enum sbi_ext_id {
> >         SBI_EXT_0_1_REMOTE_SFENCE_VMA = 0x6,
> >         SBI_EXT_0_1_REMOTE_SFENCE_VMA_ASID = 0x7,
> >         SBI_EXT_0_1_SHUTDOWN = 0x8,
> > +#endif
> >         SBI_EXT_BASE = 0x10,
> >  };
> > 
> > diff --git a/arch/riscv/kernel/sbi.c b/arch/riscv/kernel/sbi.c
> > index 8b36269fa515..8574de1074c4 100644
> > --- a/arch/riscv/kernel/sbi.c
> > +++ b/arch/riscv/kernel/sbi.c
> > @@ -8,6 +8,14 @@
> >  unsigned long sbi_spec_version = SBI_SPEC_VERSION_DEFAULT;
> >  EXPORT_SYMBOL(sbi_spec_version);
> > 
> > +void (*__sbi_set_timer)(uint64_t stime);
> > +int (*__sbi_send_ipi)(const unsigned long *hart_mask);
> > +int (*__sbi_rfence)(unsigned long extid, unsigned long fid,
> > +                 const unsigned long *hart_mask,
> > +                 unsigned long hbase, unsigned long start,
> > +                 unsigned long size, unsigned long arg4,
> > +                 unsigned long arg5);
> > +
> 
> Make these function pointers static.
> 

Sure.

> >  struct sbiret sbi_ecall(int ext, int fid, unsigned long arg0,
> >                         unsigned long arg1, unsigned long arg2,
> >                         unsigned long arg3, unsigned long arg4,
> > @@ -52,6 +60,32 @@ static int sbi_err_map_linux_errno(int err)
> >         };
> >  }
> > 
> > +static inline void __sbi_set_timer_dummy_warn(uint64_t
> > stime_value)
> 
> Don't make this function inline because you are assigning it to
> function
> pointer below.
> 

Thanks for pointing that out. I wil fix all the instances.

> > +{
> > +       pr_warn("Timer extension is not available in SBI
> > v%lu.%lu\n",
> > +               sbi_major_version(), sbi_minor_version());
> > +}
> > +
> > +static inline int __sbi_send_ipi_dummy_warn(const unsigned long
> > *hart_mask)
> 
> Same as above.
> 
> > +{
> > +       pr_warn("IPI extension is not available in SBI v%lu.%lu\n",
> > +               sbi_major_version(), sbi_minor_version());
> > +       return 0;
> > +}
> > +
> > +static inline int __sbi_rfence_dummy_warn(unsigned long extid,
> > +                            unsigned long fid,
> > +                            const unsigned long *hart_mask,
> > +                            unsigned long hbase, unsigned long
> > start,
> > +                            unsigned long size, unsigned long
> > arg4,
> > +                            unsigned long arg5)
> 
> Same as above.
> 
> > +{
> > +       pr_warn("remote fence extension is not available in SBI
> > v%lu.%lu\n",
> > +               sbi_major_version(), sbi_minor_version());
> > +       return 0;
> > +}
> > +
> > +#ifdef CONFIG_RISCV_SBI_V01
> >  /**
> >   * sbi_console_putchar() - Writes given character to the console
> > device.
> >   * @ch: The data to be written to the console.
> > @@ -80,41 +114,106 @@ int sbi_console_getchar(void)
> >  EXPORT_SYMBOL(sbi_console_getchar);
> > 
> >  /**
> > - * sbi_set_timer() - Program the timer for next timer event.
> > - * @stime_value: The value after which next timer event should
> > fire.
> > + * sbi_shutdown() - Remove all the harts from executing supervisor
> > code.
> >   *
> >   * Return: None
> >   */
> > -void sbi_set_timer(uint64_t stime_value)
> > +void sbi_shutdown(void)
> >  {
> > -#if __riscv_xlen == 32
> > -       sbi_ecall(SBI_EXT_0_1_SET_TIMER, 0, stime_value,
> > -                         stime_value >> 32, 0, 0, 0, 0);
> > -#else
> > -       sbi_ecall(SBI_EXT_0_1_SET_TIMER, 0, stime_value, 0, 0, 0,
> > 0, 0);
> > -#endif
> > +       sbi_ecall(SBI_EXT_0_1_SHUTDOWN, 0, 0, 0, 0, 0, 0, 0);
> >  }
> >  EXPORT_SYMBOL(sbi_set_timer);
> > 
> >  /**
> > - * sbi_shutdown() - Remove all the harts from executing supervisor
> > code.
> > + * sbi_clear_ipi() - Clear any pending IPIs for the calling hart.
> >   *
> >   * Return: None
> >   */
> > -void sbi_shutdown(void)
> > +void sbi_clear_ipi(void)
> >  {
> > -       sbi_ecall(SBI_EXT_0_1_SHUTDOWN, 0, 0, 0, 0, 0, 0, 0);
> > +       sbi_ecall(SBI_EXT_0_1_CLEAR_IPI, 0, 0, 0, 0, 0, 0, 0);
> >  }
> >  EXPORT_SYMBOL(sbi_shutdown);
> > 
> >  /**
> > - * sbi_clear_ipi() - Clear any pending IPIs for the calling hart.
> > + * sbi_set_timer_v01() - Program the timer for next timer event.
> > + * @stime_value: The value after which next timer event should
> > fire.
> >   *
> >   * Return: None
> >   */
> > -void sbi_clear_ipi(void)
> > +static void __sbi_set_timer_v01(uint64_t stime_value)
> >  {
> > -       sbi_ecall(SBI_EXT_0_1_CLEAR_IPI, 0, 0, 0, 0, 0, 0, 0);
> > +#if __riscv_xlen == 32
> > +       sbi_ecall(SBI_EXT_0_1_SET_TIMER, 0, stime_value,
> > +                 stime_value >> 32, 0, 0, 0, 0);
> > +#else
> > +       sbi_ecall(SBI_EXT_0_1_SET_TIMER, 0, stime_value, 0, 0, 0,
> > 0, 0);
> > +#endif
> > +}
> > +
> > +static int __sbi_send_ipi_v01(const unsigned long *hart_mask)
> > +{
> > +       sbi_ecall(SBI_EXT_0_1_SEND_IPI, 0, (unsigned
> > long)hart_mask,
> > +                 0, 0, 0, 0, 0);
> > +       return 0;
> > +}
> > +
> > +static int __sbi_rfence_v01(unsigned long ext, unsigned long fid,
> > +                            const unsigned long *hart_mask,
> > +                            unsigned long hbase, unsigned long
> > start,
> > +                            unsigned long size, unsigned long
> > arg4,
> > +                            unsigned long arg5)
> > +{
> > +       switch (ext) {
> > +       case SBI_EXT_0_1_REMOTE_FENCE_I:
> > +               sbi_ecall(SBI_EXT_0_1_REMOTE_FENCE_I, 0,
> > +                         (unsigned long)hart_mask, 0, 0, 0, 0, 0);
> > +               break;
> > +       case SBI_EXT_0_1_REMOTE_SFENCE_VMA:
> > +               sbi_ecall(SBI_EXT_0_1_REMOTE_SFENCE_VMA, 0,
> > +                         (unsigned long)hart_mask, start, size,
> > +                         0, 0, 0);
> > +               break;
> > +       case SBI_EXT_0_1_REMOTE_SFENCE_VMA_ASID:
> > +               sbi_ecall(SBI_EXT_0_1_REMOTE_SFENCE_VMA_ASID, 0,
> > +                         (unsigned long)hart_mask, start, size,
> > +                         arg4, 0, 0);
> > +               break;
> > +       default:
> > +               pr_err("extid [%lu]not supported in SBI v0.1\n",
> > ext);
> > +       }
> > +
> > +       return 0;
> > +}
> > +#else
> > +static void __sbi_set_timer_v01(uint64_t stime_value)
> > +{
> > +       __sbi_set_timer_dummy_warn(0);
> > +}
> > +static int __sbi_send_ipi_v01(const unsigned long *hart_mask)
> > +{
> > +       return __sbi_send_ipi_dummy_warn(NULL);
> > +}
> > +static int __sbi_rfence_v01(unsigned long ext, unsigned long fid,
> > +                            const unsigned long *hart_mask,
> > +                            unsigned long hbase, unsigned long
> > start,
> > +                            unsigned long size, unsigned long
> > arg4,
> > +                            unsigned long arg5)
> > +{
> > +       return __sbi_rfence_dummy_warn(0, 0, 0, 0, 0, 0, 0, 0);
> > +
> > +}
> > +#endif /* CONFIG_RISCV_SBI_V01 */
> > +
> > +/**
> > + * sbi_set_timer() - Program the timer for next timer event.
> > + * @stime_value: The value after which next timer event should
> > fire.
> > + *
> > + * Return: None
> > + */
> > +void sbi_set_timer(uint64_t stime_value)
> > +{
> > +       __sbi_set_timer(stime_value);
> >  }
> > 
> >  /**
> > @@ -125,11 +224,11 @@ void sbi_clear_ipi(void)
> >   */
> >  void sbi_send_ipi(const unsigned long *hart_mask)
> >  {
> > -       sbi_ecall(SBI_EXT_0_1_SEND_IPI, 0, (unsigned
> > long)hart_mask,
> > -                       0, 0, 0, 0, 0);
> > +       __sbi_send_ipi(hart_mask);
> >  }
> >  EXPORT_SYMBOL(sbi_send_ipi);
> > 
> > +
> >  /**
> >   * sbi_remote_fence_i() - Execute FENCE.I instruction on given
> > remote harts.
> >   * @hart_mask: A cpu mask containing all the target harts.
> > @@ -138,8 +237,8 @@ EXPORT_SYMBOL(sbi_send_ipi);
> >   */
> >  void sbi_remote_fence_i(const unsigned long *hart_mask)
> >  {
> > -       sbi_ecall(SBI_EXT_0_1_REMOTE_FENCE_I, 0, (unsigned
> > long)hart_mask,
> > -                       0, 0, 0, 0, 0);
> > +       __sbi_rfence(SBI_EXT_0_1_REMOTE_FENCE_I, 0,
> > +                    hart_mask, 0, 0, 0, 0, 0);
> >  }
> >  EXPORT_SYMBOL(sbi_remote_fence_i);
> > 
> > @@ -156,8 +255,8 @@ void sbi_remote_sfence_vma(const unsigned long
> > *hart_mask,
> >                                          unsigned long start,
> >                                          unsigned long size)
> >  {
> > -       sbi_ecall(SBI_EXT_0_1_REMOTE_SFENCE_VMA, 0,
> > -                       (unsigned long)hart_mask, start, size, 0,
> > 0, 0);
> > +       __sbi_rfence(SBI_EXT_0_1_REMOTE_SFENCE_VMA, 0,
> > +                    hart_mask, 0, start, size, 0, 0);
> >  }
> >  EXPORT_SYMBOL(sbi_remote_sfence_vma);
> > 
> > @@ -177,8 +276,8 @@ void sbi_remote_sfence_vma_asid(const unsigned
> > long *hart_mask,
> >                                               unsigned long size,
> >                                               unsigned long asid)
> >  {
> > -       sbi_ecall(SBI_EXT_0_1_REMOTE_SFENCE_VMA_ASID, 0,
> > -                       (unsigned long)hart_mask, start, size,
> > asid, 0, 0);
> > +       __sbi_rfence(SBI_EXT_0_1_REMOTE_SFENCE_VMA_ASID, 0,
> > +                    hart_mask, 0, start, size, asid, 0);
> >  }
> >  EXPORT_SYMBOL(sbi_remote_sfence_vma_asid);
> > 
> > @@ -254,8 +353,15 @@ int __init sbi_init(void)
> > 
> >         pr_info("SBI specification v%lu.%lu detected\n",
> >                 sbi_major_version(), sbi_minor_version());
> > -       if (!sbi_spec_is_0_1())
> > +
> > +       if (sbi_spec_is_0_1()) {
> > +               __sbi_set_timer = __sbi_set_timer_v01;
> > +               __sbi_send_ipi  = __sbi_send_ipi_v01;
> > +               __sbi_rfence    = __sbi_rfence_v01;
> > +       } else {
> >                 pr_info("SBI implementation ID=0x%lx
> > Version=0x%lx\n",
> >                         sbi_get_firmware_id(),
> > sbi_get_firmware_version());
> > +       }
> > +
> >         return 0;
> >  }
> > --
> > 2.23.0
> > 
> 
> Minor comments above otherwise looks good.
> 
> Reviewed-by: Anup Patel <anup@brainfault.org>
> 
> Regards,
> Anup

-- 
Regards,
Atish
_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
