Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4912E10A3F9
	for <lists+linux-riscv@lfdr.de>; Tue, 26 Nov 2019 19:13:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KGifmEbijKLMZYF/cOT+3hiLIaCpenh8cR9A/SOn98Y=; b=Yf2sd9WA7mUoap
	hDeD5eMe6IAPhvVtrAlr96w4wDxYRJNFmQsVCKrXhWN8WY2HRz0UHvAH5e5+c/neiE7VIYSCRGuGE
	INVSBT4YY+VMdAKA8JrzBMaybiIJbKT5RxKZ7FxSAzo5CQ6vzcEMb+eqGXe55xlEGWBgBrRH/jJ5W
	BVTWgWl6E2lBy9wZxGKWubs08NAwukujTBH2uGdljT6LV44KW88aQ081k4Sf2fvCgbUslU+Cnb7B+
	vCsNL4YKOorjxITaGjxH0/6YaUTB7KjAXN8LJ2VqVPrJvW2ESbtF4956UCVElE3/CgmNEmWsx+Yl9
	/NAL09ltsiJFnV+bcKRQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZfL2-0004i0-2J; Tue, 26 Nov 2019 18:13:24 +0000
Received: from esa1.hgst.iphmx.com ([68.232.141.245])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZfKx-0004gx-WB
 for linux-riscv@lists.infradead.org; Tue, 26 Nov 2019 18:13:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1574791999; x=1606327999;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=HwU3NEOaWmgPueWlMa2F3WzaTJocOsYW65qIsdQ0M2k=;
 b=Mn6mS1o8ODg5zQwXPxLpT9ugCPo7CyyjdeM3i+pdpp22rQupBrZJ0Gle
 FivKIWgsQNiLhfc0g6+vZhBUqA5rftON/Y7ncyOjoYBKRnnY41mLPKf6C
 H2BQ2+8RisUH0pxa91VE173kAyEvauVWy5YAL+41vlnPZpplL5FTJwuWH
 17J56UO2R2PlFj3JlTWFiQAXrRqk5RPzM8SLzuVmbjfHSUX1cLQJH4QjB
 BZJpHOIpqhcXFt81gsL6TrFj9iKN1CUmmCZQG+0R+Hbsbc7F6sBZh7GtU
 vU37YSAVBW8UAo6p4nzYUGpt5M5YqhhKSH5449z5MC7bxTxBfnB1+h1PP w==;
IronPort-SDR: nO1ZycyOkefBIbM4kwvoJSQHv3ZAAXTkFDY6U3sXOtJT1QiIOIndUKEXKNRzcGfxP+9Me+ZgS2
 2FLNRN4NGf61pf7bjNS8snNjFiPjHTCNOmWQz+S9pmoXXPcNNRkeZBauCDdFjGlVwSlG19RzTn
 eaU/fnD/E1Z/+3mBShOxTsDFj+xFS0tCQNCgdSRXrtMh8xQwu/EWDh1KjkDh29YNyEWo0nOelj
 YC6Dr7bjsHbV8P+txnLuc2ZJjktKCKT1aD35hx+CDCTjvEq7ROEyA7H/JNnAMvbQlSsfRUmpEC
 y2w=
