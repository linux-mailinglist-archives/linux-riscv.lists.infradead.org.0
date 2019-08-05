Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 37FF2827A6
	for <lists+linux-riscv@lfdr.de>; Tue,  6 Aug 2019 00:35:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NXkZV3LYoOAQM5V0sFTQSsiIZQlgBaLSDD07quI+4Ys=; b=UdSasqwqBKzvmP
	XNPeqcqmZZ3jphHSoGNhrWkaDu5Fk8TH4+xTkyYoMMQk/YMHWBuy5a5Jg05HoWrvqcXOBXeFJa8wb
	hc3pr3Lx5zKEtYJARn0FgITIrO5XUxF5fpXY0zCXWIeC5wLEi4H/v/JVFYY96FAqXWkq/MekSCLg1
	VheLpPw6ieaL1rSa8FYnJg0cOBRQZvVORXJYqQXjVi49+bRp/74HzX11yf5zQgnsilyVPnvmKi48H
	sYjmKoKVVaQ8srRDh047/NvLdtn4hZ8NDRWGD+8sT/Vv4ZgP8w89tUKNws9c3GraZ3iWeIeZamcBn
	mS2Jb9MDz92QHx0eMjoA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hulZJ-0004MD-JR; Mon, 05 Aug 2019 22:35:05 +0000
Received: from esa5.hgst.iphmx.com ([216.71.153.144])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hulZD-0003l0-LB; Mon, 05 Aug 2019 22:35:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1565044500; x=1596580500;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=Vdk/1cZl9aBI1ir3fjdylp9pasFBi5qS8g3/hdZi0Rw=;
 b=al7TL4fXrDBLKgpMGJ/JQ+kBFVvdyARM29vvY86MswU22eNfQ6bycKoM
 Xo1V1TU0BHo1ESopQmY6ghb9Ggs41Dftfr8xYYwkR1qxafF69NsGOc77R
 GNegj2gJojDdNc1jcBkeGnw7Z4IlUGtDteBSnC1RrniLxUjefcsCBWstU
 cMwcIDOFvKKQf/igbOJxUDC+7zxDdSl64WxLQR98SN1+UuA70mqq+e3Xy
 i3GxWNy3c0q4x3DPo81uSpA8DAvXGMTmYG8IQ5jfLpKFwXJXP6DSspTfj
 cTmFf3USNomvV+Up1lEaTHC+MV/b/xfhrNEp29Hja4S6lHPRd1O0cuRMD g==;
IronPort-SDR: TdbjLk/qHVulcqv0mlNTQKcHqow8YBh8FhDzJN4lXjB406kRIvA8xvgUI2jmcA/iuAYsu1GUQN
 OxyJLeA456KJRlJDk93yQdQxFKlJUhcpq9Xv3CQWYGUqo9br3IbHQazuhhGfSWkvD0SZYKwcOB
 h/MLOL2Ed84xR3F7ZeF4BtRlagq0voLJ9DKji4KCHObOEPbJSONnrJq90F4xNXs89/fBE3CxCs
 HXRb/z5/ikP2YOpjd+K1ZgCkXkOJn2EO+BweMmACfHsYzEEGqH5Q/e74FA4EhV/oP0RZ3PX17l
 AUA=
