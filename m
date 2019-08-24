Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DE909B98C
	for <lists+linux-riscv@lfdr.de>; Sat, 24 Aug 2019 02:26:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3VZwBaytuxKtw0Pk1zxEZJGIbhmu/dZXGdq2vSi8vBI=; b=BjWfr1FB6Dmrl4
	LEu7dQ4CNbvBU895umnb3/FyXPq51b56xDoT2wo7cnXjmDsmPCdrhu2YoJAE8agBO+ThJoPcR9PTq
	jxEGWQW5xCefe077o+0K9jgeIbEIzbzEw754FykOOdwg9L1EKwuU4Sfwk9cID4IFRxBnhgojqcM+Z
	d1hkObHBOyZj2OgwLW0f8od+42i+fpRcOYM46UBfTckFleIGi9lJAnzp/d+Vr+46qtnzs8O558jE/
	RmDw+16FaL9Tcaf0+18lbe4a+e+oKOBYzIXplJoIPebWRyC7EkXsseLbE5a/hGThCo27pzkOSdbJn
	6e6WGwpjni5lIdCVV3Tg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i1Jt2-0000BO-Nh; Sat, 24 Aug 2019 00:26:32 +0000
Received: from esa4.hgst.iphmx.com ([216.71.154.42])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i1Jsy-0000B2-MP
 for linux-riscv@lists.infradead.org; Sat, 24 Aug 2019 00:26:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1566606389; x=1598142389;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=gsAncLDvwL9hqeF0qL6k1D3jTJQpjyDvdfu1ZgTbbKM=;
 b=qtPUCUWet+45g3gWyiek2GE2CjFjdqbQaYw5LdR0alz+GqstqWq/BSuI
 r5Skrx2/yw70t50vX6SLyszG59kHyHfaG8ZlHyZJ+oH8+4ibvR9okKf4/
 gI8btvhTK7do5SJAaYIhzam0iaD4Kj0dJzFawAn0X1exOwr3tAaegT8g+
 JFYmCVdZxocldVQmo3vJWl1ahpjBiOQz4rvuWc6VOYWdiL/QgqDazqQc+
 VmilXTQx7QwwDkrSzQNdgqQOMvbU3Nsz8g2FB68Hz+Heqrae9bAJ98X7X
 C9Vi2oFbmDaYQxNT4pGBGt44M0KUFmc58kaUN/iaOLFaSKPOSbg4fNSKD A==;
IronPort-SDR: ZYnXichf9t4BnBg048dvVq1J8LT9SzrY+UWC6S2k5Lj/akwsj2QjLjDzX7kpvsRqmj8AA9RWgP
 wUNOMqvjMwOovUph0hMm+0xcrGd/ZRK2TACRTosBoBwLfbuCDsNsMAzqudReRoR3Sy+MYgh8Vu
 wVK0cNmMhESJeVxs36Bcmqy3O4IgBXErlAwOj8WwfgqXR95DHToN/YonqhwGmKp6qLcjpAchPy
 eBV/BTwxT7vVHnSzseZxRAKwqg28Ea3t2HpJWhCOGSqMUvJOdrKfa0kTsq6T36aaW7RlDGNZTd
 c8s=
