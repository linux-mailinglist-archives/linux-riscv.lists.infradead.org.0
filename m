Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AFE02829F9
	for <lists+linux-riscv@lfdr.de>; Tue,  6 Aug 2019 05:19:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JsFDY0dF+MvDTNWZaGMbfKYSxMU0/gc3BtXxnENAK10=; b=hFkO0CvNQpS4Nw
	YumOKraHTURALenkjgrowfDsahU4IH+s1AVodhOsZrQ7voLt8BJrfT4Mn0klrqHU6Ad/YEBk4srGI
	USfhxqMAC+Pyl4jFuvQ2SIeyis4Iu71s3PjTUk62MYMqhjgP2cKKxGL1XdKMtef20UHQeV+X/v/UY
	0o+ZezvKpaK8/uSS0Dzkc/M/A/rL1wFUH7uDZgxIJ2tHlJ8Rodj1J64mJuqVbCxg7RgR8XUxtrye/
	7ErtObz7zFhZh46wY5iKhKKCNWcl5yzfqxJ8Z7ZXDQ+JSwwbZeh15JoiBnFlN4+ylh8jpNfbBcHtJ
	hpA0MXEASliAU7y/o1EQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huq0j-0007Rv-Q8; Tue, 06 Aug 2019 03:19:41 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1huq0g-0007Ra-Lw
 for linux-riscv@lists.infradead.org; Tue, 06 Aug 2019 03:19:39 +0000
Received: by mail-wm1-x344.google.com with SMTP id h19so7934170wme.0
 for <linux-riscv@lists.infradead.org>; Mon, 05 Aug 2019 20:19:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=brainfault-org.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=dr2+cEWOTjWIrHgq1rAPpBc6r9tZtYF1YbUnLR69BFg=;
 b=xQaMHCEu94MSWV0KnK1zA0WkUuR9+C2JoA7OyFGL1bMhbTfgWoKYiPiBLsiLmW+h+x
 MQ3B6t0N0TyWSy9h9rZc8F+4VTFAIH8Iedrf8KilAY2c5AOdX2tC2CndcOeVjxSy2GHO
 GI93PGu9zITG/U5rrHWGkkA5Ju5ktIJiHKkSvIGs+vOJ9Kez1Xb0dI8QvVhhWkfzaKsV
 tMP55LDR3YYdlt9K21sGMwHzYF9O1rH+IegheKtwbw9tlS2hUgPhoge/HJIJWt3xMgRz
 uA7D4HcLjXGGPwdp50RKYHh/RJ0kRwQ0JvqWO80/m5fi1DQlNlA09FUD+/020u8Gvf4D
 8o6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=dr2+cEWOTjWIrHgq1rAPpBc6r9tZtYF1YbUnLR69BFg=;
 b=ITc/2PlXLDILFzuXpMfNotUo8NK0oWfwJGC6RpbLFz5ZhmNS83NZAIyAUOWo4q37jd
 B6iQ1XUAoyijuKOUo1m/grHz9GsNbZYeQrAaZUEhFHmlyjAHEW6s+s16OQ7Dina5/jna
 UATScnbQehilmqELK+pK8ZHyOXxvv+P6LrUov3Ikwa5TFxe1zJbS2iHnjDFwR4QPIWih
 0QvMcuQIjrHxnEaXTdPvVhiChbn5kmUcfAcMnZozGHjW+8VkC5Cx5y6n6LFhu0tXYkrR
 nZheo0lC7uc7szq6kl3XaQUIEpo1OYKCZIbcgOymow/ILGZdoY2jLNmKrOHCs3G5ekeT
 yA/w==
X-Gm-Message-State: APjAAAWvr9VcUEOZ1dAkbHLgOdDHYwpReOaFBYL2MJEQDAhIr0aApgbJ
 /rs/bOHPMN7baWStXg35KWLmbJrHwAf5e0CADEoRRg==
X-Google-Smtp-Source: APXvYqwH6qC9nSAJAWBGGxZ0uXvKgHP/raIkzQCYLK0pRSGDcTtZMMyScdsr3bxWn1y3xiVpXqFzA7f5nHQEnBJZ3yw=
X-Received: by 2002:a05:600c:254b:: with SMTP id
 e11mr1313747wma.171.1565061575887; 
 Mon, 05 Aug 2019 20:19:35 -0700 (PDT)
MIME-Version: 1.0
References: <20190805134201.2814-1-anup.patel@wdc.com>
 <20190805134201.2814-12-anup.patel@wdc.com>
 <21bdde39-8d33-6aae-e729-476ce11406a3@redhat.com>
In-Reply-To: <21bdde39-8d33-6aae-e729-476ce11406a3@redhat.com>
From: Anup Patel <anup@brainfault.org>
Date: Tue, 6 Aug 2019 08:49:24 +0530
Message-ID: <CAAhSdy03G-8S0y7kg96PzC-4npdEFv+WCCuBvoCbEt9244kDOg@mail.gmail.com>
Subject: Re: [PATCH v3 11/19] RISC-V: KVM: Implement VMID allocator
To: Paolo Bonzini <pbonzini@redhat.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190805_201938_720207_D42651F9 
X-CRM114-Status: GOOD (  11.16  )
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
 Alistair Francis <Alistair.Francis@wdc.com>,
 Paul Walmsley <paul.walmsley@sifive.com>, Thomas Gleixner <tglx@linutronix.de>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Mon, Aug 5, 2019 at 9:33 PM Paolo Bonzini <pbonzini@redhat.com> wrote:
>
> On 05/08/19 15:43, Anup Patel wrote:
> > +     spin_lock(&vmid_lock);
> > +
> > +     /*
> > +      * We need to re-check the vmid_version here to ensure that if
> > +      * another vcpu already allocated a valid vmid for this vm.
> > +      */
> > +     if (!kvm_riscv_stage2_vmid_ver_changed(vmid)) {
> > +             spin_unlock(&vmid_lock);
> > +             return;
> > +     }
> > +
> > +     /* First user of a new VMID version? */
> > +     if (unlikely(vmid_next == 0)) {
> > +             WRITE_ONCE(vmid_version, READ_ONCE(vmid_version) + 1);
> > +             vmid_next = 1;
> > +
> > +             /*
> > +              * On SMP, we know no other CPUs can use this CPU's or
> > +              * each other's VMID after forced exit returns since the
> > +              * vmid_lock blocks them from re-entry to the guest.
> > +              */
> > +             spin_unlock(&vmid_lock);
> > +             kvm_flush_remote_tlbs(vcpu->kvm);
> > +             spin_lock(&vmid_lock);
>
> This comment is not true anymore, so this "if" should become a "while".

Sure, I will update in v4.

Regards,
Anup

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
