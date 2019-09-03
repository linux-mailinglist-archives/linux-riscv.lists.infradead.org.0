Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 21E6AA6524
	for <lists+linux-riscv@lfdr.de>; Tue,  3 Sep 2019 11:27:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=X/aqyUHoJ6yWrtOo4Y/AKI0T055x6+sLHPAwnOc+8Ds=; b=PNOiZfHjvgay5/
	UlmQL/aBvqOKmowY7Ql/nt/Kw6ESEjncQ4V06bjfYZruP4u7l+StFDK7rsNofBzmlbMTNlj3C9D58
	7gfaLVoB7tMEqgr9qUzWW5Q7SLEQZhjLj4usjzeQZyXwE0ncPtVWXtjI2CbViNAgazGVYTxb7g24C
	dQCy7X2iVvHRfKmB/Q030TGPelotcbOW+Fm2gQcFa0XXkFPh8Z801A0XZmTi8kKRwfjw64m04OXFn
	OBPjqh3wPGSKmR8+EC1FaW45adMBtAUm2rOsBzWbbxiaQdiZTdDvfMnPm8lkvQe9y0ekCiEx06k05
	oRDQHK3l7ws+4MIl6a2w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i555Y-0001ae-EZ; Tue, 03 Sep 2019 09:27:00 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i555K-0001Tu-A8
 for linux-riscv@lists.infradead.org; Tue, 03 Sep 2019 09:26:48 +0000
Received: by mail-wm1-x344.google.com with SMTP id g207so13303586wmg.5
 for <linux-riscv@lists.infradead.org>; Tue, 03 Sep 2019 02:26:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=brainfault-org.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=320H5oeQ/ypZcJNziT2UEvpQLvhZJXO4w0Kft3y1blQ=;
 b=L3WvK8Fda9g/OFils619wQfmyD12uuA61bQl/l1rzqQGS+XiG9DZkPmnxECaVW8Yfy
 wVQBiPsO1nsrj3ZPVkgQiKFSudKf8UDs7dBhL8+u0WmTx3kQrQqOcxOGFj6ilF+fPB65
 IFp7XgPkxr7d6suy26EpCfguqH1uex0AHvemIomAJPgK/Q0aIcEvUETkjIbd8VS4WNlb
 +YbWv3qDKgIePZyyNcMUIR22ydth/bTj/ms3hvmWEDY8MwurYOy5NGKvA8WftKI8bcpy
 sH3zMs4IcfX00tZZilYCaxxTN0VMMijcxkDzGD+4OhOE8a4ZGUtbZytBJN/qWz+O3pnY
 EaWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=320H5oeQ/ypZcJNziT2UEvpQLvhZJXO4w0Kft3y1blQ=;
 b=ChOnDqdImeETse5yn7zOkayKgcNmwqO4oPGkg61ighu9HsVeZYoY3cwRdcwqhLscUn
 h294AJ7bMcDXeL0ZOxAA+1m5et9ijvYuEJYXYPBTF7RyBiZa8chzjwLYyElyIVONAONI
 5HwtcDwyPIdVa02RqhwyrhtfKByOqXqbSCgBkFwEVctFy200SSo8Yj9jIqh1bf/f5aOC
 4VAKgFUfMuA6oii/eGWbNWoCLg59BjyZ+C1uxGB2ZUOyzWlKCEON/sqK/LZ9oXhdgTLz
 yUbIIVIcy/unyldESy4i8TRBWQw9eYMp6AAHBlu9ilVICyqtFIKun6tUYBihCPj+82+J
 p7Ww==
X-Gm-Message-State: APjAAAX7TlVXIp0UcmMmvkHCgumU7ySU9AaiynoXeWW6e3TxoYzAqDPT
 3nClkUzbm1mt27S74EcDnb6O39pjaFkNUpZj/E7oCA==
X-Google-Smtp-Source: APXvYqxbRKzXBZDIsULcCQOmd941u33RLDqR7W+BFpNzSkMZsny4p6y2wrdwkuKrl94bbnpxNfsz2eWptRCpwpAu9Is=
X-Received: by 2002:a1c:c909:: with SMTP id f9mr42044895wmb.52.1567502800623; 
 Tue, 03 Sep 2019 02:26:40 -0700 (PDT)
MIME-Version: 1.0
References: <20190829135427.47808-1-anup.patel@wdc.com>
 <20190829135427.47808-11-anup.patel@wdc.com>
 <20190903085823.s4amn27pewc54hl2@kamzik.brq.redhat.com>
In-Reply-To: <20190903085823.s4amn27pewc54hl2@kamzik.brq.redhat.com>
From: Anup Patel <anup@brainfault.org>
Date: Tue, 3 Sep 2019 14:56:29 +0530
Message-ID: <CAAhSdy1p3KG-m_Gw4LzeY+ap3reVpx+FNjugnDJEDj_-jhgc2w@mail.gmail.com>
Subject: Re: [PATCH v6 10/21] RISC-V: KVM: Handle MMIO exits for VCPU
To: Andrew Jones <drjones@redhat.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190903_022646_999340_07187162 
X-CRM114-Status: GOOD (  11.31  )
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
 Paul Walmsley <paul.walmsley@sifive.com>, Paolo Bonzini <pbonzini@redhat.com>,
 Thomas Gleixner <tglx@linutronix.de>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Tue, Sep 3, 2019 at 2:28 PM Andrew Jones <drjones@redhat.com> wrote:
>
> On Thu, Aug 29, 2019 at 01:56:18PM +0000, Anup Patel wrote:
> >  int kvm_riscv_vcpu_mmio_return(struct kvm_vcpu *vcpu, struct kvm_run *run)
> >  {
> > -     /* TODO: */
> > +     u8 data8;
> > +     u16 data16;
> > +     u32 data32;
> > +     u64 data64;
> > +     ulong insn;
> > +     int len, shift;
> > +
> > +     insn = vcpu->arch.mmio_decode.insn;
> > +
> > +     if (run->mmio.is_write)
> > +             goto done;
> > +
> > +     len = vcpu->arch.mmio_decode.len;
> > +     shift = vcpu->arch.mmio_decode.shift;
> > +
> > +     switch (len) {
> > +     case 1:
> > +             data8 = *((u8 *)run->mmio.data);
> > +             SET_RD(insn, &vcpu->arch.guest_context,
> > +                     (ulong)data8 << shift >> shift);
> > +             break;
> > +     case 2:
> > +             data16 = *((u16 *)run->mmio.data);
> > +             SET_RD(insn, &vcpu->arch.guest_context,
> > +                     (ulong)data16 << shift >> shift);
> > +             break;
> > +     case 4:
> > +             data32 = *((u32 *)run->mmio.data);
> > +             SET_RD(insn, &vcpu->arch.guest_context,
> > +                     (ulong)data32 << shift >> shift);
> > +             break;
> > +     case 8:
> > +             data64 = *((u64 *)run->mmio.data);
> > +             SET_RD(insn, &vcpu->arch.guest_context,
> > +                     (ulong)data64 << shift >> shift);
> > +             break;
> > +     default:
> > +             return -ENOTSUPP;
> > +     };
> > +
> > +done:
> > +     /* Move to next instruction */
> > +     vcpu->arch.guest_context.sepc += INSN_LEN(insn);
> > +
>
> As I pointed out in the last review, just moving this instruction skip
> here is not enough. Doing so introduces the same problem that 2113c5f62b74
> ("KVM: arm/arm64: Only skip MMIO insn once") fixes for arm.

Thanks Drew, I had seen your comment previously but forgot
to address it in v6. I will address it in v7.

Regards,
Anup

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