X-IronPort-AV: E=Sophos;i="5.64,422,1559491200"; d="scan'208";a="116564801"
Received: from mail-dm3nam03lp2058.outbound.protection.outlook.com (HELO
 NAM03-DM3-obe.outbound.protection.outlook.com) ([104.47.41.58])
 by ob1.hgst.iphmx.com with ESMTP; 24 Aug 2019 08:26:28 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=TFhvwRPwNfuyrH3tRG3j4ba9Pc0E3jfCwUgvmgegZeaBxSyMcAM0uud/eaw2JZvKp5+q/2gyDHn3t6f4KCijn4yMRISRX1QAkmucOTQkQODy2R8TQQnucy2r17dIbOmgdn4/L7byMdsmm5/83GBcJR++HZO8Aht7xIn+lqZW1K0hZXtjN4ZSOgqAlf8vGjCOLl1nuNLY8n9R4OtQhN91P/EsRY1tEmItq0DEErA8x01a+/M8Ibct9dTaGd41o5J+GEER20QUe7TQoswRdGvpQAdu529xtR9I9Ikif/sRgnB78fCzFh/POgSmMEeHoSCsHmHJ7p6kZImsa7Oc0+ieRw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=gsAncLDvwL9hqeF0qL6k1D3jTJQpjyDvdfu1ZgTbbKM=;
 b=fDlHYnDgy3LO93qD1UkVClzqmwRW0GA5IguhOk8nwTa/dYr8bbxl+wq9749r55oDPIDnKQMOKPlKa99BgBndVuKvpzX05GWwOJZFxJuPQMJBcArwv1sCOpHSxrQvvtR1e2ug7lGmv/7QIUqC32NCuq1MHiqCuvY8n2NIERa1hSiaQyJaLQeXHa6HGR7e3UiHCZNrXWJl7QFXbw8yZKIGzWe5mkg0H3DEhfOZK1hZRQGIqSQ9wkePqKqmEKi4cE9KRJQcTkRrdlL2vDSKuxxDuEpY8a40L9aHf84DA08X3vFti7YjMcRZOjvDJrDdAtw+T2lEjXfkD8XEyp/AqV7YFQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=gsAncLDvwL9hqeF0qL6k1D3jTJQpjyDvdfu1ZgTbbKM=;
 b=TQ2YXfy27JnH6pKOpBniMKpY3mgKsdfYBpcFPDowJIOxYIgNqyydvpjvRyh6bgZjQFwPPkw/2uw3fzkAKynJ1Qn79FX9HJ5gfXRo4duHUt3/KzaaMc208xXK83X+db1HBrAtYnjo8hxYQBb5wkVzUmQ8MVmldwKhpmpxjiBlE44=
Received: from BYAPR04MB3990.namprd04.prod.outlook.com (52.135.215.29) by
 BYAPR04MB4328.namprd04.prod.outlook.com (20.176.251.142) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2178.18; Sat, 24 Aug 2019 00:26:26 +0000
Received: from BYAPR04MB3990.namprd04.prod.outlook.com
 ([fe80::24ca:5178:5475:9a0e]) by BYAPR04MB3990.namprd04.prod.outlook.com
 ([fe80::24ca:5178:5475:9a0e%4]) with mapi id 15.20.2178.020; Sat, 24 Aug 2019
 00:26:26 +0000
From: Atish Patra <Atish.Patra@wdc.com>
To: "hch@lst.de" <hch@lst.de>, "paul.walmsley@sifive.com"
 <paul.walmsley@sifive.com>, "palmer@sifive.com" <palmer@sifive.com>
Subject: Re: [PATCH 3/6] riscv: optimize send_ipi_single
Thread-Topic: [PATCH 3/6] riscv: optimize send_ipi_single
Thread-Index: AQHVWDDxfnbVTe5iuEuvupmU0K/L86cJdL6A
Date: Sat, 24 Aug 2019 00:26:26 +0000
Message-ID: <570f358ed76092a4072b5acedd4ddb34c318ff9b.camel@wdc.com>
References: <20190821145837.3686-1-hch@lst.de>
 <20190821145837.3686-4-hch@lst.de>
