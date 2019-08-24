Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DB139B9F2
	for <lists+linux-riscv@lfdr.de>; Sat, 24 Aug 2019 03:03:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zi7J9/k+0vDZd+mxHNATKA582QIaRONecUzn7dT0v68=; b=VZZJBnZ0heZHLk
	u5PqfdgntTzm41uNsDgFVYZaMuFx5dnsUUPRVcfsudN3+tF72xn0ZFF1EgjXBnOMG1H8vJroS+Im2
	UqcNVNZuz9UwTms4aCuzUYsvcNzN7RbNiQvVQQdITk06HKbzyMvrfKUWb1+HA/z2tNfdETF8pT4Hh
	spw0kaE/5j3UuRhZiFmmgjW8D8jeSzu5V58En10frKo3uPqbM201i9MFX4eNqmICmU6kA2qlLtJsV
	o6AM6teHd+aBaQPcorQrCpC758gdGa4liDKy+uHv8eaoBeSVC0937o9NELjdgGLZWE8SYFcK9Ykzp
	3zcedDVToM64eg/CW+eQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i1KSk-0003z7-9Z; Sat, 24 Aug 2019 01:03:26 +0000
Received: from esa2.hgst.iphmx.com ([68.232.143.124])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i1KSg-0003yl-CP
 for linux-riscv@lists.infradead.org; Sat, 24 Aug 2019 01:03:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1566608676; x=1598144676;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=6qyGNUOKQK3TkE7LvrxZg0+/2tSowEF3yWZJf3U43/A=;
 b=Bn4VTx/DEnv2Vhak2834WR/89G/V+oJQ5gLzi53GK7t7XFEfe1dUX4Dy
 Cn6GQk+LgqZLsmM4nolGNXR7MaIDuQqzOuPAzRnW+MRpM48SYNIXUkQoj
 cxx1dIiRiFfN5XrbhoQ1IWnDrjpmCSp+Q5nJAAFUaJakZtIP39yo18zM8
 c8Caq7CoA0sV4+uIuv/OyXy91Y7dnqbf3gvmmLBbMYhi+/hSocTw/dtBC
 1ycKrcB2lPmiQau5g0O149R/ehu0+T9U58E5N7PMCgondkGYq+lJ+22o6
 /WTboRo8O0wXY+8h/kmc+Z4OK7tNHu1nD1sI7Luvj3pWUsPvoQpeDtiyb A==;
IronPort-SDR: qaajP88uHhMkQ3Xegh3JQ78R1dUOF/jrggWJf1Ms65jgbzT4E9osMgHDG7d5tC94vz6vXKPxDA
 A5KzXODc8dcZhL2it2Kp4Rk4PghHYNVQ5W7EbhL5421qwUWweSSLDv9rohDcNXcY6kxNYSXhpd
 SEwiGUdkhYXxwON7Q05qg8+HZvNRwdKDEUPjJ8kmr5jYMXMSSG/E1CPN000t6Kawlos0C5f+Rg
 IHHfkxoa3X8NJHrS6Q/WEunf3RdDsmNELq1Nzi8H5O/rUYyhsz7Mz9gJHeULynQnxOTNF9VXDp
 5j4=
X-IronPort-AV: E=Sophos;i="5.64,422,1559491200"; d="scan'208";a="217017091"
Received: from mail-bn3nam01lp2059.outbound.protection.outlook.com (HELO
 NAM01-BN3-obe.outbound.protection.outlook.com) ([104.47.33.59])
 by ob1.hgst.iphmx.com with ESMTP; 24 Aug 2019 09:04:32 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Mae1q0ycqnJgqV8XkLDBaSdFFyHAUlE6AH06jzllF/XVLnHz+sqB9IfheWZVRUjXzpD7Zzl5zjT24yua2ooUCu8jEC206eiL1eorVTYTTCE/CNNV6U0rdw7JLSc5qx2GSdGksAM918OWEx7WAuxh9UgPatHcMl+5bHMmwmWBDcvII6PbH39nB7UUYOvfXQ2zFTG/G0ewGFbS4c5ZxhYd6Dt99FcK0RayM5KVd1QHMt1sGe/jewEuILdBnHTMce9mbFHpyx08UBYyfxe12rL+UyxCa5MT3WTS6RSjwHeyGTVD6rpzFb2AcpRy4wiqBva5b8X2eQ3gEm9wCYK1o8DHTA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=6qyGNUOKQK3TkE7LvrxZg0+/2tSowEF3yWZJf3U43/A=;
 b=ibx/uNaScHVENqhjkHNj95O96NVs1wmZ2CBZQ3QrOYwGuouwOw5VeXIky72/+xY2lLqqstuwEIrZVnY/cNkBn5uufL/v9D6KKBohgfcGvEjMpFIRGTAoQp42KNL8sHrg2AMcUsA6TdI4O97UIZyDWLKJ+66OsE+kEJw5dhsnLGBKZ/EhEpkfkT6y0jTQIh1+5z/Yj/YLyWptWjZSYsXsL4gu5ezDLvMrAQ3sn9TA3+fcCTTQGWuMxQlWVhx4QwSssemXqplxFT9N0fWk0gH51IAftiOCyl0LN0Uy3RcC109v9vqqmcZLjisKjWgX9MU+ckmJatf2P8nsDSbzxLBkyQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=6qyGNUOKQK3TkE7LvrxZg0+/2tSowEF3yWZJf3U43/A=;
 b=YuH59yY45ocre+H8gj4nvTTE919V0wzXedQkuuaixOarBGVlvDdR+bCrZbnhH2lBFKsCYLFr0FoMh8duUZvClt2mtVQUM55hANdKfijdf8WT68ddLvbzhilHI/t5UMxqyMeCYYJ6/hMmRjp2H/PD8Qf5qMNz8JwFNb5g1ZxqVlw=