X-IronPort-AV: E=Sophos;i="5.69,246,1571673600"; d="scan'208";a="231495114"
Received: from mail-co1nam05lp2052.outbound.protection.outlook.com (HELO
 NAM05-CO1-obe.outbound.protection.outlook.com) ([104.47.48.52])
 by ob1.hgst.iphmx.com with ESMTP; 27 Nov 2019 02:13:17 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=dIXNoJUWUr6lPuCF0iiqezetNhtRg1s1sbIfuYYqpbvJMgg/63uv/bdJDBz7tn3t03oO6u1NwMIy5D8Mxqfk6Y0VPD8xnBLn4EyTZYwvQxBy3rlgRjLnz7Z5z0/kHBseKnonsJ5qA/TpekPpRJfWDNpjo6+iJyr4IxmYjF2YW54h+tag0r2ZICBe7xOtOea0qEeakEQH2PqXO0U3yOY1WbrsllPMM81bNnJ9nvE5vC5yiK6ba0xw4Jg1RRhVXy3cTjMKGp67RsAIb8sV9F+OVPeFcR7f2pXiBioXXpBAuOAS4KBrZYpNBLibKAH4xhiO7Bcpe9Tonh40F08bYSy/ZQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=HwU3NEOaWmgPueWlMa2F3WzaTJocOsYW65qIsdQ0M2k=;
 b=N1nd8WbUvkvHCxTnr6BI5Zfh4T8sGJjAwfxowWKoQd/785CUcHyV9xn2HgF20vXgE7klFkQjrmpExPDCwo+4HoEY/042E5pnKFAcTmrTp16uu2XFSuuacumwzw7gqJ/sWlrPpBB7lf16J1SqmEEYij7jwGY48q7qAnzKzwQHRmqR2lF5sZL+sJiqmPVpQ76N6NuraZWh1fFurcw9ULlT0XErHDejktUZj03IARSgULOKAGo8UOw+JFdyeQTXqzkp+SzCG4Ye2oHCyXTiRmxTMJC41Lv0uoq9FZx/UBaOL87GWc6cdrCvX65AlpHx+i4H51VHlkoxIDvyrw8UV8aAJg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=HwU3NEOaWmgPueWlMa2F3WzaTJocOsYW65qIsdQ0M2k=;
 b=Pk8oxcjP4OLzVwo1V+BFVICNbeEu6aLICiWiQsx8haR7a+gz71c6e64FapicLH3JGicL93qMJjLljcKK86GWPN3KDYm9vYpOj4UEqJdEEu1BpGF1datjmwqzmnR+1Rqc0W7uX5A3Ft+Oo8y9mCwOx00xVSkhBkjreiDkfStHOjc=
Received: from BYAPR04MB3990.namprd04.prod.outlook.com (52.135.215.29) by
 BYAPR04MB5447.namprd04.prod.outlook.com (20.178.48.203) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2474.19; Tue, 26 Nov 2019 18:13:16 +0000
Received: from BYAPR04MB3990.namprd04.prod.outlook.com
 ([fe80::1d22:29b6:df03:86f7]) by BYAPR04MB3990.namprd04.prod.outlook.com
 ([fe80::1d22:29b6:df03:86f7%3]) with mapi id 15.20.2474.023; Tue, 26 Nov 2019
 18:13:16 +0000
From: Atish Patra <Atish.Patra@wdc.com>
To: "anup@brainfault.org" <anup@brainfault.org>
Subject: Re: [PATCH v4 4/4] RISC-V: Implement new SBI v0.2 extensions
Thread-Topic: [PATCH v4 4/4] RISC-V: Implement new SBI v0.2 extensions
Thread-Index: AQHVpAh85M7SrgEwyUWIYJjqkdq/2Kec2I4AgADpuIA=
Date: Tue, 26 Nov 2019 18:13:16 +0000
Message-ID: <717e83cb287568db9290d828d9fea783b5b84f01.camel@wdc.com>
References: <20191126032033.14825-1-atish.patra@wdc.com>
 <20191126032033.14825-5-atish.patra@wdc.com>
 <CAAhSdy3DXe_iCD9QanbQwoJZxwKcUFvE=gGSODHh=PmWG3C9+g@mail.gmail.com>
