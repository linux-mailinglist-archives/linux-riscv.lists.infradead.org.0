Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B09D21C9D2F
	for <lists+linux-riscv@lfdr.de>; Thu,  7 May 2020 23:21:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-ID:Content-Type:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=z5B5mtoBxMQ4qTQXgNlM0Iz3rCk1YQQhrIPVEAhawio=; b=n2Ta3SFTd5kZjx2nWHPaAgfNT
	Tld59gBoVopbv6uB0ob9LT2y4MGDGA8huHvKzdOhU4fISyEfQVVriDGDYhcXEX38sAcUeHfmXPIGr
	W46xR113fAgvrk+EuZ8AzKuAGMTB4fIToZJBLj6C+CzDirS7c7GEBkcb54fmFaDv72Ww+WgycJ4Y4
	dlcilYQC70wtAKt8hzVHTSNPzlihOF6BksrhdRNQbyAem7boSUskqzmRSRf/CnsFNZix2DlO9dP3R
	m88o75PpyePJVpVU3VI0PKg66PR//wIEE1tQB0KevDgDveU2fezClw8tn+tZK/4huGCATCabxeYYU
	zT5y2XWRQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWnxJ-0004Fw-42; Thu, 07 May 2020 21:21:21 +0000
Received: from smtprelay-out1.synopsys.com ([149.117.87.133])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWnxF-0004Eq-5H
 for linux-riscv@lists.infradead.org; Thu, 07 May 2020 21:21:18 +0000
Received: from mailhost.synopsys.com (badc-mailhost2.synopsys.com
 [10.192.0.18])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id 8ABE8C1439;
 Thu,  7 May 2020 21:21:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1588886474; bh=z5B5mtoBxMQ4qTQXgNlM0Iz3rCk1YQQhrIPVEAhawio=;
 h=From:To:CC:Subject:Date:References:In-Reply-To:From;
 b=k9JIG1cSnNf6Woa7G9yPiHtQrQJQIddDlUR5uprgmYrScHDDORazASlQsSB8wSwEA
 KgfzCxv+rOeo89eQDsoBzDXW8LCj1+AKyEMmSdEhOJHq5spzW2v4AcaalAHfvcxax6
 YTI0eqCqgYzvlicRoY2YDIsxD6aDXNZ5Ax3Eoh/RVT4MsP3j77HZ/IMKitoN9tndra
 bzPmLuTT2urO4V80ltviQ40oK9C6lMP9G/McePZ8aH5hecRbJDViuPgxns2OARXl8a
 C+0kK3sElcTp4/WVOmUR2R90OPktn0rTWhENFRiensl6zpfJuwkkgMlQDMUxYwZx6q
 tSFqZWuqTgZbA==
Received: from US01WEHTC3.internal.synopsys.com
 (us01wehtc3.internal.synopsys.com [10.15.84.232])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
 (No client certificate requested)
 by mailhost.synopsys.com (Postfix) with ESMTPS id 1C8C6A0070;
 Thu,  7 May 2020 21:21:07 +0000 (UTC)
