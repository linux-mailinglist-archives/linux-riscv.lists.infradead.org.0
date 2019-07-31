Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1035A7BA94
	for <lists+linux-riscv@lfdr.de>; Wed, 31 Jul 2019 09:19:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=e4Y9/fRzbiwKngb5JUmw3vBR6o+VzmBZzX2DTI0wpRE=; b=Q069Or83ZmonRj
	+Q0xGJRmV0DalQHwI9MDoaRKXQSE64hc97tp8+xX4kTs+CHCL/YVIVuOSFGkmgV7eEY0WwLEj+IiT
	J/IVs6BSSfzlenXgvRkRatUdcPA52ttvvu20MO3piGbip7PDFMYn8fZIEqLdF9jaZBu1scXm3T8nl
	VAAKuaGJbfOcdgJQdJ4ubiH5hdkdseM2+8gTWdT7eF1ykrB1hBvo5D3JZp/8AFMTn/7IpUeXx8fMt
	5dkrt46LrLZJCX+Ys2QgbfdOe+pDFJf7qD77wLgG6HZrH0mryJygc4SH99W23rrE6dhshRQfWtK6I
	jaKHm14Bu8J/rk5WwtKg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsit2-0006Lm-9x; Wed, 31 Jul 2019 07:19:00 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsisw-0006LP-Mf
 for linux-riscv@lists.infradead.org; Wed, 31 Jul 2019 07:18:56 +0000
Received: by mail-wm1-x343.google.com with SMTP id a15so59578710wmj.5
 for <linux-riscv@lists.infradead.org>; Wed, 31 Jul 2019 00:18:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=brainfault-org.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=KtSNFiPVmHNMGf6EfCgApRoebnc5Uef1+tJZX1b5aA8=;
 b=houTSLkWhFruGS1YjP+F2HpMrtJKvRK3yOUcGB2tYJsjZigE90sUSKY40izByu2hKj
 Ure9Oo/Xq6LZXTR/nbw7gSnqxopbYu1OetoClC7ERoctUDTXYJlQwLBybE5F9t0F3ofF
 rE+qSdtkpKNe6aXBNmD8Hjarz9xZmxkqK0jbCnSNGOO+w3DC1u+SP3nnPYpW3+yIRvnL
 Ov45LxDeqCEV/YWYIZZhigyrxKlCiTOKqycngm3y6+Dqe7zpRJiRtqq26iDY2nZM/VXj
 jRGa5W72huDFQJUPtvtE656mqeZ9BBuJpCXC0SKZPozz1akAEzSAVEJE6wHgrQcJib0I
 0MFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=KtSNFiPVmHNMGf6EfCgApRoebnc5Uef1+tJZX1b5aA8=;
 b=cgLKOhpm1yqq/ICruk9Xh1gf8F0y6Kbk3hOctUZR7THpdKbqb7wqu2xj8dhJ6DOXzL
 wj4lLX+jq/ivMM4xXCn1HHJC2DeCVere4xwqwZtZ8SiK8BiZuvrh1Uz7nRrQuG0PafDi
 pxHNwOreq490MyqKtCRJJc8SswUbI2aS41X28JuoKzYM0xMAd9g7O36QPS5LuyPH7UNz
 NW13P2oSHJVxwzNGysigMMWsjwtncP2unuukxQEgWu2g2iDnAv6p5D1WINWL9KD56+z5
 FValIq6G6xPtoZqmkQyMqT0oC32H/reg5Zuz4IbusvXcqNlyVqXzl/iUk1L9L2Ur1Vzs
 8hFQ==
X-Gm-Message-State: APjAAAVZbeVp8T/uFQs/wpJtomh34k7Pb3y+q0JND8ZO+r5HnooMiVa1
 pCiCqLcYVcjyyqTExaQAZjKMC2SkVNZMhb8ricg=