In-Reply-To: <CAAhSdy3DXe_iCD9QanbQwoJZxwKcUFvE=gGSODHh=PmWG3C9+g@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Atish.Patra@wdc.com; 
x-originating-ip: [2601:646:8280:fdf0:69be:1cca:a557:65ea]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 864044b4-303e-468c-8b05-08d7729c4f65
x-ms-traffictypediagnostic: BYAPR04MB5447:
x-microsoft-antispam-prvs: <BYAPR04MB544760151BADD63CE6A3D02FFA450@BYAPR04MB5447.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:308;
x-forefront-prvs: 0233768B38
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(346002)(396003)(366004)(376002)(136003)(39860400002)(189003)(199004)(51914003)(6436002)(102836004)(6116002)(478600001)(305945005)(118296001)(64756008)(66556008)(66446008)(53546011)(316002)(229853002)(5640700003)(2351001)(6486002)(46003)(71200400001)(71190400001)(6916009)(7736002)(76116006)(66476007)(186003)(11346002)(4001150100001)(8936002)(6506007)(6246003)(2501003)(14454004)(30864003)(256004)(5660300002)(4326008)(25786009)(8676002)(36756003)(2906002)(1730700003)(66946007)(54906003)(446003)(86362001)(6512007)(81156014)(76176011)(99286004)(2616005)(81166006);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BYAPR04MB5447;
 H:BYAPR04MB3990.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: gRGbFv4RRixR3w0NZ2tSYjEQ3daZhn2lUMBC3P3P2xCIrs+pV0RDb2vG/3knafKG1iuJ9hOxeYWna3mgg2MbVKkmR/MIwCrEaKHc8/vBNZgv8Pj+38BE6ntADmRdd+02rKXTIYzCDqOcazBayvhadyq4eIlx3dWs/bcvNMo+Um2rq1fuy2Lj0JJDl8a+penbuvrvOVrm9mD+ArPo74L5idvkczQnX6L83ViZeDZl5KdG+VzwE+xDPURhzW0OZTFy1s09agIVEILCd1ZnAEkcyfJ2Fss7gm91YMoe+wpSKHVMT6/UDn6J5FOJwtOv+YsMXGlysaTtCEsSw0ozeamHsyKzpp77Pc/XxpvLc/Ps6quUpvqbM9z6PRnFNj7PBjIEScDRIZLJv9vv8cAFkU4kF67Y2ucvTNgYx0/AiYM02Z+gQkk/ucsghGX5R4aDrjKl
x-ms-exchange-transport-forked: True
Content-ID: <BC2F783E1CDF6045AD5C0B74AE944CA9@namprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 864044b4-303e-468c-8b05-08d7729c4f65
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Nov 2019 18:13:16.4966 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 8zWf8DV6RsSE3bszx+RL8/uHEXfIx+cVXeKNpftnEk8bqNkmjK3wnQun4vrvPpVUqNVjgzww5i/ro62Fw7Q/Aw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR04MB5447
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191126_101320_098541_5F44A3BC 
X-CRM114-Status: GOOD (  20.31  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.141.245 listed in list.dnswl.org]
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