X-IronPort-AV: E=Sophos;i="5.64,350,1559491200"; d="scan'208";a="116038308"
Received: from mail-cys01nam02lp2050.outbound.protection.outlook.com (HELO
 NAM02-CY1-obe.outbound.protection.outlook.com) ([104.47.37.50])
 by ob1.hgst.iphmx.com with ESMTP; 06 Aug 2019 06:34:56 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Vp0PjRtp+eqPcrxemeBuIwE/gU3MuCs2MAx35XptfHlK7sxGIWzSzIcgdb8iN5BktFxtQX6/qsDa0CzM5eheIsYIisq/efUylqwZJAzAbCdkFp5bogab2OMRgZXXJjHelgy6Yn+RSbe8AaJW5qxAT5l42vkOm10ZU1vuxz539rW/lBTvTzbIcPRziekSGo86JQKewVj/tVFaF15kqyozY4Xqccrok2kwIEusDiPx5Xz2QDFsola4GTJCciSO4rtrKEBYCL09yBKqXy5N+sx1Z9aUaWopnxo+m1HxYVPYV8r8FGMQwfyxFVD/KSUl6E555wwSAQ9NXmC5uutStZLeXw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Vdk/1cZl9aBI1ir3fjdylp9pasFBi5qS8g3/hdZi0Rw=;
 b=QR1cmhQGM+bq88k0DEV/vWX83o/Z1jU0zAoAj4vav9ulqi6d5kgfwi9xH6gd9gp13GRSq9BnFHu/OFNEGvAP9k351V2ELqPm1WDdEbUVrsQZINiRokKZc4/pgzAVnkvwrqkp0n7ZTNo53ndVytaTQUzy5fh0fconVINecERLarysSQhyhkxgW/GxAxVw5DBHN5PqmI8EYGWewPRbfXy5Gk+n2bPLTJ4joS/+VO8+7elXT//Q39d5YjuHYy1WT2/Q265xC6Sw/xoa6GTjtDRXI1h4uMQxMtmSLDtWKYz03rD5pOMzMHI5CUHeLmbX8wbD4DlNQfqtAAs7lfxVDlXb/Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=wdc.com;dmarc=pass action=none header.from=wdc.com;dkim=pass
 header.d=wdc.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Vdk/1cZl9aBI1ir3fjdylp9pasFBi5qS8g3/hdZi0Rw=;
 b=Awjx8rNj5PAoMxUk5PjJHpZ9CK2DrYCXx3nDI+2auvZ1WQSmjb3zzawpuViYUIvKtFjV+IqZey9w3odxUrLKetIM7312yuxja0OdRwa6SRj0pn2+JI7QiTO/qWw4WRxT4zxuPDwiJoJmoslBnlq5HMCpqzk9V6Z27p3tvZdYirM=
Received: from BYAPR04MB3782.namprd04.prod.outlook.com (52.135.214.142) by
 BYAPR04MB5830.namprd04.prod.outlook.com (20.179.58.221) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2136.13; Mon, 5 Aug 2019 22:34:53 +0000
Received: from BYAPR04MB3782.namprd04.prod.outlook.com
 ([fe80::ac9a:967e:70a5:e926]) by BYAPR04MB3782.namprd04.prod.outlook.com
 ([fe80::ac9a:967e:70a5:e926%7]) with mapi id 15.20.2115.005; Mon, 5 Aug 2019
 22:34:53 +0000
From: Atish Patra <Atish.Patra@wdc.com>
To: "anup@brainfault.org" <anup@brainfault.org>, "schwab@suse.de"
 <schwab@suse.de>
Subject: Re: Random memory corruption with v5.2
Thread-Topic: Random memory corruption with v5.2
Thread-Index: AQHVRfuSsQxPefvVWkuKVI3774eLbabiNjEAgACFxKKAASQFgIACwxcqgACBRICABX5VpoAAB0HzgACGHAA=
Date: Mon, 5 Aug 2019 22:34:53 +0000
Message-ID: <45823bccd515273e08bd2e0c634b0b207e60db9c.camel@wdc.com>
References: <mvm8sshcdwc.fsf@suse.de>
 <CAEn-LTpM-0TMxkNNh6nnLH9Bnr9Zm+VFLf=z1y9sER6RXrQooQ@mail.gmail.com>
 <mvm1ry8au3f.fsf@suse.de>
 <alpine.DEB.2.21.9999.1907301709510.4874@viisi.sifive.com>
 <mvmwofw68ji.fsf@suse.de>
 <CAAhSdy0ZPk1So_ieahn5dVaye1WajRmwkYHhSox4FcvuOuZchw@mail.gmail.com>
 <mvmmugn4sd4.fsf@suse.de> <mvmimrb4r5q.fsf@suse.de>