In-Reply-To: <20190821145837.3686-4-hch@lst.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Atish.Patra@wdc.com; 
x-originating-ip: [199.255.44.250]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 52a5737a-28e4-4ce7-2f69-08d72829b376
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600166)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:BYAPR04MB4328; 
x-ms-traffictypediagnostic: BYAPR04MB4328:
x-microsoft-antispam-prvs: <BYAPR04MB4328061EE323C4C939DC2BD8FAA70@BYAPR04MB4328.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:4941;
x-forefront-prvs: 0139052FDB
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(136003)(346002)(39860400002)(396003)(366004)(376002)(189003)(199004)(66946007)(446003)(2616005)(53936002)(6436002)(6116002)(3846002)(11346002)(25786009)(478600001)(7736002)(316002)(229853002)(66476007)(66066001)(66556008)(118296001)(2906002)(6486002)(64756008)(66446008)(102836004)(6506007)(76116006)(6512007)(186003)(486006)(26005)(6246003)(476003)(36756003)(305945005)(14444005)(256004)(99286004)(14454004)(86362001)(2201001)(4326008)(81166006)(81156014)(8936002)(71200400001)(71190400001)(8676002)(5660300002)(76176011)(2501003)(110136005);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BYAPR04MB4328;
 H:BYAPR04MB3990.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: fCVjajyJrgPjgw+PI6vovncoS3jsQ85siJqxP9tib+E5ruf4fVoWQ4tlyhCexYWzMHIAg+DOguf+dYVp7fEkWU555Avu11MMcxlrIUyO7EVkTZm//u8Jw+Y3vZ9DbfOLuX1coJJLV3cHysbv/6du5onVh83xnIv6Al6yak12BRpv23VJ7hNHdRVXTO0IFl7Zw7PMfCqupTeDz+H542I0SDOaU52mQjoEB5FajT9dESMsHCu9c9tzKFPA1iXF/li1+Bek3/OGOs6bq/a5l0sz5GuxZdlXf6+k4zrWhwCvhG0NJST/W8n4aSZj3rZQzBiMvBaCRl911j8ZbEnbLuxc9qiFQLlEow1pcVFLECRIQw9Gr0Kon23DReXjN19s43klXnP+bhB7Sx9+6j4c/mDtnN/7PwkYiKJI6c5OTOvzJi8=
x-ms-exchange-transport-forked: True
Content-ID: <3D4D84A2442E0747BAFFB1DFE17AE9D1@namprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 52a5737a-28e4-4ce7-2f69-08d72829b376
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Aug 2019 00:26:26.5352 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: eZjJBv8div17tp7uBAjV+unIzpiRIzUp2XQlX07hsowexJDKNCl6ce9Q32zV1T0q9Uif+fJfFpZ+3QvzUL55gQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR04MB4328
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190823_172628_798055_CDA51517 
X-CRM114-Status: GOOD (  17.18  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.154.42 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Wed, 2019-08-21 at 23:58 +0900, Christoph Hellwig wrote:
> Don't go through send_ipi_mask, but just set the op bit an then pass
> a
> simple generate hartid mask directly to sbi_send_ipi.
> 
> Signed-off-by: Christoph Hellwig <hch@lst.de>
> ---
>  arch/riscv/kernel/smp.c | 8 +++++++-
>  1 file changed, 7 insertions(+), 1 deletion(-)
> 
> diff --git a/arch/riscv/kernel/smp.c b/arch/riscv/kernel/smp.c
> index 2e21669aa068..a3715d621f60 100644
> --- a/arch/riscv/kernel/smp.c
> +++ b/arch/riscv/kernel/smp.c
> @@ -94,7 +94,13 @@ static void send_ipi_mask(const struct cpumask
> *mask, enum ipi_message_type op)
>  
>  static void send_ipi_single(int cpu, enum ipi_message_type op)
>  {
> -	send_ipi_mask(cpumask_of(cpu), op);
> +	int hartid = cpuid_to_hartid_map(cpu);
> +
> +	smp_mb__before_atomic();
> +	set_bit(op, &ipi_data[cpu].bits);
> +	smp_mb__after_atomic();
> +
> +	sbi_send_ipi(cpumask_bits(cpumask_of(hartid)));

The only cost save I see is you don't have to cpumask_clear anymore.
Is there any other cost save ? If not is it worth duplicating the code
?

May be I am being too pedantic here.. :) :)

>  }
>  
>  static inline void clear_ipi(void)

-- 
Regards,
Atish
_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