Received: from BYAPR04MB3990.namprd04.prod.outlook.com (52.135.215.29) by
 BYAPR04MB4567.namprd04.prod.outlook.com (52.135.238.28) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2178.18; Sat, 24 Aug 2019 01:03:18 +0000
Received: from BYAPR04MB3990.namprd04.prod.outlook.com
 ([fe80::24ca:5178:5475:9a0e]) by BYAPR04MB3990.namprd04.prod.outlook.com
 ([fe80::24ca:5178:5475:9a0e%4]) with mapi id 15.20.2178.020; Sat, 24 Aug 2019
 01:03:18 +0000
From: Atish Patra <Atish.Patra@wdc.com>
To: "hch@lst.de" <hch@lst.de>, "paul.walmsley@sifive.com"
 <paul.walmsley@sifive.com>, "palmer@sifive.com" <palmer@sifive.com>
Subject: Re: [PATCH 1/6] riscv: refactor the IPI code
Thread-Topic: [PATCH 1/6] riscv: refactor the IPI code
Thread-Index: AQHVWDDvTTCA4LZyTkumyUEXLgekXacJfwuA
Date: Sat, 24 Aug 2019 01:03:18 +0000
Message-ID: <f1560e8528f3908dccc428e47bd1fc33e2ca2aed.camel@wdc.com>
References: <20190821145837.3686-1-hch@lst.de>
 <20190821145837.3686-2-hch@lst.de>
In-Reply-To: <20190821145837.3686-2-hch@lst.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Atish.Patra@wdc.com; 
x-originating-ip: [199.255.44.250]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 414949be-61f3-4924-1cb6-08d7282ed9c1
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(5600166)(711020)(4605104)(1401327)(4618075)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7193020);
 SRVR:BYAPR04MB4567; 
x-ms-traffictypediagnostic: BYAPR04MB4567:
x-microsoft-antispam-prvs: <BYAPR04MB45678D439DB7131DA8F894CEFAA70@BYAPR04MB4567.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:901;
x-forefront-prvs: 0139052FDB
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(39860400002)(366004)(376002)(346002)(136003)(396003)(199004)(189003)(476003)(6436002)(11346002)(66066001)(4326008)(446003)(102836004)(25786009)(8676002)(6512007)(186003)(2501003)(26005)(6506007)(66476007)(81166006)(64756008)(6246003)(8936002)(76116006)(71200400001)(229853002)(14454004)(478600001)(118296001)(486006)(2616005)(86362001)(2201001)(66946007)(2906002)(99286004)(81156014)(76176011)(110136005)(14444005)(305945005)(256004)(5660300002)(36756003)(316002)(7736002)(3846002)(6116002)(53936002)(6486002)(66446008)(66556008)(71190400001);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BYAPR04MB4567;
 H:BYAPR04MB3990.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 1iHLDHES57U9VFhjFNNNBfeIeVvMEIx6q3Eq/Hb+3X+fR+mthcPmh0nURYXf7B2a/qcK32jknA/TRXgmk7fBQ/ASIkLqbzTO1chVbna3KHcEGyWvLROWtpEJOvcYxiXTLsZkFAAOYPI+B9ddvNSXj6x4qoSK8ez0IyyCZUQR00pQvnuNb1PKq+1YO9ET9arUy79SJ0Sz3hAmsXSgYr6uN6PQuhPQTAgKRMCDksIyGLWGw2RO9GN4bx8yGIXBjzhTQF7BsM2qMiffDfdn+bBv6WQhCXt/iJCM4u/EeL7dKpQXEchPZfXqIM1o02K2XUssuazR9/IlrBkKUfiK6HYTlpG0KC9Sobj86m9epUu+ba1msUqwzX1kxwExhaTCoiBqu7vysqeohZeVJDtv65wGAGEWAXGSn3/3EsxPkROxmBw=
