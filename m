Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 783A699331
	for <lists+linux-riscv@lfdr.de>; Thu, 22 Aug 2019 14:22:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Dmf3KfqxjeOWYm5fS1Fi6zWzH1tV0tYqwkx5q7C6aag=; b=JJuGNolF52QQot
	i6s7SocHC2ITfVt0bG+DQOCLiqz6FZ8RuC5oiFJIXRJqDgX2S31JSfNvhi8EeawMfxyf4TwxRcekz
	K365nn00/LmAaViGkDLY0ccZQPCpW2TC2AwVvna7E6azCE627bQ1pu0MkypcA0uTR0kyBuHZjhLja
	Oze6rqyZWpEVueTL7RTeT62unDRIVR0JCOzAogDwBlxw4V7vwrlmnmGKk2ADbf9FPJMIiK7qNgfmf
	1YgpoD/aJWmJr43K+jO5my+nhg8fMv6DtcJSznZosx4ITnkbNMIWUjsB07XCOHbEdlquT7bgtyX77
	HZIGsDsxK3GfAklTpcVg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0m6Q-0006Cw-Qu; Thu, 22 Aug 2019 12:22:06 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0m6N-0006CX-67
 for linux-riscv@lists.infradead.org; Thu, 22 Aug 2019 12:22:04 +0000
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 87F277E421;
 Thu, 22 Aug 2019 12:22:02 +0000 (UTC)
Received: from kamzik.brq.redhat.com (unknown [10.43.2.160])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 821B460BF3;
 Thu, 22 Aug 2019 12:21:59 +0000 (UTC)
Date: Thu, 22 Aug 2019 14:21:57 +0200
From: Andrew Jones <drjones@redhat.com>
To: Alexander Graf <graf@amazon.com>
Subject: Re: [PATCH v5 10/20] RISC-V: KVM: Handle MMIO exits for VCPU
Message-ID: <20190822122157.qy3e4rhxthfustn2@kamzik.brq.redhat.com>
References: <20190822084131.114764-1-anup.patel@wdc.com>
 <20190822084131.114764-11-anup.patel@wdc.com>
 <13cf8e10-3f54-a50a-0796-ecb2da4577d2@amazon.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <13cf8e10-3f54-a50a-0796-ecb2da4577d2@amazon.com>
User-Agent: NeoMutt/20180716
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.27]); Thu, 22 Aug 2019 12:22:02 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190822_052203_248469_3A53DADC 
X-CRM114-Status: GOOD (  12.98  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [209.132.183.28 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Damien Le Moal <Damien.LeMoal@wdc.com>, Palmer Dabbelt <palmer@sifive.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 "kvm@vger.kernel.org" <kvm@vger.kernel.org>, Radim K <rkrcmar@redhat.com>,
 Anup Patel <anup@brainfault.org>, Anup Patel <Anup.Patel@wdc.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Christoph Hellwig <hch@infradead.org>, Atish Patra <Atish.Patra@wdc.com>,
 Alistair Francis <Alistair.Francis@wdc.com>,
 Paul Walmsley <paul.walmsley@sifive.com>, Paolo Bonzini <pbonzini@redhat.com>,
 Thomas Gleixner <tglx@linutronix.de>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Thu, Aug 22, 2019 at 02:10:48PM +0200, Alexander Graf wrote:
> On 22.08.19 10:44, Anup Patel wrote:
...
> > +static int emulate_load(struct kvm_vcpu *vcpu, struct kvm_run *run,
> > +			unsigned long fault_addr)
...
> > +	/* Exit to userspace for MMIO emulation */
> > +	vcpu->stat.mmio_exit_user++;
> > +	run->exit_reason = KVM_EXIT_MMIO;
> > +	run->mmio.is_write = false;
> > +	run->mmio.phys_addr = fault_addr;
> > +	run->mmio.len = len;
> > +
> > +	/* Move to next instruction */
> > +	vcpu->arch.guest_context.sepc += INSN_LEN(insn);
> 
> Doesn't that make more sense on the reentry path? What if you want to inject
> an MCE on access to unmapped addresses from user space?
>

I agree. See commit 0d640732dbeb for arm's justification for moving
the instruction skip. But also see

https://patchwork.kernel.org/patch/11109063/

for a needed fix to avoid skipping the instructions multiple times.
It looks like riscv's KVM_RUN ioctl would be vulnerable to that as
well.

Thanks,
drew

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