X-Google-Smtp-Source: APXvYqy52+S5rr0NnlEGRsA77YNyOQmNKrtlbAN8NxTIIT8HZ+91Pp6OkSOIRc4QpchzintHUX5ziKABydJCtuPT/iY=
X-Received: by 2002:a1c:be05:: with SMTP id o5mr110753474wmf.52.1564557532038; 
 Wed, 31 Jul 2019 00:18:52 -0700 (PDT)
MIME-Version: 1.0
References: <20190729115544.17895-1-anup.patel@wdc.com>
 <20190729115544.17895-14-anup.patel@wdc.com>
 <abedb067-b91f-8821-9bce-d27f6c4efdee@redhat.com>
 <7fe9e845c33e49e4c215e12b1ee1b5ed86a95bc1.camel@wdc.com>
 <0be68aeb-06de-71c7-375e-95f82112dae1@redhat.com>
In-Reply-To: <0be68aeb-06de-71c7-375e-95f82112dae1@redhat.com>
From: Anup Patel <anup@brainfault.org>
Date: Wed, 31 Jul 2019 12:48:40 +0530
Message-ID: <CAAhSdy2KoYW0BiuUhZ9BEYH1wmh5xg6zcifF-rHPk5iktBBytQ@mail.gmail.com>
Subject: Re: [RFC PATCH 13/16] RISC-V: KVM: Add timer functionality
To: Paolo Bonzini <pbonzini@redhat.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_001854_803859_1FF2F955 
X-CRM114-Status: GOOD (  14.87  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Damien Le Moal <Damien.LeMoal@wdc.com>,
 "palmer@sifive.com" <palmer@sifive.com>,
 "daniel.lezcano@linaro.org" <daniel.lezcano@linaro.org>,
 "kvm@vger.kernel.org" <kvm@vger.kernel.org>,
 "rkrcmar@redhat.com" <rkrcmar@redhat.com>, Anup Patel <Anup.Patel@wdc.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "hch@infradead.org" <hch@infradead.org>, Atish Patra <Atish.Patra@wdc.com>,
 Alistair Francis <Alistair.Francis@wdc.com>,
 "paul.walmsley@sifive.com" <paul.walmsley@sifive.com>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>,
 "tglx@linutronix.de" <tglx@linutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Wed, Jul 31, 2019 at 12:28 PM Paolo Bonzini <pbonzini@redhat.com> wrote:
>
> On 31/07/19 03:55, Atish Patra wrote:
> > On Tue, 2019-07-30 at 13:26 +0200, Paolo Bonzini wrote:
> >> On 29/07/19 13:57, Anup Patel wrote:
> >>> +   if (delta_ns > VCPU_TIMER_PROGRAM_THRESHOLD_NS) {
> >>> +           hrtimer_start(&t->hrt, ktime_add_ns(ktime_get(),
> >>> delta_ns),
> >>
> >> I think the guest would prefer if you saved the time before enabling
> >> interrupts on the host, and use that here instead of ktime_get().
> >> Otherwise the timer could be delayed arbitrarily by host interrupts.
> >>
> >> (Because the RISC-V SBI timer is relative only---which is
> >> unfortunate---
> >
> > Just to clarify: RISC-V SBI timer call passes absolute time.
> >
> > https://elixir.bootlin.com/linux/v5.3-rc2/source/drivers/clocksource/timer-riscv.c#L32
> >
> > That's why we compute a delta between absolute time passed via SBI and
> > current time. hrtimer is programmed to trigger only after the delta
> > time from now.
>
> Nevermind, I got lost in all the conversions.
>
> One important issue is the lack of ability to program a delta between
> HS/HU-mode cycles and VS/VU-mode cycles.  Without this, it's impossible
> to do virtual machine migration (except with hcounteren
> trap-and-emulate, which I think we agree is not acceptable).  I found
> the open issue at https://github.com/riscv/riscv-isa-manual/issues/298
> and commented on it.

This Github issue is open since quite some time now.

Thanks for commenting. I have pinged RISC-V spec maintainers as well.

Regards,
Anup

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
