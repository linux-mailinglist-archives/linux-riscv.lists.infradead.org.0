Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 270271C4E49
	for <lists+linux-riscv@lfdr.de>; Tue,  5 May 2020 08:24:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-ID:Content-Type:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=nnzMGwqbhMCV73hJU11QrodqXtI6lMd10mXOW56Lt+0=; b=UoLMcenSsflE3nBljA8SkKNas
	XLYBGDc4SY9e0eLpRLW5OwylweCf30uOX30XSLkm6Y3TLSHN5CV5vhW1geT4SuZGTIbWWuFXlvayW
	KrbH+UFubgVEvQoKXvM7JHS2CVeefCqymS8zLVCeqh521CvI3mRLa02y/xYtXfkNXYumE3rThPxxb
	pCACyZanKs4hI3GoqMQ8Z0MUIhRwny9lj2YpQkxIbbV7ZweF6rHz7GVG3/vnTBTfVjUNlUV2Si9GU
	nLS7OINCC5XLIleY1McHjuYK9h0/aKWahoqd1RH5lnslnAgUEhkfiZYYPk1VZdK0XiDYrBShs9qvA
	fNhzvBOjw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVqzu-0005Fx-VB; Tue, 05 May 2020 06:24:06 +0000
Received: from smtprelay-out1.synopsys.com ([149.117.73.133])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVqzo-0005Ej-Jg
 for linux-riscv@lists.infradead.org; Tue, 05 May 2020 06:24:04 +0000
Received: from mailhost.synopsys.com (badc-mailhost1.synopsys.com
 [10.192.0.17])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id 3BEF94399D;
 Tue,  5 May 2020 06:23:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1588659839; bh=nnzMGwqbhMCV73hJU11QrodqXtI6lMd10mXOW56Lt+0=;
 h=From:To:CC:Subject:Date:References:In-Reply-To:From;
 b=jKfHU+wIHmW84geoH6Q1Xhf9lIpsLig/vAtGNSEB6SFEpK8xk7B+abxa7r4xPdmGs
 /ti/7V1Hh0c6TqYpSELbTGM2eRUrJ+nFhvyou1S4bmpjg01+RH1+gAzhzyNaQtHLA9
 VBa7zhkUpPOBnuCnEmJZpNkaYekhWr9LlEK9cHNTxPG/3YitjFQgF+AMVFrD18wmzj
 XNJ7kl4RYmpK/EFuLX4/R1HU48oKXV2aJH3eoJhIDAqob40A39DzGdXQfJoAgAmDgS
 HJGcD/WgnmEN8D+AI/n2lFqjy3Wx7sDFVnUxkqH0pjND3iQnXlGJK/oZhUfAAxqMdI
 LL5LWqkS4/v1w==
Received: from US01WEHTC3.internal.synopsys.com
 (us01wehtc3.internal.synopsys.com [10.15.84.232])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
 (No client certificate requested)
 by mailhost.synopsys.com (Postfix) with ESMTPS id 3BEEFA007F;
 Tue,  5 May 2020 06:23:54 +0000 (UTC)
Received: from US01HYBRID2.internal.synopsys.com (10.15.246.24) by
 US01WEHTC3.internal.synopsys.com (10.15.84.232) with Microsoft SMTP Server
 (TLS) id 14.3.408.0; Mon, 4 May 2020 23:23:39 -0700