x-ms-exchange-transport-forked: True
Content-ID: <0152D5014E75F145B30A23F06A68CFFF@namprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 414949be-61f3-4924-1cb6-08d7282ed9c1
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Aug 2019 01:03:18.2273 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: WnhtwsjbxCGstbl+OiPsQlZU9YJcvHYIG5cZewCTjbPt4E522xIEqHkXQ+cPAEK5iUp/uMiTZDD8OyB+DgvSuw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR04MB4567
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190823_180322_512073_7301311E 
X-CRM114-Status: GOOD (  16.48  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.143.124 listed in list.dnswl.org]
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
> This prepares for adding native non-SBI IPI code.
> 
> Signed-off-by: Christoph Hellwig <hch@lst.de>
> ---
>  arch/riscv/kernel/smp.c | 55 +++++++++++++++++++++++--------------
> ----
>  1 file changed, 31 insertions(+), 24 deletions(-)
> 
> diff --git a/arch/riscv/kernel/smp.c b/arch/riscv/kernel/smp.c
> index 5a9834503a2f..8cd730239613 100644
> --- a/arch/riscv/kernel/smp.c
> +++ b/arch/riscv/kernel/smp.c
> @@ -78,13 +78,38 @@ static void ipi_stop(void)
>  		wait_for_interrupt();
>  }
>  
> +static void send_ipi_mask(const struct cpumask *mask, enum
> ipi_message_type op)
> +{
> +	int cpuid, hartid;
> +	struct cpumask hartid_mask;
> +
> +	cpumask_clear(&hartid_mask);
> +	mb();
> +	for_each_cpu(cpuid, mask) {
> +		set_bit(op, &ipi_data[cpuid].bits);
> +		hartid = cpuid_to_hartid_map(cpuid);
> +		cpumask_set_cpu(hartid, &hartid_mask);
> +	}
> +	mb();
> +	sbi_send_ipi(cpumask_bits(&hartid_mask));
> +}
> +
> +static void send_ipi_single(int cpu, enum ipi_message_type op)
> +{
> +	send_ipi_mask(cpumask_of(cpu), op);
> +}
> +
> +static inline void clear_ipi(void)
> +{
> +	csr_clear(CSR_SIP, SIE_SSIE);
> +}
> +
>  void riscv_software_interrupt(void)
>  {
>  	unsigned long *pending_ipis =
> &ipi_data[smp_processor_id()].bits;
>  	unsigned long *stats = ipi_data[smp_processor_id()].stats;
>  
> -	/* Clear pending IPI */
> -	csr_clear(CSR_SIP, SIE_SSIE);
> +	clear_ipi();
>  
>  	while (true) {
>  		unsigned long ops;
> @@ -118,23 +143,6 @@ void riscv_software_interrupt(void)
>  	}
>  }
>  
> -static void
> -send_ipi_message(const struct cpumask *to_whom, enum
> ipi_message_type operation)
> -{
> -	int cpuid, hartid;
> -	struct cpumask hartid_mask;
> -
> -	cpumask_clear(&hartid_mask);
> -	mb();
> -	for_each_cpu(cpuid, to_whom) {
> -		set_bit(operation, &ipi_data[cpuid].bits);
> -		hartid = cpuid_to_hartid_map(cpuid);
> -		cpumask_set_cpu(hartid, &hartid_mask);
> -	}
> -	mb();
> -	sbi_send_ipi(cpumask_bits(&hartid_mask));
> -}
> -
>  static const char * const ipi_names[] = {
>  	[IPI_RESCHEDULE]	= "Rescheduling interrupts",
>  	[IPI_CALL_FUNC]		= "Function call interrupts",
> @@ -156,12 +164,12 @@ void show_ipi_stats(struct seq_file *p, int
> prec)
>  
>  void arch_send_call_function_ipi_mask(struct cpumask *mask)
>  {
> -	send_ipi_message(mask, IPI_CALL_FUNC);
> +	send_ipi_mask(mask, IPI_CALL_FUNC);
>  }
>  
>  void arch_send_call_function_single_ipi(int cpu)
>  {
> -	send_ipi_message(cpumask_of(cpu), IPI_CALL_FUNC);
> +	send_ipi_single(cpu, IPI_CALL_FUNC);
>  }
>  
>  void smp_send_stop(void)
> @@ -176,7 +184,7 @@ void smp_send_stop(void)
>  
>  		if (system_state <= SYSTEM_RUNNING)
>  			pr_crit("SMP: stopping secondary CPUs\n");
> -		send_ipi_message(&mask, IPI_CPU_STOP);
> +		send_ipi_mask(&mask, IPI_CPU_STOP);
>  	}
>  
>  	/* Wait up to one second for other CPUs to stop */
> @@ -191,6 +199,5 @@ void smp_send_stop(void)
>  
>  void smp_send_reschedule(int cpu)
>  {
> -	send_ipi_message(cpumask_of(cpu), IPI_RESCHEDULE);
> +	send_ipi_single(cpu, IPI_RESCHEDULE);
>  }
> -

Reviewed-by: Atish Patra <atish.patra@wdc.com>

-- 
Regards,
Atish
_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