Received: from US01HYBRID2.internal.synopsys.com (10.15.246.24) by
 US01WEHTC3.internal.synopsys.com (10.15.84.232) with Microsoft SMTP Server
 (TLS) id 14.3.408.0; Thu, 7 May 2020 14:21:04 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (10.202.3.67) by
 mrs.synopsys.com (10.15.246.24) with Microsoft SMTP Server (TLS) id
 14.3.487.0; Thu, 7 May 2020 14:21:04 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=eseJKZ9W4zP+M6IKytX/YgxC3XeHB2LVvHyJJbOaZTExaEB0Hxhaz8IOq4hEvhVFZOA2Vo7FRw4S8u1JzH97x2Pow1jUqRWbpG4/i022epdRPGfy5gSDf7NKwiJxCKc1u4HGoajGqJNrBTP/JrYvmu8FigU+jfPCOt/4xoTn9WG1u0Kk+MTVk7mL9w1Cg1002Jgqv5QQ+OWSVHuWxbU1y+2663jcagX2wk9I0wZUPlFJ34s2PmgqnFTo2Amb3zENyH1UoRDLB3RulXHzKBe+ISfSXV3mDVfTpxBExYOsxjy55rP7ga66Q5872uVx0HXzQksULcJhaLIocjnSu6lc5g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=z5B5mtoBxMQ4qTQXgNlM0Iz3rCk1YQQhrIPVEAhawio=;
 b=RFV4aNrzzKothItRWa3f0QAktXIF/IWcvvj9bo3mWMf/5ahAWCnq45eQtYBaZqHaVXhRIb6Jsy0zuzfF+R0+2Luuz/RS5HK0nuiXKkpZlhcvNpBYdsMQnUheFbyMstcOaxWbLen7HtEeUOcx3ZyDyvV0qXum8ZJVFAEABDi9O0tqpTYRE1WDQSkXtlB9Zky55a4VwJk2LHPwW+VUdKmsddIEDWqFG5efX4R19vXu8iAG+coD+cQPN39lFbMKhV4fGdAGuru5Hfy7nDui2k2BnlKBgCkAMd6b7HUzT+i8D7Y8QPDLDHAlfgFi9xoMkU2RXBY72kZOfOxJNq9P/sZ2yw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=synopsys.com; dmarc=pass action=none header.from=synopsys.com;
 dkim=pass header.d=synopsys.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=synopsys.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=z5B5mtoBxMQ4qTQXgNlM0Iz3rCk1YQQhrIPVEAhawio=;
 b=wpbDXjzaR3qr178KsNcDTT5hr/droCau0aS+iqrS0XN9SOnoSIcaB8UcMvCRkQ4N6VCvH9CfaFkii+Szso2qNsNaEczkjQXvtt1XqvCVHHR9daUBkqSyRm5J4Pho+QVob/3BmvY8FY0UGxMQnMR2Wlccwd6xB3PeD2j59yLpUhg=
