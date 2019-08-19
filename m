Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A2A5C94F71
	for <lists+linux-riscv@lfdr.de>; Mon, 19 Aug 2019 22:58:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fFulFGSMi96wdBeZIlkD7KPLS1FYurzAIn1t04VISv8=; b=kQqHWSreU8Hbpc
	7cKojGJZfr5b8LLkJH9hp6HcMZv9pF+fy7r2KVtcTN/HM9Q2QWggheFLqcOjH9h6az/E8TkEhaf5m
	OTEV79n3M9ySs1cPRcBKZO1RqgfmOrnSr+GLbb+ZP0U6sL7dUCvtI2D6Nu1hFCaBExQcTods8gB23
	BrwdJVLzxE1adW7p+PjBJwPY7hQPx8nNAeDyAeu5bMfFeKqZa2ijGI16mpyFXXxP1E6Ux0gGtPPMj
	ryrN8yy6QAgzv73FPsfpLw8OkTj9rX1a5o2wkSxISJn9t2DR1FYBgif3nATdn2+5UOFvp+2iSA29G
	VaIMUsLEbQuYS89ZJu7g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzoiy-0005UH-St; Mon, 19 Aug 2019 20:57:57 +0000
Received: from mail-by2nam01on0712.outbound.protection.outlook.com
 ([2a01:111:f400:fe42::712]
 helo=NAM01-BY2-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzoid-0005Fm-UV; Mon, 19 Aug 2019 20:57:37 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=bGz4W9u+/50ifh/XazO3SsJDsdYXcV0ub1dmfkoaZkrmCZumDMfyTWWiT/rCAG9y2Ohhe/b19HWRKD8YyEzcSdyWFw4M2/k5sk2VvuM1QuSOW4TqhYV8CJSRuQqd0u5WabkghdQSYHQRyAKD5J6/98ZsbeYbOa8mUgI9lRcnEC43zxXgp6PaKgtfer7rHRtzIlaecvBDcl2SGL4ijfD2324+8jz5ch+OV/2qn9TILMjwtwcUPQTKFItYqPqGFvwgDPPNZcGDhmxKzqJlq/+4lXxGOAibOaSm/MplXnTI35ax6Kl3y6diRe0luZe8/XeJ8ut26/rkH+rM4mzdg2NYdA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=sQlemvDaibl3TmaUoytPX70nix/LzsjtaZ1/LsbuUDQ=;
 b=F77d5PqBjjR3NragXVyVzF+8IkCwFqeHS39abnfMgapxqGRsW9ukpD9zzSEVUDMQ/jvJ8vtbwTapkx8jmMyooGsjxmyJ6feHFSCHU4uyyYGB2TuhSSrPr2+1UDkRWA+BFtV2bXItHCx641szKLf8rx1CgmYnMcvH9JIdiURutWM9ff9gTPnYBiVbM4x0My2mjjRWGh8Z5MBvyc+59MRB0n/ebVvDytQWcjhq7QegUhj8ZAqF4n5V2GVJMgo1Ew9oAoY5GxvNq4v6FveJxHGWet+WCpK1Igjfc636zVP6GO+f66TXXxn2dPV25V8G0Qy8fjwKPNs5Zgn60y7DjItg4Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wavecomp.com; dmarc=pass action=none header.from=mips.com;
 dkim=pass header.d=mips.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wavecomp.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=sQlemvDaibl3TmaUoytPX70nix/LzsjtaZ1/LsbuUDQ=;
 b=vQ/3pUFl5pl4EUYYaAjWg0jq9iLtomWR7q2NzSLd8KleB3fGL4Kf68+gNkERCR82HHTgHcJ3jmVtdMwBtxwKYn3CRheLwhUqHgXa2RA7zB/l6Vqrg1soikbidi4Hc0Eqd6Q3wYn9MPQsHUlsA7C2DQENfza+mdqBZZVqVoiJd3o=
Received: from MWHPR2201MB1277.namprd22.prod.outlook.com (10.172.60.12) by
 MWHPR2201MB1214.namprd22.prod.outlook.com (10.174.161.147) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2178.18; Mon, 19 Aug 2019 20:57:30 +0000
Received: from MWHPR2201MB1277.namprd22.prod.outlook.com
 ([fe80::f566:bf1f:dcd:862c]) by MWHPR2201MB1277.namprd22.prod.outlook.com
 ([fe80::f566:bf1f:dcd:862c%10]) with mapi id 15.20.2178.018; Mon, 19 Aug 2019
 20:57:30 +0000
From: Paul Burton <paul.burton@mips.com>
To: Christoph Hellwig <hch@lst.de>
Subject: Re: [PATCH 04/26] mips: remove ioremap_cachable
Thread-Topic: [PATCH 04/26] mips: remove ioremap_cachable
Thread-Index: AQHVVtC3NrUy1/60K0Ou3aE6SqmWcg==
Date: Mon, 19 Aug 2019 20:57:30 +0000
Message-ID: <20190819205722.4eir2edy6qgtgarl@pburton-laptop>
References: <20190817073253.27819-1-hch@lst.de>
 <20190817073253.27819-5-hch@lst.de>
In-Reply-To: <20190817073253.27819-5-hch@lst.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: LO2P123CA0023.GBRP123.PROD.OUTLOOK.COM
 (2603:10a6:600:a6::35) To MWHPR2201MB1277.namprd22.prod.outlook.com
 (2603:10b6:301:18::12)
user-agent: NeoMutt/20180716
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=pburton@wavecomp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [2a02:c7f:5e65:9900:8519:dc48:d16b:70fc]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 9c641ce4-c757-4855-8ea6-08d724e7d94d
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:MWHPR2201MB1214; 
x-ms-traffictypediagnostic: MWHPR2201MB1214:
x-microsoft-antispam-prvs: <MWHPR2201MB1214CEE95E7DDEFA250FDB2FC1A80@MWHPR2201MB1214.namprd22.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6108;
x-forefront-prvs: 0134AD334F
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(7916004)(136003)(376002)(346002)(39830400003)(366004)(396003)(199004)(189003)(71200400001)(8936002)(71190400001)(5660300002)(486006)(1076003)(8676002)(44832011)(6246003)(76176011)(81156014)(81166006)(476003)(256004)(66946007)(42882007)(446003)(14454004)(64756008)(66446008)(66556008)(478600001)(7736002)(305945005)(4326008)(386003)(25786009)(6506007)(11346002)(186003)(46003)(316002)(102836004)(66476007)(33716001)(54906003)(58126008)(6436002)(229853002)(6916009)(53936002)(7416002)(52116002)(6512007)(9686003)(6486002)(99286004)(2906002)(6116002);
 DIR:OUT; SFP:1102; SCL:1; SRVR:MWHPR2201MB1214;
 H:MWHPR2201MB1277.namprd22.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: wavecomp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: dV5mX8Pkr7io2t7Y4ptazUid5uXLcd1UBG1s8OB1iX7EfIpmwYRnxosRjB4LPEuf2aK6uYDRQyp3dJs9e92YsCag7SS46KiQIJbIs+xQf+X8AorBt+ClHaEVCD7ZJaKLLsK3BIu7HFM1fPLPFZYo9THzyC9l4isY5g+3SOqRd/PbHXxUZ2uSgAoDnFmA680Ikl/P2i1gv3Pq8U/+3zr5m9Se1heQNHNW9W+IpGDnSPoGZOheeQ1j1UyNjGTZ4d/ErxRt/oTakJHM26tn5F/e3EyR6w/SfiyXxgkxjzOiIVN/b0Qwc0Q4NwrF6c3sEnhjWrphN8eeZ8tYGK+3E8XLhe+j80tJ3Xkjkkm9LpWxh8NtiS6ZHs+RZNPPFMYIRwC+tWYw1I0HPisjb3DBeEEY9hu4JK07d0TBFPfz0jEA40s=
x-ms-exchange-transport-forked: True
Content-ID: <F7A01E6E65132543B693A9F6442F8662@namprd22.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: mips.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9c641ce4-c757-4855-8ea6-08d724e7d94d
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Aug 2019 20:57:30.3016 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 463607d3-1db3-40a0-8a29-970c56230104
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: qJQF+IhT4z5pqGUgbfafaPiHTxqFNEqH6R6Z4I+k8rb9DobUqivCvM1ix+ODt4H/DJNJU2Hcxxg3SjfiBemtkw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR2201MB1214
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190819_135736_021306_72D0372B 
X-CRM114-Status: GOOD (  14.79  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe42:0:0:0:712 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: "linux-ia64@vger.kernel.org" <linux-ia64@vger.kernel.org>,
 "linux-sh@vger.kernel.org" <linux-sh@vger.kernel.org>,
 Guo Ren <guoren@kernel.org>,
 "sparclinux@vger.kernel.org" <sparclinux@vger.kernel.org>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>,
 Vincent Chen <deanbo422@gmail.com>,
 "linux-arch@vger.kernel.org" <linux-arch@vger.kernel.org>,
 "linux-s390@vger.kernel.org" <linux-s390@vger.kernel.org>,
 "linux-hexagon@vger.kernel.org" <linux-hexagon@vger.kernel.org>,
 "x86@kernel.org" <x86@kernel.org>,
 "linux-snps-arc@lists.infradead.org" <linux-snps-arc@lists.infradead.org>,
 "linux-xtensa@linux-xtensa.org" <linux-xtensa@linux-xtensa.org>,
 Arnd Bergmann <arnd@arndb.de>,
 "linux-m68k@lists.linux-m68k.org" <linux-m68k@lists.linux-m68k.org>,
 "openrisc@lists.librecores.org" <openrisc@lists.librecores.org>,
 Greentime Hu <green.hu@gmail.com>,
 "linux-mtd@lists.infradead.org" <linux-mtd@lists.infradead.org>,
 Guan Xuetao <gxt@pku.edu.cn>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Michal Simek <monstr@monstr.eu>,
 "linux-parisc@vger.kernel.org" <linux-parisc@vger.kernel.org>,
 "linux-mips@vger.kernel.org" <linux-mips@vger.kernel.org>,
 "linux-alpha@vger.kernel.org" <linux-alpha@vger.kernel.org>,
 "nios2-dev@lists.rocketboards.org" <nios2-dev@lists.rocketboards.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Hi Christoph,

On Sat, Aug 17, 2019 at 09:32:31AM +0200, Christoph Hellwig wrote:
> Just define ioremap_cache directly.
> 
> Signed-off-by: Christoph Hellwig <hch@lst.de>

Acked-by: Paul Burton <paul.burton@mips.com>

Thanks,
    Paul

> ---
>  arch/mips/include/asm/io.h | 7 +++----
>  1 file changed, 3 insertions(+), 4 deletions(-)
> 
> diff --git a/arch/mips/include/asm/io.h b/arch/mips/include/asm/io.h
> index 97a280640daf..c02db986ddf5 100644
> --- a/arch/mips/include/asm/io.h
> +++ b/arch/mips/include/asm/io.h
> @@ -262,11 +262,11 @@ static inline void __iomem *ioremap_prot(phys_addr_t offset,
>  #define ioremap_uc ioremap_nocache
>  
>  /*
> - * ioremap_cachable -	map bus memory into CPU space
> + * ioremap_cache -	map bus memory into CPU space
>   * @offset:	    bus address of the memory
>   * @size:	    size of the resource to map
>   *
> - * ioremap_nocache performs a platform specific sequence of operations to
> + * ioremap_cache performs a platform specific sequence of operations to
>   * make bus memory CPU accessible via the readb/readw/readl/writeb/
>   * writew/writel functions and the other mmio helpers. The returned
>   * address is not guaranteed to be usable directly as a virtual
> @@ -276,9 +276,8 @@ static inline void __iomem *ioremap_prot(phys_addr_t offset,
>   * the CPU.  Also enables full write-combining.	 Useful for some
>   * memory-like regions on I/O busses.
>   */
> -#define ioremap_cachable(offset, size)					\
> +#define ioremap_cache(offset, size)					\
>  	__ioremap_mode((offset), (size), _page_cachable_default)
> -#define ioremap_cache ioremap_cachable
>  
>  /*
>   * ioremap_wc     -   map bus memory into CPU space
> -- 
> 2.20.1
> 

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