Received: from NAM04-SN1-obe.outbound.protection.outlook.com (10.202.3.67) by
 mrs.synopsys.com (10.15.246.24) with Microsoft SMTP Server (TLS) id
 14.3.487.0; Mon, 4 May 2020 23:23:39 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=QeEdHg1VpqQi+llltUGv54oiU9Mi06COimglR01Eg2nRQ489WLWoceibFTLhzsOp776DXzfzrzdwDSLIzKHyM0+zJ+Qhv4KgIZdeo1jCw6qhWE4Vq8jo/8toMmnRCqlh+1yiZdmAQI5KCNCp8P4nR1uNmt5lcLpojCi73qSsq7pXL3JY3TturU//jpgADM768BHAk2mUG7rzT9p3f/EPU+MFMcdF/zMaPIXJ8eWFCeRbfiUZLQCGnY2C0mNh7az/So4wN+yFNlHCJoVlxcwxEk8YrOkEToTa6NDxUjBPtu18TQIlkj973Cuw9qr2OVPm7OOo300Kt2rOgtbKqyXTKg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=nnzMGwqbhMCV73hJU11QrodqXtI6lMd10mXOW56Lt+0=;
 b=ZcDlrehc7cgE1J9yy6MbGoKlSMaTjYVPSwjLT6dK4JKugPtTH7zeY2uEZnMFXkpDoZeujmVSzIwBAiwym6ha4PY9qJ0H7e5LcvB7tDKdEAgHTSKcXuKGPCVa8d1f7v6gygH//RNNkdwwKbd6MypANgimhXLGcq3m41Ud2sn/BhFcuX3q+AUWK99I82zMyYLtun/POoWBjBTlvT/WM8dBVL93ql56IwSUWZTTZbRkqk98KB3cC2iO4r/KDcYkrrMW2V0Y+6ij0gLnFHvWVAluG3zGyKEraexblnsiqmr2jm8b/tn8hWY7sxbevks/t6r0zMoK5RlcHkrohiKsO3gzDA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=synopsys.com; dmarc=pass action=none header.from=synopsys.com;
 dkim=pass header.d=synopsys.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=synopsys.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=nnzMGwqbhMCV73hJU11QrodqXtI6lMd10mXOW56Lt+0=;
 b=OJ5xnIb1BIdY1B7fRvk4NGDuWhrhH62VrRyfWPsD+RXmCVlgJOu1c8xe7jlKIyf8D2PMx4JKymOP5foKfPPfduhBuvxU59A37IKmEsE06OMqw1ca5PWEvZcJI9SxrTIA1lbo6m90D7bBXXzyQzP/PVuqpzEM89ZILxz7msHm7qI=
Received: from BYAPR12MB3479.namprd12.prod.outlook.com (2603:10b6:a03:dc::26)
 by BYAPR12MB3480.namprd12.prod.outlook.com (2603:10b6:a03:aa::25)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2958.20; Tue, 5 May
 2020 06:23:37 +0000
Received: from BYAPR12MB3479.namprd12.prod.outlook.com
 ([fe80::a43a:7392:6fa:c6af]) by BYAPR12MB3479.namprd12.prod.outlook.com
 ([fe80::a43a:7392:6fa:c6af%6]) with mapi id 15.20.2958.030; Tue, 5 May 2020
 06:23:37 +0000
From: Vineet Gupta <Vineet.Gupta1@synopsys.com>
To: Mike Rapoport <rppt@kernel.org>, Guenter Roeck <linux@roeck-us.net>
Subject: Re: [PATCH v2 17/20] mm: free_area_init: allow defining max_zone_pfn
 in descending order
Thread-Topic: [PATCH v2 17/20] mm: free_area_init: allow defining max_zone_pfn
 in descending order
Thread-Index: AQHWHiAFM1CeaVL9XUmgz0SxoJ1XgqiWp/EAgAARJQCAAV7ugIAA9yYA
Date: Tue, 5 May 2020 06:23:37 +0000
Message-ID: <a0b20e15-fddb-aa9c-fd67-f1c8e735b4a4@synopsys.com>
References: <20200429121126.17989-1-rppt@kernel.org>
 <20200429121126.17989-18-rppt@kernel.org>
 <20200503174138.GA114085@roeck-us.net> <20200503184300.GA154219@roeck-us.net>
 <20200504153901.GM14260@kernel.org>