Received: from BYAPR12MB3479.namprd12.prod.outlook.com (2603:10b6:a03:dc::26)
 by BYAPR12MB3000.namprd12.prod.outlook.com (2603:10b6:a03:d7::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2958.27; Thu, 7 May
 2020 21:21:03 +0000
Received: from BYAPR12MB3479.namprd12.prod.outlook.com
 ([fe80::a43a:7392:6fa:c6af]) by BYAPR12MB3479.namprd12.prod.outlook.com
 ([fe80::a43a:7392:6fa:c6af%6]) with mapi id 15.20.2979.028; Thu, 7 May 2020
 21:21:03 +0000
From: Vineet Gupta <Vineet.Gupta1@synopsys.com>
To: Mike Rapoport <rppt@linux.ibm.com>, Andrew Morton
 <akpm@linux-foundation.org>
Subject: Re: [PATCH v2 17/20] mm: free_area_init: allow defining max_zone_pfn
 in descending order
Thread-Topic: [PATCH v2 17/20] mm: free_area_init: allow defining max_zone_pfn
 in descending order
Thread-Index: AQHWHiAFM1CeaVL9XUmgz0SxoJ1XgqiWp/EAgAARJQCAAV7ugIAA9yYAgAAxOACAAJOFgIAAI6gAgAMw2gCAAAYoAA==
Date: Thu, 7 May 2020 21:21:03 +0000
Message-ID: <80b0c001-ea48-f5a2-e0de-19b2cc6ec2ce@synopsys.com>
References: <20200429121126.17989-1-rppt@kernel.org>
 <20200429121126.17989-18-rppt@kernel.org>
 <20200503174138.GA114085@roeck-us.net> <20200503184300.GA154219@roeck-us.net>
 <20200504153901.GM14260@kernel.org>
 <a0b20e15-fddb-aa9c-fd67-f1c8e735b4a4@synopsys.com>
 <20200505091946.GG342687@linux.ibm.com>
 <88b9465b-6e6d-86ca-3776-ccb7a5b60b7f@synopsys.com>
 <20200505201522.GA683243@linux.ibm.com>
 <20200507205900.GH683243@linux.ibm.com>
In-Reply-To: <20200507205900.GH683243@linux.ibm.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
authentication-results: linux.ibm.com; dkim=none (message not signed)
 header.d=none; linux.ibm.com; dmarc=none action=none header.from=synopsys.com; 
x-originating-ip: [2601:641:c100:83a0:fee2:8ed0:e900:96d1]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: def9d429-d858-4cfd-4d72-08d7f2cc8c17
x-ms-traffictypediagnostic: BYAPR12MB3000:
x-microsoft-antispam-prvs: <BYAPR12MB30007E2BC5A57E6510077007B6A50@BYAPR12MB3000.namprd12.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 03965EFC76
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 7piWYgDy+LOQAHw0I153zwqrgCuXR+lfcC6kQZa2CadYS/WIp2Q4+OO4BATOuevERZpW5TMtJPBAZGygBbv9KIfvEWeEIrR6CyC7kI556hsTRQPBxqvHnl1m01aSgghvkghQvF5uWZF9VEkkMz+xrnaR9LAD4ZphRS7Bp4vioWFJyRS6wS6C9lXj7+b1dn1EFYD5g9PzZ728xAxl96s7EBkVjMO5iY4VQZYW3XCizHGnxuXaE8iqUGSCs7SvYzqqgdoxKNX3zKi7s/p2CMpwrSgnhxNW0/F2u1PeR0l9twY4GCJ3eIdEZXazBxat++sCFdT9EmSo7JHA7PpzVm/DSk3Gfg+MvhiwLqOK/XQjWpDQxlK1dFxbCImPvoRyeQmIUDqu9JEs6Sc8sf3T3CiW7+KB206f+SxlwME74IpFEHnGMtQWf2PJ8sDAd8uchk3UK3LvCdw7ZF8MSVwwkdFy3j3GMH+aS7mlqk/nvPTZkCU8QHQxQmx0JUBK0z5yZtH+wKWmMNQlaaoaJm8OCHBf/N+fgIQmiodpb/SqQyU6tiiJJ6SSZpT34V4VxkhsO5PE
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR12MB3479.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(136003)(366004)(346002)(39860400002)(376002)(396003)(33430700001)(186003)(66946007)(66446008)(76116006)(6486002)(66556008)(8676002)(478600001)(71200400001)(8936002)(64756008)(66476007)(6512007)(36756003)(7416002)(4326008)(2906002)(5660300002)(86362001)(6506007)(31696002)(2616005)(54906003)(83280400001)(110136005)(83320400001)(83290400001)(83310400001)(31686004)(83300400001)(53546011)(316002)(33440700001)(43740500002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: 5hwzGxNPiqGfBXZcNHT7EuwU45HJ/rXB9Cdss5tpnNdPC8OyVv1vWa43e8G+jL4WXmBWpkL5V56N7eudwO9/3fG/Fvopd1fbOHuwkcI7XrEA0usUtL5OYQ1iLLi6gBVhCcB6kcWSns83iC9XyfGwr8Iv8r39rHsHTL36GpFNnm8ns3qx0wBFMPVk8rva6xaFTDWT2CCU3u1rbgHJZIR95+ZZ6kskNVKcZoBZBKn9hLWrANYwaqj+gxCwFwA8+3QXViMQYJCYInmjaWVS/zBqY40Y9KpztolYJ+MXebR+a7kGms0Qy4KO/Bfdn9MPH+jEU0eTQWF+qX5vND8hIMNvFEdeaWoTaaG3+4jpv24InxysydzJM6kWm+NqWCiyS6DH9NXz36FoxfjDyRm9rwSWOGEHZ2I92h3oHE3FoTRcMYcgBvNQXSTR7hiZH7P7oOzeSmwGWBdkx87FYcdOJYyuDIhgPLr+a+tpEDAyOeASlbPvLEcWwhZ2zcoVBhGOOq8oKyxyRpM3D8yokHpkuqPCr6A+lStKYA0ebt4EgnjnaApEXM8jXsabTZ24989Ktr/1NewZW9lBE4DAKecFFu0v74xsxPqnutV+J0Ug8R87gpESATHvAT9oiwjapH2U96nUIz+UnrQodaeQ/XxSxKO84FPLrxZuNaoGd5W6jbEcz+s+ZEbcgxEU49VDNU14cINkuymnrFM7eXuReYbycM6jKTcyBP/wYFF7MT1LLgMyFm4rCona1mdlGrk8ez7Sc8vx+Bq1qpWyaaBdViXp1reJHZ5B+6pobS+HziVUS5KnMMqVIg9KMGGQb8iSpafuo8QuP4YXseWeZfBIJqpAfBAzUQsZ+vbTAuHbOYNlGEpVZ1Y=
x-ms-exchange-transport-forked: True
Content-Type: text/plain; charset="utf-8"
Content-ID: <D2A13E4A32E60C448B6A7689E04CDA5C@namprd12.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: def9d429-d858-4cfd-4d72-08d7f2cc8c17
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 May 2020 21:21:03.1653 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: c33c9f88-1eb7-4099-9700-16013fd9e8aa
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: gUNwip59pWubcMuoWMAAXW6lNDRI8xGqDBLqblWbRCw9dlftPeBwZtvWC1Woma/PGbbRFvkKSIH1v5Onlmc7VA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR12MB3000
X-OriginatorOrg: synopsys.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_142117_334286_31333FBF 
X-CRM114-Status: GOOD (  22.08  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Rich Felker <dalias@libc.org>,
 "linux-ia64@vger.kernel.org" <linux-ia64@vger.kernel.org>,
 "linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Heiko Carstens <heiko.carstens@de.ibm.com>, "x86@kernel.org" <x86@kernel.org>,
 Michal Hocko <mhocko@kernel.org>,
 "James E.J. Bottomley" <James.Bottomley@hansenpartnership.com>,
 Max Filippov <jcmvbkbc@gmail.com>, Guo Ren <guoren@kernel.org>,
 Ley Foon Tan <ley.foon.tan@intel.com>,
 "sparclinux@vger.kernel.org" <sparclinux@vger.kernel.org>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>,
 Greg Ungerer <gerg@linux-m68k.org>,
 "linux-arch@vger.kernel.org" <linux-arch@vger.kernel.org>,
 "linux-s390@vger.kernel.org" <linux-s390@vger.kernel.org>,
 "linux-c6x-dev@linux-c6x.org" <linux-c6x-dev@linux-c6x.org>,
 Baoquan He <bhe@redhat.com>, Jonathan Corbet <corbet@lwn.net>,
 "linux-hexagon@vger.kernel.org" <linux-hexagon@vger.kernel.org>,
 Helge Deller <deller@gmx.de>,
 "linux-sh@vger.kernel.org" <linux-sh@vger.kernel.org>,
 Russell King <linux@armlinux.org.uk>,
 "linux-csky@vger.kernel.org" <linux-csky@vger.kernel.org>, Geert
 Uytterhoeven <geert@linux-m68k.org>, Guenter Roeck <linux@roeck-us.net>,
 Mike Rapoport <rppt@kernel.org>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

T24gNS83LzIwIDE6NTkgUE0sIE1pa2UgUmFwb3BvcnQgd3JvdGU6DQo+IE9uIFR1ZSwgTWF5IDA1
LCAyMDIwIGF0IDExOjE1OjIyUE0gKzAzMDAsIE1pa2UgUmFwb3BvcnQgd3JvdGU6DQo+PiBPbiBU
dWUsIE1heSAwNSwgMjAyMCBhdCAwNjowNzo0NlBNICswMDAwLCBWaW5lZXQgR3VwdGEgd3JvdGU6
DQo+Pj4gT24gNS81LzIwIDI6MTkgQU0sIE1pa2UgUmFwb3BvcnQgd3JvdGU6DQo+Pj4gwqAtIElz
IGl0IG5vdCBiZXR0ZXIgdG8gaGF2ZSB0aGUgY29yZSByZXRhaW4gdGhlIGZsZXhpYmlsaXR5IGp1
c3QgaW4gY2FzZQ0KPj4gSWYgdGhlIHJlcXVpcmVtZW50IHRvIGhhdmUgc3VwcG9ydCBmb3IgMy1i
YW5rcyBpcyBhIHRoZW9yZXRpY2FsDQo+PiBwb3NzaWJpbGl0eSwgSSB3b3VsZCBwcmVmZXIgdG8g
YWRqdXN0IEFSQydzIHZlcnNpb24gb2YNCj4+IGFyY2hfaGFzX2Rlc2NlbmRpbmdfbWF4X3pvbmVf
cGZucygpIHRvIGNvcGUgd2l0aCBlaXRoZXIgb2YgMi1iYW5rcw0KPj4gY29uZmlndXJhdGlvbiAo
UEFFNDAgYW5kIG5vbi1QQUU0MCkgYW5kIGRlYWwgd2l0aCB0aGUgdGhpcmQgYmFuayB3aGVuL2lm
DQo+PiBpdCBhY3R1YWxseSBtYXRlcmlhbGl6ZXMuDQoNCkZhaXIgZW5vdWdoLg0KDQo+IFRoZSBm
aXggYmVsb3cgc2hvdWxkIHRha2UgY2FyZSBvZiBhbnkgMi1iYW5rIGNvbmZpZ3VyYXRpb25zLiAN
Cj4gVGhpcyBpcyB2cy4gY3VycmVudCBtbW90bS4NCj4NCj4gRnJvbSBlYjgxMjRmYjM1ODQ2MDdk
MTAzNmI3YWUwMGM4MDkyYWU0M2U0ODBkIE1vbiBTZXAgMTcgMDA6MDA6MDAgMjAwMQ0KPiBGcm9t
OiBNaWtlIFJhcG9wb3J0IDxycHB0QGxpbnV4LmlibS5jb20+DQo+IERhdGU6IFRodSwgNyBNYXkg
MjAyMCAyMzo0NDoxNSArMDMwMA0KPiBTdWJqZWN0OiBbUEFUQ0hdIGFyYzogZnJlZV9hcmVhX2lu
aXQoKTogdGFrZSBpbnRvIGFjY291bnQgUEFFNDAgbW9kZQ0KPg0KPiBUaGUgYXJjaF9oYXNfZGVz
Y2VuZGluZ19tYXhfem9uZV9wZm5zKCkgZG9lcyBub3QgdGFrZSBpbnRvIGFjY291bnQgcGh5c2lj
YWwNCj4gbWVtb3J5IGxheW91dCBmb3IgUEFFNDAgY29uZmlndXJhdGlvbi4NCj4gV2l0aCBQQUU0
MCBlbmFibGVkLCB0aGUgSElHSE1FTSBpcyBhY3R1YWxseSBoaWdoZXIgdGhhbiBOT1JNQUwgYW5k
DQo+IGFyY2hfaGFzX2Rlc2NlbmRpbmdfbWF4X3pvbmVfcGZucygpIHNob3VsZCByZXR1cm4gZmFs
c2UgaW4gdGhpcyBjYXNlLg0KPg0KPiBTaWduZWQtb2ZmLWJ5OiBNaWtlIFJhcG9wb3J0IDxycHB0
QGxpbnV4LmlibS5jb20+DQoNCkxHVE0uDQoNCkFja2VkLWJ5OiBWaW5lZXQgR3VwdGEgPHZndXB0
YUBzeW5vcHN5cy5jb20+DQoNClRoeCwNCg0KPiAtLS0NCj4gIGFyY2gvYXJjL21tL2luaXQuYyB8
IDIgKy0NCj4gIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlvbigtKQ0K
Pg0KPiBkaWZmIC0tZ2l0IGEvYXJjaC9hcmMvbW0vaW5pdC5jIGIvYXJjaC9hcmMvbW0vaW5pdC5j
DQo+IGluZGV4IDM4Njk1OWJhYzNkMi4uZTdiZGMyYWMxYzg3IDEwMDY0NA0KPiAtLS0gYS9hcmNo
L2FyYy9tbS9pbml0LmMNCj4gKysrIGIvYXJjaC9hcmMvbW0vaW5pdC5jDQo+IEBAIC03OSw3ICs3
OSw3IEBAIHZvaWQgX19pbml0IGVhcmx5X2luaXRfZHRfYWRkX21lbW9yeV9hcmNoKHU2NCBiYXNl
LCB1NjQgc2l6ZSkNCj4gIA0KPiAgYm9vbCBhcmNoX2hhc19kZXNjZW5kaW5nX21heF96b25lX3Bm
bnModm9pZCkNCj4gIHsNCj4gLQlyZXR1cm4gdHJ1ZTsNCj4gKwlyZXR1cm4gIUlTX0VOQUJMRUQo
Q09ORklHX0FSQ19IQVNfUEFFNDApOw0KPiAgfQ0KPiAgDQo+ICAvKg0KDQo=