On Tue, 2019-11-26 at 09:46 +0530, Anup Patel wrote:
> On Tue, Nov 26, 2019 at 8:50 AM Atish Patra <atish.patra@wdc.com>
> wrote:
> > Few v0.1 SBI calls are being replaced by new SBI calls that follows
> > v0.2 calling convention. The specification changes can be found at
> > 
> > riscv/riscv-sbi-doc#27
> > 
> > Implement the replacement extensions and few additional new SBI
> > function calls that makes way for a better SBI interface in future.
> > 
> > Signed-off-by: Atish Patra <atish.patra@wdc.com>
> > ---
> >  arch/riscv/include/asm/sbi.h |  35 +++++++
> >  arch/riscv/kernel/sbi.c      | 197
> > ++++++++++++++++++++++++++++++++++-
> >  2 files changed, 229 insertions(+), 3 deletions(-)
> > 
> > diff --git a/arch/riscv/include/asm/sbi.h
> > b/arch/riscv/include/asm/sbi.h
> > index cc82ae63f8e0..54ba9eebec11 100644
> > --- a/arch/riscv/include/asm/sbi.h
> > +++ b/arch/riscv/include/asm/sbi.h
> > @@ -22,6 +22,9 @@ enum sbi_ext_id {
> >         SBI_EXT_0_1_SHUTDOWN = 0x8,
> >  #endif
> >         SBI_EXT_BASE = 0x10,
> > +       SBI_EXT_TIME = 0x54494D45,
> > +       SBI_EXT_IPI = 0x735049,
> > +       SBI_EXT_RFENCE = 0x52464E43,
> >  };
> > 
> >  enum sbi_ext_base_fid {
> > @@ -34,6 +37,24 @@ enum sbi_ext_base_fid {
> >         SBI_BASE_GET_MIMPID,
> >  };
> > 
> > +enum sbi_ext_time_fid {
> > +       SBI_EXT_TIME_SET_TIMER = 0,
> > +};
> > +
> > +enum sbi_ext_ipi_fid {
> > +       SBI_EXT_IPI_SEND_IPI = 0,
> > +};
> > +
> > +enum sbi_ext_rfence_fid {
> > +       SBI_EXT_RFENCE_REMOTE_FENCE_I = 0,
> > +       SBI_EXT_RFENCE_REMOTE_SFENCE_VMA,
> > +       SBI_EXT_RFENCE_REMOTE_SFENCE_VMA_ASID,
> > +       SBI_EXT_RFENCE_REMOTE_HFENCE_GVMA,
> > +       SBI_EXT_RFENCE_REMOTE_HFENCE_GVMA_VMID,
> > +       SBI_EXT_RFENCE_REMOTE_HFENCE_VVMA,
> > +       SBI_EXT_RFENCE_REMOTE_HFENCE_VVMA_ASID,
> > +};
> > +
> >  #define SBI_SPEC_VERSION_DEFAULT       0x1
> >  #define SBI_SPEC_VERSION_MAJOR_OFFSET  24
> >  #define SBI_SPEC_VERSION_MAJOR_MASK    0x7f
> > @@ -74,6 +95,20 @@ void sbi_remote_sfence_vma_asid(const unsigned
> > long *hart_mask,
> >                                 unsigned long start,
> >                                 unsigned long size,
> >                                 unsigned long asid);
> > +int sbi_remote_hfence_gvma(const unsigned long *hart_mask,
> > +                          unsigned long start,
> > +                          unsigned long size);
> > +int sbi_remote_hfence_gvma_vmid(const unsigned long *hart_mask,
> > +                               unsigned long start,
> > +                               unsigned long size,
> > +                               unsigned long vmid);
> > +int sbi_remote_hfence_vvma(const unsigned long *hart_mask,
> > +                          unsigned long start,
> > +                          unsigned long size);
> > +int sbi_remote_hfence_vvma_asid(const unsigned long *hart_mask,
> > +                               unsigned long start,
> > +                               unsigned long size,
> > +                               unsigned long asid);
> >  int sbi_probe_extension(long ext);
> > 
> >  /* Check if current SBI specification version is 0.1 or not */
> > diff --git a/arch/riscv/kernel/sbi.c b/arch/riscv/kernel/sbi.c
> > index 8574de1074c4..74b3155b570f 100644
> > --- a/arch/riscv/kernel/sbi.c
> > +++ b/arch/riscv/kernel/sbi.c
> > @@ -205,6 +205,101 @@ static int __sbi_rfence_v01(unsigned long
> > ext, unsigned long fid,
> >  }
> >  #endif /* CONFIG_RISCV_SBI_V01 */
> > 
> > +static void __sbi_set_timer_v02(uint64_t stime_value)
> > +{
> > +#if __riscv_xlen == 32
> > +       sbi_ecall(SBI_EXT_TIME, SBI_EXT_TIME_SET_TIMER,
> > stime_value,
> > +                         stime_value >> 32, 0, 0, 0, 0);
> > +#else
> > +       sbi_ecall(SBI_EXT_TIME, SBI_EXT_TIME_SET_TIMER,
> > stime_value, 0,
> > +                 0, 0, 0, 0);
> > +#endif
> > +}
> > +
> > +static int __sbi_send_ipi_v02(const unsigned long *hart_mask)
> > +{
> > +       unsigned long hmask_val;
> > +       struct sbiret ret = {0};
> > +       int result;
> > +
> > +       if (!hart_mask)
> > +               hmask_val = *(cpumask_bits(cpu_online_mask));
> > +       else
> > +               hmask_val = *hart_mask;
> > +
> > +       ret = sbi_ecall(SBI_EXT_IPI, SBI_EXT_IPI_SEND_IPI,
> > hmask_val,
> > +                       0, 0, 0, 0, 0);
> > +       if (ret.error) {
> > +               pr_err("%s: failed with error [%d]\n", __func__,
> > +                       sbi_err_map_linux_errno(ret.error));
> > +               result = ret.error;
> > +       } else
> > +               result = ret.value;
> > +
> > +       return result;
> > +}
> > +
> > +static int __sbi_rfence_v02(unsigned long extid, unsigned long
> > fid,
> > +                            const unsigned long *hart_mask,
> > +                            unsigned long hbase, unsigned long
> > start,
> > +                            unsigned long size, unsigned long
> > arg4,
> > +                            unsigned long arg5)
> > +{
> > +       unsigned long hmask_val;
> > +       struct sbiret ret = {0};
> > +       int result;
> > +       unsigned long ext = SBI_EXT_RFENCE;
> > +
> > +       if (!hart_mask)
> > +               hmask_val = *(cpumask_bits(cpu_online_mask));
> > +       else
> > +               hmask_val = *hart_mask;
> > +
> > +       switch (fid) {
> > +       case SBI_EXT_RFENCE_REMOTE_FENCE_I:
> > +               ret = sbi_ecall(ext, fid, hmask_val, 0, 0, 0, 0,
> > 0);
> > +               break;
> > +       case SBI_EXT_RFENCE_REMOTE_SFENCE_VMA:
> > +               ret = sbi_ecall(ext, fid, hmask_val, 0, start,
> > +                               size, 0, 0);
> > +               break;
> > +       case SBI_EXT_RFENCE_REMOTE_SFENCE_VMA_ASID:
> > +               ret = sbi_ecall(ext, fid, hmask_val, 0, start,
> > +                               size, arg4, 0);
> > +               break;
> > +       /*TODO: Handle non zero hbase cases */
> > +       case SBI_EXT_RFENCE_REMOTE_HFENCE_GVMA:
> > +               ret = sbi_ecall(ext, fid, hmask_val, 0, start,
> > +                               size, 0, 0);
> > +               break;
> > +       case SBI_EXT_RFENCE_REMOTE_HFENCE_GVMA_VMID:
> > +               ret = sbi_ecall(ext, fid, hmask_val, 0, start,
> > +                               size, arg4, 0);
> > +               break;
> > +       case SBI_EXT_RFENCE_REMOTE_HFENCE_VVMA:
> > +               ret = sbi_ecall(ext, fid, hmask_val, 0, start,
> > +                               size, 0, 0);
> > +               break;
> > +       case SBI_EXT_RFENCE_REMOTE_HFENCE_VVMA_ASID:
> > +               ret = sbi_ecall(ext, fid, hmask_val, 0, start,
> > +                               size, arg4, 0);
> > +               break;
> > +       default:
> > +               pr_err("unknown function ID [%lu] for SBI extension
> > [%lu]\n",
> > +                       fid, ext);
> > +               result = -EINVAL;
> > +       }
> > +
> > +       if (ret.error) {
> > +               pr_err("%s: failed with error [%d]\n", __func__,
> > +                       sbi_err_map_linux_errno(ret.error));
> > +               result = ret.error;
> > +       } else
> > +               result = ret.value;
> > +
> > +       return result;
> > +}
> > +
> >  /**
> >   * sbi_set_timer() - Program the timer for next timer event.
> >   * @stime_value: The value after which next timer event should
> > fire.
> > @@ -237,7 +332,7 @@ EXPORT_SYMBOL(sbi_send_ipi);
> >   */
> >  void sbi_remote_fence_i(const unsigned long *hart_mask)
> >  {
> > -       __sbi_rfence(SBI_EXT_0_1_REMOTE_FENCE_I, 0,
> > +       __sbi_rfence(SBI_EXT_0_1_REMOTE_FENCE_I,
> > SBI_EXT_RFENCE_REMOTE_FENCE_I,
> >                      hart_mask, 0, 0, 0, 0, 0);
> >  }
> >  EXPORT_SYMBOL(sbi_remote_fence_i);
> > @@ -255,7 +350,8 @@ void sbi_remote_sfence_vma(const unsigned long
> > *hart_mask,
> >                                          unsigned long start,
> >                                          unsigned long size)
> >  {
> > -       __sbi_rfence(SBI_EXT_0_1_REMOTE_SFENCE_VMA, 0,
> > +       __sbi_rfence(SBI_EXT_0_1_REMOTE_SFENCE_VMA,
> > +                    SBI_EXT_RFENCE_REMOTE_SFENCE_VMA,
> >                      hart_mask, 0, start, size, 0, 0);
> >  }
> >  EXPORT_SYMBOL(sbi_remote_sfence_vma);
> > @@ -276,11 +372,93 @@ void sbi_remote_sfence_vma_asid(const
> > unsigned long *hart_mask,
> >                                               unsigned long size,
> >                                               unsigned long asid)
> >  {
> > -       __sbi_rfence(SBI_EXT_0_1_REMOTE_SFENCE_VMA_ASID, 0,
> > +       __sbi_rfence(SBI_EXT_0_1_REMOTE_SFENCE_VMA_ASID,
> > +                    SBI_EXT_RFENCE_REMOTE_SFENCE_VMA_ASID,
> >                      hart_mask, 0, start, size, asid, 0);
> >  }
> >  EXPORT_SYMBOL(sbi_remote_sfence_vma_asid);
> > 
> > +/**
> > + * sbi_remote_hfence_gvma() - Execute HFENCE.GVMA instructions on
> > given remote
> > + *                        harts for the specified guest physical
> > address range.
> > + * @hart_mask: A cpu mask containing all the target harts.
> > + * @start: Start of the guest physical address
> > + * @size: Total size of the guest physical address range.
> > + *
> > + * Return: None
> > + */
> > +int sbi_remote_hfence_gvma(const unsigned long *hart_mask,
> > +                                        unsigned long start,
> > +                                        unsigned long size)
> > +{
> > +       return __sbi_rfence(SBI_EXT_RFENCE,
> > SBI_EXT_RFENCE_REMOTE_HFENCE_GVMA,
> > +                           hart_mask, 0, start, size, 0, 0);
> > +}
> > +EXPORT_SYMBOL_GPL(sbi_remote_hfence_gvma);
> > +
> > +/**
> > + * sbi_remote_hfence_gvma_vmid() - Execute HFENCE.GVMA
> > instructions on given
> > + * remote harts for a guest physical address range belonging to a
> > specific VMID.
> > + *
> > + * @hart_mask: A cpu mask containing all the target harts.
> > + * @start: Start of the guest physical address
> > + * @size: Total size of the guest physical address range.
> > + * @vmid: The value of guest ID (VMID).
> > + *
> > + * Return: 0 if success, Error otherwise.
> > + */
> > +int sbi_remote_hfence_gvma_vmid(const unsigned long *hart_mask,
> > +                                             unsigned long start,
> > +                                             unsigned long size,
> > +                                             unsigned long vmid)
> > +{
> > +       return __sbi_rfence(SBI_EXT_RFENCE,
> > +                           SBI_EXT_RFENCE_REMOTE_HFENCE_GVMA_VMID,
> > +                           hart_mask, 0, start, size, vmid, 0);
> > +}
> > +EXPORT_SYMBOL(sbi_remote_hfence_gvma_vmid);
> > +
> > +/**
> > + * sbi_remote_hfence_vvma() - Execute HFENCE.VVMA instructions on
> > given remote
> > + *                          harts for the current guest virtual
> > address range.
> > + * @hart_mask: A cpu mask containing all the target harts.
> > + * @start: Start of the current guest virtual address
> > + * @size: Total size of the current guest virtual address range.
> > + *
> > + * Return: None
> > + */
> > +int sbi_remote_hfence_vvma(const unsigned long *hart_mask,
> > +                                        unsigned long start,
> > +                                        unsigned long size)
> > +{
> > +       return __sbi_rfence(SBI_EXT_RFENCE,
> > SBI_EXT_RFENCE_REMOTE_HFENCE_VVMA,
> > +                           hart_mask, 0, start, size, 0, 0);
> > +}
> > +EXPORT_SYMBOL(sbi_remote_hfence_vvma);
> > +
> > +/**
> > + * sbi_remote_hfence_vvma_asid() - Execute HFENCE.VVMA
> > instructions on given
> > + * remote harts for current guest virtual address range belonging
> > to a specific
> > + * ASID.
> > + *
> > + * @hart_mask: A cpu mask containing all the target harts.
> > + * @start: Start of the current guest virtual address
> > + * @size: Total size of the current guest virtual address range.
> > + * @asid: The value of address space identifier (ASID).
> > + *
> > + * Return: None
> > + */
> > +int sbi_remote_hfence_vvma_asid(const unsigned long *hart_mask,
> > +                                             unsigned long start,
> > +                                             unsigned long size,
> > +                                             unsigned long asid)
> > +{
> > +       return __sbi_rfence(SBI_EXT_RFENCE,
> > +                           SBI_EXT_RFENCE_REMOTE_HFENCE_VVMA_ASID,
> > +                           hart_mask, 0, start, size, asid, 0);
> > +}
> > +EXPORT_SYMBOL(sbi_remote_hfence_vvma_asid);
> > +
> >  /**
> >   * sbi_probe_extension() - Check if an SBI extension ID is
> > supported or not.
> >   * @extid: The extension ID to be probed.
> > @@ -361,6 +539,19 @@ int __init sbi_init(void)
> >         } else {
> >                 pr_info("SBI implementation ID=0x%lx
> > Version=0x%lx\n",
> >                         sbi_get_firmware_id(),
> > sbi_get_firmware_version());
> > +               if (sbi_probe_extension(SBI_EXT_TIME) > 0)
> > +                       __sbi_set_timer = __sbi_set_timer_v02;
> > +               else
> > +                       __sbi_set_timer =
> > __sbi_set_timer_dummy_warn;
> > +               if (sbi_probe_extension(SBI_EXT_IPI) > 0)
> > +                       __sbi_send_ipi  = __sbi_send_ipi_v02;
> > +               else
> > +                       __sbi_send_ipi = __sbi_send_ipi_dummy_warn;
> > +               if (sbi_probe_extension(SBI_EXT_RFENCE) > 0)
> > +                       __sbi_rfence    = __sbi_rfence_v02;
> > +               else
> > +                       __sbi_rfence    = __sbi_rfence_dummy_warn;
> > +
> >         }
> > 
> >         return 0;
> > --
> > 2.23.0
> > 
> 
> You might want to print whether TIMER, IPI and RFENCE extension
> were detected at boot-time.
> 

Sure. Will do.

> Otherwise, looks good.
> 
> Reviewed-by: Anup Patel <anup@brainfault.org>
> 

Thanks for the review.

> Regards,
> Anup

-- 
Regards,
Atish
_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