In-Reply-To: <20200504153901.GM14260@kernel.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
authentication-results: kernel.org; dkim=none (message not signed)
 header.d=none;kernel.org; dmarc=none action=none header.from=synopsys.com;
x-originating-ip: [2601:641:c100:83a0:fee2:8ed0:e900:96d1]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 27d5acd2-6225-4de6-c745-08d7f0bcd8c4
x-ms-traffictypediagnostic: BYAPR12MB3480:
x-microsoft-antispam-prvs: <BYAPR12MB34804C25C653F041817C80FDB6A70@BYAPR12MB3480.namprd12.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-forefront-prvs: 0394259C80
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: MW/TkTKixHSIkGxlN/44hf/Z1CBm6LNvEraovu6XkRxhY5b3EGgXRcxeLd/tbo2zj+Wwe2cyv+Gn+k28lp/ZfqL5deMf08dSapL0uAdyWqX/MFg2svH6io9cYRMgSee0u2wbjnj3Tt8NSeZIJKug0Bp528dy5QpUIqQTsZnht/byR7J1rCFll1xY1JAIyb2gVRL6s9PJDo+q+fsNxtZysg0gojy3N+pgP9edPgN5VgmrHRfh+sSDSx6hsr1Fu4QgSio5cNcX+ymA4+8WP+s640THIYeRP2IrgxjEIK8GvjOCLvWmZRTGcvWS6pO1yEeCfLD3PqbtbGBIrp8a81lgjB2J06mgZ8ayvMBL36U89Peflj9upcyGwinmUjQ+49/77GpL3HHYo2DqL8zQje5O2M+hlYXJU+B9/3flHYmv/MOMpvjQxv6SK5eMGZzuf++iit5nfOFq1sgB1YFm4Xrr8HqNNjdsJ9zvvx9xxhO/2XWEVCIZ652U93KbJwj0y3PAd0U5Q8YIQByyJeRO3qtk5w==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR12MB3479.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(366004)(396003)(346002)(136003)(39860400002)(376002)(33430700001)(66446008)(64756008)(54906003)(76116006)(7416002)(66946007)(6512007)(36756003)(6506007)(66556008)(31686004)(33440700001)(316002)(66476007)(478600001)(5660300002)(53546011)(110136005)(2906002)(71200400001)(186003)(4326008)(86362001)(2616005)(8676002)(6486002)(8936002)(31696002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: NJcFwu3bWeuGkEqlDcYAJ5HJEDzN9W2hsLJJ6eUZMtcImLL70h24Fzc6ADctjmLBI7pRpczj2rkKg65KCYzaqYVdBvU7GgnoKjE9wfF6uq0Y9XlJkPio7FqyG1BkdXz8xT16a9DHSMCfsa3MguOrVaZXCCG1yfbii9Ivh81hqxvk0o8YaLCdOKadKZ5F4sXihvjHq2yhmK0PyMdlhBwahWGUAn/7MN5RD4ZmAhLHR8Cfa54SnOFrralnf9kYohzLsg1Im4dIpHJWspDvLXsqEWTxSaioklAjAu2rscCpZbIhehHDC+OoV1w1K22Pk+hW5PWnlOtqZwwhrztSY279c/t/rAOdW9J/RQYb2qMjQJAu0x82HL6kT4QEvtfCH21iIKyDeqsAh6ipakCcB2O3de86GTTnImDz2X95dACFosR/xaO/cAUc+xIDxogcJe3MdiJj4mWJj2vAVGD7kEyaxelKIqAOazRpzLIE2+mE5aPJjjtquXhlIREliKtndomD6aG1QB9Un1b0u53j5wlRWRNBwN5cH3qGx2nZbF+VnrJAONMWRiTvL2oExdRJenoLDuujWzF22YfG7zRE7fHiygg3HFOhx3s1F6CO36taqVaM5nN1JvYqUm5NO6JpFgsOn4Z/VAZNyJgnOKLiZqE1ijDbBIEk6EfDEpaLAz4I/OgVvgrDa/zxzTwt0XrFue3eTpHy/dwjdFwCH9gGbEv0Ca1n490EC049gVyX+1ufV1cetFQoB+si2HJtgehtgQS1AAIbADxbJrE4VSzhEr/9t+8D1i+tCqaEW24ftjhJcVO1nipjChcQgCHLkX0cZ930NdBm9ysokMMQqxCQe/5/rl84FHk4MHqmfJ0l3gq+ofQ=
x-ms-exchange-transport-forked: True
Content-Type: text/plain; charset="utf-8"
Content-ID: <2AE79964EC942449B3B00D9349CD891C@namprd12.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 27d5acd2-6225-4de6-c745-08d7f0bcd8c4
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 May 2020 06:23:37.4178 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: c33c9f88-1eb7-4099-9700-16013fd9e8aa
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: +7SxerYVCC87EJ/UFQObQcf/qg0GKaYNR3KO3LYlHMfqhc/MErUmnAx4Zx1qe0VLyKIHZ0p4KlNT2Z8gWJfQoA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR12MB3480
X-OriginatorOrg: synopsys.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200504_232400_723539_E3D84864 
X-CRM114-Status: GOOD (  25.81  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Rich Felker <dalias@libc.org>,
 "linux-ia64@vger.kernel.org" <linux-ia64@vger.kernel.org>,
 "linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Heiko Carstens <heiko.carstens@de.ibm.com>, "x86@kernel.org" <x86@kernel.org>,
 Michal Hocko <mhocko@kernel.org>,
 "James E.J. Bottomley" <James.Bottomley@hansenpartnership.com>,
 Max Filippov <jcmvbkbc@gmail.com>, Guo Ren <guoren@kernel.org>,
 "linux-csky@vger.kernel.org" <linux-csky@vger.kernel.org>,
 "sparclinux@vger.kernel.org" <sparclinux@vger.kernel.org>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>, Greg
 Ungerer <gerg@linux-m68k.org>,
 "linux-arch@vger.kernel.org" <linux-arch@vger.kernel.org>,
 "linux-s390@vger.kernel.org" <linux-s390@vger.kernel.org>,
 "linux-c6x-dev@linux-c6x.org" <linux-c6x-dev@linux-c6x.org>,
 Baoquan He <bhe@redhat.com>, Jonathan Corbet <corbet@lwn.net>,
 "linux-hexagon@vger.kernel.org" <linux-hexagon@vger.kernel.org>,
 Helge Deller <deller@gmx.de>,
 "linux-sh@vger.kernel.org" <linux-sh@vger.kernel.org>,
 Russell King <linux@armlinux.org.uk>, Ley Foon Tan <ley.foon.tan@intel.com>,
 Mike Rapoport <rppt@linux.ibm.com>, Geert
 Uytterhoeven <geert@linux-m68k.org>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

SGkgTWlrZSwNCg0KT24gNS80LzIwIDg6MzkgQU0sIE1pa2UgUmFwb3BvcnQgd3JvdGU6DQo+IE9u
IFN1biwgTWF5IDAzLCAyMDIwIGF0IDExOjQzOjAwQU0gLTA3MDAsIEd1ZW50ZXIgUm9lY2sgd3Jv
dGU6DQo+PiBPbiBTdW4sIE1heSAwMywgMjAyMCBhdCAxMDo0MTozOEFNIC0wNzAwLCBHdWVudGVy
IFJvZWNrIHdyb3RlOg0KPj4+IEhpLA0KPj4+DQo+Pj4gT24gV2VkLCBBcHIgMjksIDIwMjAgYXQg
MDM6MTE6MjNQTSArMDMwMCwgTWlrZSBSYXBvcG9ydCB3cm90ZToNCj4+Pj4gRnJvbTogTWlrZSBS
YXBvcG9ydCA8cnBwdEBsaW51eC5pYm0uY29tPg0KPj4+Pg0KPj4+PiBTb21lIGFyY2hpdGVjdHVy
ZXMgKGUuZy4gQVJDKSBoYXZlIHRoZSBaT05FX0hJR0hNRU0gem9uZSBiZWxvdyB0aGUNCj4+Pj4g
Wk9ORV9OT1JNQUwuIEFsbG93aW5nIGZyZWVfYXJlYV9pbml0KCkgcGFyc2UgbWF4X3pvbmVfcGZu
IGFycmF5IGV2ZW4gaXQgaXMNCj4+Pj4gc29ydGVkIGluIGRlc2NlbmRpbmcgb3JkZXIgYWxsb3dz
IHVzaW5nIGZyZWVfYXJlYV9pbml0KCkgb24gc3VjaA0KPj4+PiBhcmNoaXRlY3R1cmVzLg0KPj4+
Pg0KPj4+PiBBZGQgdG9wIC0+IGRvd24gdHJhdmVyc2FsIG9mIG1heF96b25lX3BmbiBhcnJheSBp
biBmcmVlX2FyZWFfaW5pdCgpIGFuZCB1c2UNCj4+Pj4gdGhlIGxhdHRlciBpbiBBUkMgbm9kZS96
b25lIGluaXRpYWxpemF0aW9uLg0KPj4+Pg0KPj4+PiBTaWduZWQtb2ZmLWJ5OiBNaWtlIFJhcG9w
b3J0IDxycHB0QGxpbnV4LmlibS5jb20+DQo+Pj4NCj4+PiBUaGlzIHBhdGNoIGNhdXNlcyBteSBt
aWNyb2JsYXplZWwgcWVtdSBib290IHRlc3QgaW4gbGludXgtbmV4dCB0byBmYWlsLg0KPj4+IFJl
dmVydGluZyBpdCBmaXhlcyB0aGUgcHJvYmxlbS4NCj4+Pg0KPj4gVGhlIHNhbWUgcHJvYmxlbSBp
cyBzZWVuIHdpdGggczM5MCBlbXVsYXRpb25zLg0KPiANCj4gWWVhaCwgdGhpcyBwYXRjaCBicmVh
a3Mgc29tZSBvdGhlcnMgYXMgd2VsbCA6KA0KPiANCj4gTXkgYXNzdW1wdGlvbiB0aGF0IG1heF96
b25lX3BmbiBkZWZpbmVzIGFyY2hpdGVjdHVyYWwgbGltaXQgZm9yIG1heGltYWwNCj4gUEZOIHRo
YXQgY2FuIGJlbG9uZyB0byBhIHpvbmUgd2FzIG92ZXItb3B0aW1pc3RpYy4gU2V2ZXJhbCBhcmNo
ZXMNCj4gYWN0dWFsbHkgZG8gdGhhdCwgYnV0IG90aGVycyBkbw0KPiANCj4gCW1heF96b25lX3Bm
bltaT05FX0RNQV0gPSBNQVhfRE1BX1BGTjsNCj4gCW1heF96b25lX3BmbltaT05FX05PUk1BTF0g
PSBtYXhfcGZuOw0KPiANCj4gd2hlcmUgTUFYX0RNQV9QRk4gaXMgYnVpbGQtdGltZSBjb25zdHJh
aW4gYW5kIG1heF9wZm4gaXMgcnVuIHRpbWUgbGltaXQNCj4gZm9yIHRoZSBjdXJyZW50IHN5c3Rl
bS4NCj4gDQo+IFNvLCB3aGVuIG1heF9wZm4gaXMgbG93ZXIgdGhhbiBNQVhfRE1BX1BGTiwgdGhl
IGZyZWVfaW5pdF9hcmVhKCkgd2lsbA0KPiBjb25zaWRlciBtYXhfem9uZV9wZm4gYXMgZGVzY2Vu
ZGluZyBhbmQgd2lsbCB3cm9uZ2x5IGNhbGN1bGF0ZSB6b25lDQo+IGV4dGVudHMuDQo+IA0KPiBU
aGF0IHNhaWQsIGluc3RlYWQgb2YgdHJ5aW5nIHRvIGNyZWF0ZSBhIGdlbmVyaWMgd2F5IHRvIHNw
ZWNpYWwgY2FzZQ0KPiBBUkMsIEkgc3VnZ2VzdCB0byBzaW1wbHkgdXNlIHRoZSBiZWxvdyBwYXRj
aCBpbnN0ZWFkLg0KDQpFdmVuIGZvciBBUkMgaXQgd2lsbCBiZSBhIGJpdCBtb3JlIGNvbXBsaWNh
dGVkLiBIaWdobWVtIG9uIEFSQyBjYW4gYmUgc2V0dXAgaW4gMg0Kd2F5cyBzdWNoIHRoYXQgaXQg
aXMgZGVzY2VuZGluZyBpbiBvbmUgY2FzZSwgYW5kIGFzY2VuZGluZyBpbiBvdGhlciAody5yLnQN
CiJub3JtYWwiIG1lbSkgOi0oDQoNCkZpcnN0IHNvbWUgYmFzaWMgaW5mbyBhYm91dCBhbiBBUkMg
TU1VIGJhc2VkIHN5c3RlbQ0KDQpBUkMgbG9naWNhbCBhZGRyZXNzIHNwYWNlICh2YXJpb3VzIGFk
ZHJlc3NlcyBlbWJlZGRlZCBpbiBiaW5hcmllcykNCiAtIHRyYW5zbGF0ZWQgKDAgdG8gMHg2RkZG
X0ZGRkYpICAtIGZvciB1c2Vyc3BhY2UNCiAtIHVudHJhbnNsYXRlZCAoMHg4MDAwXzAwMDAgdG8g
MHhGRkZGX0ZGRkYpIC0ga2VybmVsDQoNCkFSQyBQaHlzaWNhbCBhZGRyZXNzIHNwYWNlIGlzIHR5
cGljYWxseSBmcm9tIDB4ODAwMF8wMDAwIHRvIDB4RjAwMF8wMDAwLg0KQWJvdmUgdHJhbnNsYXRl
ZCBzcGFjZSBtYXBzIGhlcmUgdmlhIE1NVS4gVW50cmFuc2xhdGVkIGlzIGltcGxpY2l0bHkgbWFw
cGVkIChubw0KTU1VIGludm9sdmVkKS4NCg0KVGhlIHBoeXNpY2FsIGFkZHJlc3MgaW4gdHVybiBt
YXBzIHRvIGEgQnVzIGFkZHJlc3MgLyBtZW1vcnkgKGRvbmUgYXQgdGhlDQppbnRlci1jb25uZWN0
L05vQykuIFR5cGljYWxseSBQaHlzaWNhbCAweDgwMDBfMDAwMCBtYXAgdG8gRERSIDANCg0KTm93
LA0KLSBISUdITUVNIHcvbyBQQUU0MCBhZGRzIFBoeXNpY2FsIGFkZHJlc3Mgc3BhY2UgMCB0byAw
eDdGRkZfRkZGRi4NCi0gSElHSE1FTSB3aXRoIFBBRTQwIHVzZXMgcGh5c2ljYWwgYWRkcmVzcyBz
cGFjZSBmcm9tIDB4MV8wMDAwXzAwMDAgdXB3YXJkcy4NCg0KQnV0IHRoZW4geW91IGNvdWxkIGFs
c28gaGF2ZSBhIHN5c3RlbSB3aGljaCBoYXMgYm90aCBvZiBhYm92ZSBzbyB0aGUgYmltb2RhbCB1
cC9kbg0Kd29uJ3Qgd29yay4NCg0KV2hpbGUgSSBhcHByZWNpYXRlIHRoZSBlZmZvcnQgdG8gcmVk
dWNlIGNvbXBsZXhpdHksIGl0IHNlZW1zIHRoZSBjdXJyZW50IHdheSBvZg0Kc2V0dGluZyB0aGlu
Z3MgdXAgYWxsb3dzIGZvciBtb3JlIGZsZXhpYmlsaXR5IGluIHNwZWNpZnlpbmcgdGhlIHN5c3Rl
bSBtZW1vcnkgbWFwLg0KDQpQUzogSSBoYXZlbid0IGxvb2tlZCBhdCB5b3VyIHNlcmllcyB0b28g
Y2FyZWZ1bGx5LCB0aGUgbWVudGlvbiBvZiBBUkMgY2F1Z2h0IG15DQphdHRlbnRpb24gOi0pIEkg
Z3Vlc3MgSSBuZWVkIHRvIHJlYWQgaXQgbW9yZSBjYXJlZnVsbHkgdG8gdW5kZXJzdGFuZC4NCg0K
DQo+IA0KPiBkaWZmIC0tZ2l0IGEvYXJjaC9hcmMvbW0vaW5pdC5jIGIvYXJjaC9hcmMvbW0vaW5p
dC5jDQo+IGluZGV4IDQxZWI5YmUxNjUzYy4uMzg2OTU5YmFjM2QyIDEwMDY0NA0KPiAtLS0gYS9h
cmNoL2FyYy9tbS9pbml0LmMNCj4gKysrIGIvYXJjaC9hcmMvbW0vaW5pdC5jDQo+IEBAIC03Nyw2
ICs3NywxMSBAQCB2b2lkIF9faW5pdCBlYXJseV9pbml0X2R0X2FkZF9tZW1vcnlfYXJjaCh1NjQg
YmFzZSwgdTY0IHNpemUpDQo+ICAJCWJhc2UsIFRPX01CKHNpemUpLCAhaW5fdXNlID8gIk5vdCB1
c2VkIjoiIik7DQo+ICB9DQo+ICANCj4gK2Jvb2wgYXJjaF9oYXNfZGVzY2VuZGluZ19tYXhfem9u
ZV9wZm5zKHZvaWQpDQo+ICt7DQo+ICsJcmV0dXJuIHRydWU7DQo+ICt9DQo+ICsNCj4gIC8qDQo+
ICAgKiBGaXJzdCBtZW1vcnkgc2V0dXAgcm91dGluZSBjYWxsZWQgZnJvbSBzZXR1cF9hcmNoKCkN
Cj4gICAqIDEuIHNldHVwIHN3YXBwZXIncyBtbSBAaW5pdF9tbQ0KPiBkaWZmIC0tZ2l0IGEvbW0v
cGFnZV9hbGxvYy5jIGIvbW0vcGFnZV9hbGxvYy5jDQo+IGluZGV4IGI5OTBlOTczNDQ3NC4uMTE0
ZjBlMDI3MTQ0IDEwMDY0NA0KPiAtLS0gYS9tbS9wYWdlX2FsbG9jLmMNCj4gKysrIGIvbW0vcGFn
ZV9hbGxvYy5jDQo+IEBAIC03MzA3LDYgKzczMDcsMTUgQEAgc3RhdGljIHZvaWQgY2hlY2tfZm9y
X21lbW9yeShwZ19kYXRhX3QgKnBnZGF0LCBpbnQgbmlkKQ0KPiAgCX0NCj4gIH0NCj4gIA0KPiAr
LyoNCj4gKyAqIFNvbWUgYXJjaGl0ZWN0dXJzLCBlLmcuIEFSQyBtYXkgaGF2ZSBaT05FX0hJR0hN
RU0gYmVsb3cgWk9ORV9OT1JNQUwuIEZvcg0KPiArICogc3VjaCBjYXNlcyB3ZSBhbGxvdyBtYXhf
em9uZV9wZm4gc29ydGVkIGluIHRoZSBkZXNjZW5kaW5nIG9yZGVyDQo+ICsgKi8NCj4gK2Jvb2wg
X193ZWFrIGFyY2hfaGFzX2Rlc2NlbmRpbmdfbWF4X3pvbmVfcGZucyh2b2lkKQ0KPiArew0KPiAr
CXJldHVybiBmYWxzZTsNCj4gK30NCj4gKw0KPiAgLyoqDQo+ICAgKiBmcmVlX2FyZWFfaW5pdCAt
IEluaXRpYWxpc2UgYWxsIHBnX2RhdGFfdCBhbmQgem9uZSBkYXRhDQo+ICAgKiBAbWF4X3pvbmVf
cGZuOiBhbiBhcnJheSBvZiBtYXggUEZOcyBmb3IgZWFjaCB6b25lDQo+IEBAIC03MzI0LDcgKzcz
MzMsNyBAQCB2b2lkIF9faW5pdCBmcmVlX2FyZWFfaW5pdCh1bnNpZ25lZCBsb25nICptYXhfem9u
ZV9wZm4pDQo+ICB7DQo+ICAJdW5zaWduZWQgbG9uZyBzdGFydF9wZm4sIGVuZF9wZm47DQo+ICAJ
aW50IGksIG5pZCwgem9uZTsNCj4gLQlib29sIGRlc2NlbmRpbmcgPSBmYWxzZTsNCj4gKwlib29s
IGRlc2NlbmRpbmc7DQo+ICANCj4gIAkvKiBSZWNvcmQgd2hlcmUgdGhlIHpvbmUgYm91bmRhcmll
cyBhcmUgKi8NCj4gIAltZW1zZXQoYXJjaF96b25lX2xvd2VzdF9wb3NzaWJsZV9wZm4sIDAsDQo+
IEBAIC03MzMzLDE0ICs3MzQyLDcgQEAgdm9pZCBfX2luaXQgZnJlZV9hcmVhX2luaXQodW5zaWdu
ZWQgbG9uZyAqbWF4X3pvbmVfcGZuKQ0KPiAgCQkJCXNpemVvZihhcmNoX3pvbmVfaGlnaGVzdF9w
b3NzaWJsZV9wZm4pKTsNCj4gIA0KPiAgCXN0YXJ0X3BmbiA9IGZpbmRfbWluX3Bmbl93aXRoX2Fj
dGl2ZV9yZWdpb25zKCk7DQo+IC0NCj4gLQkvKg0KPiAtCSAqIFNvbWUgYXJjaGl0ZWN0dXJzLCBl
LmcuIEFSQyBtYXkgaGF2ZSBaT05FX0hJR0hNRU0gYmVsb3cNCj4gLQkgKiBaT05FX05PUk1BTC4g
Rm9yIHN1Y2ggY2FzZXMgd2UgYWxsb3cgbWF4X3pvbmVfcGZuIHNvcnRlZCBpbiB0aGUNCj4gLQkg
KiBkZXNjZW5kaW5nIG9yZGVyDQo+IC0JICovDQo+IC0JaWYgKE1BWF9OUl9aT05FUyA+IDEgJiYg
bWF4X3pvbmVfcGZuWzBdID4gbWF4X3pvbmVfcGZuWzFdKQ0KPiAtCQlkZXNjZW5kaW5nID0gdHJ1
ZTsNCj4gKwlkZXNjZW5kaW5nID0gYXJjaF9oYXNfZGVzY2VuZGluZ19tYXhfem9uZV9wZm5zKCk7
DQo+ICANCj4gIAlmb3IgKGkgPSAwOyBpIDwgTUFYX05SX1pPTkVTOyBpKyspIHsNCj4gIAkJaWYg
KGRlc2NlbmRpbmcpDQo+IA0K

