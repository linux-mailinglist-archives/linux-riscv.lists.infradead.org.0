Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5269DBADF8
	for <lists+linux-riscv@lfdr.de>; Mon, 23 Sep 2019 08:45:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=3kMHfrqFixny7f5k7QvPo/9BjwLKOq7afYkrBk9ucZM=; b=uCmlmFsR76EG72fsIJCagCNdV
	5x1UG57X2IIjkqrX/ZxVc+Nw7u38OBiMZqdtv8jZR8rDulGnvxf17KoKNAB20vaQghb9Baoa9biP/
	p5cqwzm4DgQeNEHomea04JxOuNMZaJTNEHl01L+6yFfAYaWp77VvuRWo2m3VOzqzDXFUZhPB9MSLo
	Sv22RVTHMRyE7JTCru0++whKrAQKlD3pGk4QH1wq9Xfkfr6689fQjzUFJEqLrkdiaceK2sBh5KwVA
	H6XZoMdGuOaoz8mqIm/cmjy/ETwd/Tj0E1ZlkfY1RK1vsbQjAZx0OaW3MbhIBmH16p5U2V7hIRia0
	t8ZZHNSYg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCI5U-0000Gr-CB; Mon, 23 Sep 2019 06:44:45 +0000
Received: from smtp-fw-6001.amazon.com ([52.95.48.154])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCI5P-0000G5-2n
 for linux-riscv@lists.infradead.org; Mon, 23 Sep 2019 06:44:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amazon.com; i=@amazon.com; q=dns/txt; s=amazon201209;
 t=1569221078; x=1600757078;
 h=subject:to:cc:references:from:message-id:date:
 mime-version:in-reply-to:content-transfer-encoding;
 bh=RgSUTh1W/pPjW8MoN9jzPoRAZYLQRC12Kn961QLA8zA=;
 b=QYDBzydGnBzKvdID2hy2fa/NXbHI0xGpD7tdnIS6OkZvX1u9djkL66X9
 oA1cRu6WATbjimBbBLd/47v+ST56lvb7xpmWW8TFnRbNjHlZ7cn9Y4nct
 /Fj5c75FVd8NGHYAAQHC/hq5Z/zV8vQiQGAwOLdYFIFT3CxUEKupG9OyG Y=;
X-IronPort-AV: E=Sophos;i="5.64,539,1559520000"; d="scan'208";a="416897595"
Received: from iad6-co-svc-p1-lb1-vlan3.amazon.com (HELO
 email-inbound-relay-1d-74cf8b49.us-east-1.amazon.com) ([10.124.125.6])
 by smtp-border-fw-out-6001.iad6.amazon.com with ESMTP;
 23 Sep 2019 06:44:35 +0000
Received: from EX13MTAUWC001.ant.amazon.com
 (iad55-ws-svc-p15-lb9-vlan2.iad.amazon.com [10.40.159.162])
 by email-inbound-relay-1d-74cf8b49.us-east-1.amazon.com (Postfix) with ESMTPS
 id EC80DC0C6A; Mon, 23 Sep 2019 06:44:30 +0000 (UTC)
Received: from EX13D20UWC001.ant.amazon.com (10.43.162.244) by
 EX13MTAUWC001.ant.amazon.com (10.43.162.135) with Microsoft SMTP Server (TLS)
 id 15.0.1367.3; Mon, 23 Sep 2019 06:44:30 +0000
Received: from 38f9d3867b82.ant.amazon.com (10.43.162.74) by
 EX13D20UWC001.ant.amazon.com (10.43.162.244) with Microsoft SMTP Server (TLS)
 id 15.0.1367.3; Mon, 23 Sep 2019 06:44:25 +0000
Subject: Re: [PATCH v7 06/21] RISC-V: KVM: Implement VCPU create, init and
 destroy functions
To: Anup Patel <Anup.Patel@wdc.com>, Palmer Dabbelt <palmer@sifive.com>, "Paul
 Walmsley" <paul.walmsley@sifive.com>, Paolo Bonzini <pbonzini@redhat.com>, 
 Radim K <rkrcmar@redhat.com>
References: <20190904161245.111924-1-anup.patel@wdc.com>
 <20190904161245.111924-8-anup.patel@wdc.com>
From: Alexander Graf <graf@amazon.com>
Message-ID: <520eed26-9332-1519-44b1-fb08b6410116@amazon.com>
Date: Mon, 23 Sep 2019 08:44:22 +0200
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.14; rv:60.0)
 Gecko/20100101 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20190904161245.111924-8-anup.patel@wdc.com>
Content-Language: en-US
X-Originating-IP: [10.43.162.74]
X-ClientProxiedBy: EX13D29UWA004.ant.amazon.com (10.43.160.33) To
 EX13D20UWC001.ant.amazon.com (10.43.162.244)
Precedence: Bulk
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190922_234439_276872_D22578A2 
X-CRM114-Status: UNSURE (   5.34  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.2 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [52.95.48.154 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-riscv@lists.infradead.org
X-Mailman-Version: 2.1.29
List-Id: <linux-riscv.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-riscv>,
 <mailto:linux-riscv-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-riscv/>
List-Post: <mailto:linux-riscv@lists.infradead.org>
List-Help: <mailto:linux-riscv-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-riscv>,
 <mailto:linux-riscv-request@lists.infradead.org?subject=subscribe>
Cc: Damien Le Moal <Damien.LeMoal@wdc.com>,
 "kvm@vger.kernel.org" <kvm@vger.kernel.org>, Anup Patel <anup@brainfault.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Christoph Hellwig <hch@infradead.org>, Atish Patra <Atish.Patra@wdc.com>,
 Alistair Francis <Alistair.Francis@wdc.com>,
 Thomas Gleixner <tglx@linutronix.de>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org



On 04.09.19 18:14, Anup Patel wrote:
> This patch implements VCPU create, init and destroy functions
> required by generic KVM module. We don't have much dynamic
> resources in struct kvm_vcpu_arch so thest functions are quite

Since you're respinning for v8 anyway, please s/thest/these/ :)

Alex




Amazon Development Center Germany GmbH
Krausenstr. 38
10117 Berlin
Geschaeftsfuehrung: Christian Schlaeger, Ralf Herbrich
Eingetragen am Amtsgericht Charlottenburg unter HRB 149173 B
Sitz: Berlin
Ust-ID: DE 289 237 879


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