In-Reply-To: <mvmimrb4r5q.fsf@suse.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Atish.Patra@wdc.com; 
x-originating-ip: [199.255.44.250]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 4aa77663-928c-4ae1-206b-08d719f522d7
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:BYAPR04MB5830; 
x-ms-traffictypediagnostic: BYAPR04MB5830:
x-microsoft-antispam-prvs: <BYAPR04MB58302413B68518D79D8342F3FADA0@BYAPR04MB5830.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-forefront-prvs: 01208B1E18
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(136003)(396003)(366004)(376002)(346002)(39860400002)(189003)(199004)(26005)(6512007)(6486002)(186003)(99286004)(478600001)(5660300002)(86362001)(6436002)(14444005)(256004)(102836004)(71200400001)(53936002)(71190400001)(3846002)(6116002)(68736007)(446003)(486006)(476003)(2616005)(11346002)(14454004)(305945005)(6506007)(6246003)(110136005)(66446008)(64756008)(2501003)(8676002)(66476007)(66556008)(66946007)(118296001)(81166006)(76176011)(2906002)(316002)(7736002)(54906003)(66066001)(76116006)(25786009)(81156014)(4326008)(229853002)(36756003)(8936002);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BYAPR04MB5830;
 H:BYAPR04MB3782.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: XbIXPUBKy2hr4EOmxbmFSbok3W8lPXXh76Fa+eQN7isGhYqfpwCPKnEguLvyzt429usGwYmvmcXLGx/7Nm7B+7aZCD/sdRGJ9U2mh6tPiDfOytwbscVNVUUh1mJK1pCNbyzpc4e323BaesHg3Vc3Cr/NXscSCg/fIXRtQLLjhJq/qyX7kulBsoEXSF8ynkHs6HP11bD72KniD2zpM8ztu14BcFCCL+cjv94B61cj+BTCmG48ng2azniS4n1eIU8lV5xwmNySZ9dUaq5IC3gE3/OLOAXyASm5Biz2znN5NHWa6Hb5ZO8A9jXJFqCBgOkoc5dAyMamcjrRc4MFhTgxRvQTHC8x+BBfhr2j4P2gEj2wnzy2PqJrMBL6FrbI3Vxes7b9C+xw6O++6zSwuYgxUlbdagApEbXOiwzc3sr3G5A=
Content-ID: <B27CC744958CDF46AA9A2320DA40F33F@namprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4aa77663-928c-4ae1-206b-08d719f522d7
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Aug 2019 22:34:53.7171 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Atish.Patra@wdc.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR04MB5830
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190805_153459_814183_90956224 
X-CRM114-Status: GOOD (  15.63  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.153.144 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>,
 "david.abdurachmanov@gmail.com" <david.abdurachmanov@gmail.com>,
 "opensbi@lists.infradead.org" <opensbi@lists.infradead.org>,
 "paul.walmsley@sifive.com" <paul.walmsley@sifive.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Mon, 2019-08-05 at 16:34 +0200, Andreas Schwab wrote:
> But this does help:
> 
> --- a/arch/riscv/include/asm/tlbflush.h
> +++ b/arch/riscv/include/asm/tlbflush.h
> @@ -49,7 +49,7 @@ static inline void remote_sfence_vma(struct cpumask
> *cmask, unsigned long start,
>  
>  	cpumask_clear(&hmask);
>  	riscv_cpuid_to_hartid_mask(cmask, &hmask);
> -	sbi_remote_sfence_vma(hmask.bits, start, size);
> +	sbi_remote_sfence_vma(hmask.bits, 0, -1);
>  }
>  
>  #define flush_tlb_all() sbi_remote_sfence_vma(NULL, 0, -1)
> 

I am also able to reprduce the issue while doing a install-locales.
Here is the temporary fix that seems to solve the issue.

diff --git a/arch/riscv/include/asm/tlbflush.h
b/arch/riscv/include/asm/tlbflush.h
index 687dd19735a7..29b2bd7c9923 100644
--- a/arch/riscv/include/asm/tlbflush.h
+++ b/arch/riscv/include/asm/tlbflush.h
@@ -55,7 +55,7 @@ static inline void remote_sfence_vma(struct cpumask
*cmask, unsigned long start,
 #define flush_tlb_all() sbi_remote_sfence_vma(NULL, 0, -1)
 #define flush_tlb_page(vma, addr) flush_tlb_range(vma, addr, 0)
 #define flush_tlb_range(vma, start, end) \
-       remote_sfence_vma(mm_cpumask((vma)->vm_mm), start, (end) -
(start))
+       remote_sfence_vma(mm_cpumask((vma)->vm_mm), 0, -1)
 #define flush_tlb_mm(mm) \
        remote_sfence_vma(mm_cpumask(mm), 0, -1)

Can you please verify at your end?


While your fix flushes the entire tlb for every type of remote tlb
flush, this fix proves that the issue is with flush_tlb_range call
only.

I am looking at the OpenSBI/Kernel implementation to figure out if it
is an OpenSBI issue or something changed in kernel recently to trigger
this.

Additionally, do you know if a particular or group of locale install 
is causing this issue? 

It takes more than hour to finish the full install-locales on unleashe
board which makes it bit difficult to try out possible fixes.


> Andreas.
> 

-- 
Regards,
Atish
_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
