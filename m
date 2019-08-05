Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C1AE81297
	for <lists+linux-riscv@lfdr.de>; Mon,  5 Aug 2019 08:55:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vKM3X5utlPkY2KohzWD8FSDsexub14DtsZhBnWyD2vY=; b=o1IGM/pbvcG02z
	0JiaR1e93n4oRWM8b53xLXPTRciKvs/gtgxkrIq5yiw+TZ05e6oidQG+BzHjFiL5majCX5ue3iIhq
	qvXSdPLPdJMLm4dkosZTK3vW0xsSD3XNb9CsFUQFKT65XF2OstlCDdLYdUr4nGL4TMhmFfouaJseT
	2oggMzRR6cu8Qolzmhu8i655KctSojzOljdms7qxgwA8EAvNnmyuiiwT8DeI8g/sdOjRH1tAJ4QEc
	wly6ZeYa9+qHj33PCwmvDE3/yBzacmH8kbJ7+2QRE2+zZCkOnw5KhubPALsFLMtGjeXLHYtPrcPXV
	gTE09EsZYLzuVXCxqdMQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huWu9-0006sU-Ap; Mon, 05 Aug 2019 06:55:37 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1huWu5-0006s2-Ne
 for linux-riscv@lists.infradead.org; Mon, 05 Aug 2019 06:55:35 +0000
Received: by mail-wr1-x441.google.com with SMTP id f9so4273723wre.12
 for <linux-riscv@lists.infradead.org>; Sun, 04 Aug 2019 23:55:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=brainfault-org.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=4TTBYe7R89ObYhNrQ7Cl1PDjf+qeeSySCDSm/yvi8hE=;
 b=ZW+9EsnPgnlzTYewisjxT+EOSy6r2aUxK55FB/Fm+mi+AtDooHD4mu+yQ4gb37M10g
 NFW40A+O1T6r5RXaZM/8SExP8R6DwkNY4tOg66IuS30k7+H4zGVIjXQc5CsCiFM2+BMe
 V0+mlrOMXhxPEG24hqd84dDo9gu3cphW0r9/JFlKTTaR+vGq0uS9aklZTp2Wcx8DcdRa
 2kuzuR1HDGS6PxOG/Lzvo154FcmiWh5jjA0bm9vC2WXhhhOramW5aZIV01jvhSj2rdDM
 n+kO58hpipZI6NalfKRWflgcGxRn2DNY40LLNgm/sPPLUvZwPDy7XRixemaSGUe+O/Df
 PYaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=4TTBYe7R89ObYhNrQ7Cl1PDjf+qeeSySCDSm/yvi8hE=;
 b=TUmCTpegBaS+x0gnvh9jb6MrxIr6/cJDTE4KusMiHN9kJDhRnuRkpEN48VsFrlrzOZ
 ekNh0cCEpYIRuO7p2jS8vjQYyrmL4Omy8hExMGeI79Zfl3qM2Ri4E7iej4t6j5sxne/y
 Xp/QVlEPNGh6z7KIAq4x974ZZ9qidRSV8mnXR0NUrnhHpMzsxOr0X6vvOUYQPbr4q4qk
 d3QDZ0YeV7VgyajkLOKNG99smUV9l62d98ZbCzyaNwJTt7TpJ+hEKnZVFqJ56Lb/bLPt
 2Hz+JaYUDL31+pEt5K7vmBJL8aHbadv5xYKXTv2zFoVYFl+vwZFWJRoRAYsy23QEyRUu
 6e3A==
X-Gm-Message-State: APjAAAVLEVKCLm9JeQcAbuCX1B2tBtos5rboj6K71Mk6T59Mn4rGyAzX
 Z9BQ05FU/iXo+VD5fZ5gsbBgM/OeRGqLCyA+WW4=
X-Google-Smtp-Source: APXvYqxAjiUTpRBRVnl8zo2WRruaXTltVlSlDaYn0gjxaCM1yH1vbKfeokdHZ8Ie7GExj9eQjB7BsoJu8wlqK+dlYTk=
X-Received: by 2002:adf:b1cb:: with SMTP id
 r11mr150790179wra.328.1564988131513; 
 Sun, 04 Aug 2019 23:55:31 -0700 (PDT)
MIME-Version: 1.0
References: <20190802074620.115029-1-anup.patel@wdc.com>
 <20190802074620.115029-8-anup.patel@wdc.com>
 <03f60f3a-bb50-9210-8352-da16cca322b9@redhat.com>
In-Reply-To: <03f60f3a-bb50-9210-8352-da16cca322b9@redhat.com>
From: Anup Patel <anup@brainfault.org>
Date: Mon, 5 Aug 2019 12:25:20 +0530
Message-ID: <CAAhSdy3hdWfUCUEK-idoTzgB2hKeAd3FzsHEH1DK_BTC_KGdJw@mail.gmail.com>
Subject: Re: [RFC PATCH v2 07/19] RISC-V: KVM: Implement
 KVM_GET_ONE_REG/KVM_SET_ONE_REG ioctls
To: Paolo Bonzini <pbonzini@redhat.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190804_235533_800631_CAA01059 
X-CRM114-Status: GOOD (  13.82  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Damien Le Moal <Damien.LeMoal@wdc.com>, Palmer Dabbelt <palmer@sifive.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 "kvm@vger.kernel.org" <kvm@vger.kernel.org>, Radim K <rkrcmar@redhat.com>,
 Anup Patel <Anup.Patel@wdc.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Christoph Hellwig <hch@infradead.org>, Atish Patra <Atish.Patra@wdc.com>,
 Alistair Francis <Alistair.Francis@wdc.com>,
 Paul Walmsley <paul.walmsley@sifive.com>, Thomas Gleixner <tglx@linutronix.de>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Fri, Aug 2, 2019 at 2:33 PM Paolo Bonzini <pbonzini@redhat.com> wrote:
>
> On 02/08/19 09:47, Anup Patel wrote:
> > +     if (reg_num == KVM_REG_RISCV_CSR_REG(sip))
> > +             kvm_riscv_vcpu_flush_interrupts(vcpu, false);
>
> Not updating the vsip CSR here can cause an interrupt to be lost, if the
> next call to kvm_riscv_vcpu_flush_interrupts finds a zero mask.

Thanks for catching this issue. I will address it in v3.

If we think more on similar lines then we also need to handle the case
where Guest VCPU had pending interrupts and we suddenly stopped it
for Guest migration. In this case, we would eventually use SET_ONE_REG
ioctl on destination Host which should set vsip_shadow instead of vsip so
that we force update HW after resuming Guest VCPU on destination host.

>
> You could add a new field vcpu->vsip_shadow that is updated every time
> CSR_VSIP is written (including kvm_arch_vcpu_load) with a function like
>
> void kvm_riscv_update_vsip(struct kvm_vcpu *vcpu)
> {
>         if (vcpu->vsip_shadow != vcpu->arch.guest_csr.vsip) {
>                 csr_write(CSR_VSIP, vcpu->arch.guest_csr.vsip);
>                 vcpu->vsip_shadow = vcpu->arch.guest_csr.vsip;
>         }
> }
>
> And just call this unconditionally from kvm_vcpu_ioctl_run.  The cost is
> just a memory load per VS-mode entry, it should hardly be measurable.
>

I think we can do this at start of kvm_riscv_vcpu_flush_interrupts() as well.

Regards,
Anup

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
