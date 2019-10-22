Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 463F8DFCF6
	for <lists+linux-riscv@lfdr.de>; Tue, 22 Oct 2019 07:08:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=v0sPxPU8diEKMI8ONLnLVCldPm45X2r/qootUV3kbJk=; b=Bddi/260hLoNc9
	aD7fbCKIT4uRW/elxsbZDl98dG0Nugw2Gcu0OVNIxCvWj6aJX2VX25yrAS31dSWMKY9haikA5Qw99
	dYXo/w6iewqv0aSMS6yyBU6CvypWaheXq5tu+bkoZHs+xc1lRVE8VmnEzA1Wxhx4vtdzjjyPIeMM/
	XGNv17ldUEOXnRaZed+apsq2YPh3TzEd+jXZJeYOmqtT7nOp3YBAz5AnUBwTHL1xiwopwm7COWnbq
	E8ti7E2KvecJHxlT0ehguZJwRESwHm0mmcKmUhcbi6spFkZtsFRDx8i84S+PXbka8uQSNVdBTyX5K
	tbJJeSVZerSkBVd0VZQA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMmOm-0001zt-28; Tue, 22 Oct 2019 05:08:00 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMmOj-0001yf-7Z
 for linux-riscv@lists.infradead.org; Tue, 22 Oct 2019 05:07:58 +0000
Received: by mail-wm1-x344.google.com with SMTP id 3so14786255wmi.3
 for <linux-riscv@lists.infradead.org>; Mon, 21 Oct 2019 22:07:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=brainfault-org.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=bTTMrmciHM4aiFMZR2LK71art6dDZteKsZ9m8QnTfYE=;
 b=t5XI80Bi4Lrln9mq+PcmKnh/yO/hMUHXGheJlgPjZHmjiOAKjNpjlwjXrH4e/9yOUp
 mR8jmhWjv/5OpGM8yjQhMT8lwxbmAwBue+sy9/eMu5EVFXjYnAzl3zU2VUOWqfu32NZM
 Z3zKuEf4f89oQkuqGUuY3+NKXqsGn82fXWfMpOdyot1HwqClZ0rZbi6horJoccoHlqBr
 kwilw8JQ+36mVE/vxn2gYkr710UiwpoIXu4c7yr5Z6txLx1fUYfbJjV7PbNxFvpZlrFo
 UqUOOHNXqgUT5BX0UdU1JbK4lADmJtAa4wyL7NBU3sCdNhXQnJrx368cQvjh4NYcUPA4
 8zGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=bTTMrmciHM4aiFMZR2LK71art6dDZteKsZ9m8QnTfYE=;
 b=nqZ01GmIAKqRzGL32I9Jx+XgGyZLkgmxmWoSzCh6rrmGzU1FiIQ5dagNJuuM1AFEcz
 JKRMuPpeiFHLnYgEsI+gYykh1G6E75NtI6X6Wxe1XZitHJqlkaszGqrHcswqsNojPNZy
 QMldyx2CSSbb91agwMm8wESGAl99z0cqym5n/bdIBXY/7N1oP/ILCrRkVurB7HVYnNMh
 lWh04fpy2cP4Ja8qxLXKMIMm2X/ckg7xNwgsoInMhcpJmP0CokXxJWJNbpRLqQl/Tl5L
 ZKhlX+vzbJ6EnDMKy1NQLDb84Eg/JGkyzsl3cD2PpI0wIsZEOrcH4klmO0zgVd5dqyIk
 QDUQ==
X-Gm-Message-State: APjAAAXJGtG3mAHFVSasLfb9tSMK2iv5QV5VSK3iG/08NDYE1gogrbUd
 ixRtchVtnplfXOHUOzUevQSlE0KxY65PFCs7FAGWzg==
X-Google-Smtp-Source: APXvYqxl6FUWzhNJmV/twRIMg5J5dk1jL54DHL5eRqSLGaUjuAJZJFHphqKMrxpAOmdnSQ0pZAWlWkDR4Yx7NICACVk=
X-Received: by 2002:a1c:9695:: with SMTP id y143mr1119738wmd.103.1571720874948; 
 Mon, 21 Oct 2019 22:07:54 -0700 (PDT)
MIME-Version: 1.0
References: <20191016160649.24622-1-anup.patel@wdc.com>
 <20191016160649.24622-21-anup.patel@wdc.com>
 <1d2e9514-235e-183e-b4fc-d3becc9ce471@redhat.com>
In-Reply-To: <1d2e9514-235e-183e-b4fc-d3becc9ce471@redhat.com>
From: Anup Patel <anup@brainfault.org>
Date: Tue, 22 Oct 2019 10:37:43 +0530
Message-ID: <CAAhSdy33b=EcNnNP80dNqAEpSOErfXenNXHD0GhC4yYPB7L3Ow@mail.gmail.com>
Subject: Re: [PATCH v9 20/22] RISC-V: KVM: Fix race-condition in
 kvm_riscv_vcpu_sync_interrupts()
To: Paolo Bonzini <pbonzini@redhat.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191021_220757_318417_5A0E0FEE 
X-CRM114-Status: GOOD (  10.19  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
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
Cc: Damien Le Moal <Damien.LeMoal@wdc.com>, Palmer Dabbelt <palmer@sifive.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 "kvm@vger.kernel.org" <kvm@vger.kernel.org>, Radim K <rkrcmar@redhat.com>,
 Anup Patel <Anup.Patel@wdc.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Christoph Hellwig <hch@infradead.org>, Atish Patra <Atish.Patra@wdc.com>,
 Alexander Graf <graf@amazon.com>, Paul Walmsley <paul.walmsley@sifive.com>,
 Alistair Francis <Alistair.Francis@wdc.com>,
 Thomas Gleixner <tglx@linutronix.de>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Mon, Oct 21, 2019 at 10:57 PM Paolo Bonzini <pbonzini@redhat.com> wrote:
>
> On 16/10/19 18:12, Anup Patel wrote:
> > +     /* Read current VSIP and VSIE CSRs */
> > +     vsip = csr_read(CSR_VSIP);
> > +     csr->vsie = csr_read(CSR_VSIE);
> > +
> > +     /* Sync-up VSIP.SSIP bit changes does by Guest */
> > +     if ((csr->vsip ^ vsip) & (1UL << IRQ_S_SOFT)) {
> > +             if (!test_and_set_bit(IRQ_S_SOFT, &v->irqs_pending_mask)) {
> > +                     if (vsip & (1UL << IRQ_S_SOFT))
> > +                             set_bit(IRQ_S_SOFT, &v->irqs_pending);
> > +                     else
> > +                             clear_bit(IRQ_S_SOFT, &v->irqs_pending);
> > +             }
>
> Looks good, but I wonder if this could just be "csr->vsip =
> csr_read(CSR_VSIP)", which will be fixed up by flush_interrupts on the
> next entry.

It's not just "csr->vsip = csr_read(CSR_VSIP" because "irqs_pending"
bitmap has to be in-sync with Guest updates to VSIP because WFI
trap-n-emulate will check for pending interrupts which in-turn checks
"irqs_pending" bitmap.

Regards,
Anup

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
