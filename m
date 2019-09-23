Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D487ABAE01
	for <lists+linux-riscv@lfdr.de>; Mon, 23 Sep 2019 08:51:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=yshLEGD+y/mnzS9nEUrwTTwbmpCk5XY7AcZfTiC2z4I=; b=NR33h3ZiBtgcSFRgIi6KHgHul
	ImA/F+kw+ExG49x/98SPLAOsu57VenfB87MuKqMofRnzxi3Jda/Aak5qR0HsCu5FwwUEDkVhF3H+0
	QA5d56TnrRYLdLjxDkHB4WBHkECDFO0U9GLtpmkvW1KhZK9dyMXaxqu/LLYrRIc8zgzIU4DkHsvgu
	XNse1OaE3zplGt/r00I1WW9+3C9q/r/DoCkmlGY7ZELwU+rGBvk16GyNTRK+wgsAAlMy7khRbXRs3
	ns7rp27qRe4v9DLHIHWvrm5SBiLFdKwNTcNPaURvH8eMHAd/PDw7gaL5Lv+lGYrO8OE/ryNl4+557
	/Wv2B8mDg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCIBX-00036Y-Op; Mon, 23 Sep 2019 06:51:00 +0000
Received: from smtp-fw-2101.amazon.com ([72.21.196.25])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCIBO-000366-5v
 for linux-riscv@lists.infradead.org; Mon, 23 Sep 2019 06:50:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amazon.com; i=@amazon.com; q=dns/txt; s=amazon201209;
 t=1569221450; x=1600757450;
 h=subject:to:cc:references:from:message-id:date:
 mime-version:in-reply-to:content-transfer-encoding;
 bh=66BxKyEsadOoOfbaqrGNVZTKJUAK251j6+K+EAtqSQE=;
 b=bRQc995StoNJ9I/P/nYimA6mNn+gORKaKiRzbfOC3pZvgX7OXE6hZb/+
 vdoL52MG0iffT4g6d1CyXnFSuOZz9Aa98Pt13OmqqJYFt5/6UOFfH1zlD
 63xIEs3RXgebVIOw/8PHmQolXuQEI+rERuheQr/K8Qzyi2WuznmwZaX71 k=;
X-IronPort-AV: E=Sophos;i="5.64,539,1559520000"; d="scan'208";a="752436814"
Received: from iad6-co-svc-p1-lb1-vlan2.amazon.com (HELO
 email-inbound-relay-1d-474bcd9f.us-east-1.amazon.com) ([10.124.125.2])
 by smtp-border-fw-out-2101.iad2.amazon.com with ESMTP;
 23 Sep 2019 06:50:46 +0000
Received: from EX13MTAUWC001.ant.amazon.com
 (iad55-ws-svc-p15-lb9-vlan2.iad.amazon.com [10.40.159.162])
 by email-inbound-relay-1d-474bcd9f.us-east-1.amazon.com (Postfix) with ESMTPS
 id 1C6D1A2423; Mon, 23 Sep 2019 06:50:41 +0000 (UTC)
Received: from EX13D20UWC001.ant.amazon.com (10.43.162.244) by
 EX13MTAUWC001.ant.amazon.com (10.43.162.135) with Microsoft SMTP Server (TLS)
 id 15.0.1367.3; Mon, 23 Sep 2019 06:50:41 +0000
Received: from 38f9d3867b82.ant.amazon.com (10.43.161.217) by
 EX13D20UWC001.ant.amazon.com (10.43.162.244) with Microsoft SMTP Server (TLS)
 id 15.0.1367.3; Mon, 23 Sep 2019 06:50:36 +0000
Subject: Re: [PATCH v7 10/21] RISC-V: KVM: Handle MMIO exits for VCPU
To: Anup Patel <Anup.Patel@wdc.com>, Palmer Dabbelt <palmer@sifive.com>, "Paul
 Walmsley" <paul.walmsley@sifive.com>, Paolo Bonzini <pbonzini@redhat.com>, 
 Radim K <rkrcmar@redhat.com>
References: <20190904161245.111924-1-anup.patel@wdc.com>
 <20190904161245.111924-12-anup.patel@wdc.com>
From: Alexander Graf <graf@amazon.com>
Message-ID: <f5bf0227-5066-5fcc-55bd-9a3777826404@amazon.com>
Date: Mon, 23 Sep 2019 08:50:27 +0200
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.14; rv:60.0)
 Gecko/20100101 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20190904161245.111924-12-anup.patel@wdc.com>
Content-Language: en-US
X-Originating-IP: [10.43.161.217]
X-ClientProxiedBy: EX13D29UWC001.ant.amazon.com (10.43.162.143) To
 EX13D20UWC001.ant.amazon.com (10.43.162.244)
Precedence: Bulk
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190922_235050_351043_E7585437 
X-CRM114-Status: GOOD (  10.92  )
X-Spam-Score: -4.9 (----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-4.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [72.21.196.25 listed in list.dnswl.org]
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



On 04.09.19 18:15, Anup Patel wrote:
> We will get stage2 page faults whenever Guest/VM access SW emulated
> MMIO device or unmapped Guest RAM.
> 
> This patch implements MMIO read/write emulation by extracting MMIO
> details from the trapped load/store instruction and forwarding the
> MMIO read/write to user-space. The actual MMIO emulation will happen
> in user-space and KVM kernel module will only take care of register
> updates before resuming the trapped VCPU.
> 
> The handling for stage2 page faults for unmapped Guest RAM will be
> implemeted by a separate patch later.
> 
> Signed-off-by: Anup Patel <anup.patel@wdc.com>
> Acked-by: Paolo Bonzini <pbonzini@redhat.com>
> Reviewed-by: Paolo Bonzini <pbonzini@redhat.com>

This version is indeed much better. I would not mind a bit more 
documentation when it comes to implicit register value assumptions (a0, 
a1 in the trap handler), but the code is small enough that someone who 
cares can figure it out quickly enough.

Reviewed-by: Alexander Graf <graf@amazon.com>


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
