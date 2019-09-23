Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CC19BB3E8
	for <lists+linux-riscv@lfdr.de>; Mon, 23 Sep 2019 14:37:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=24Zw61XL9M1e1cNeYRuP9wd3Dkt/SkMIsFVs176D7dg=; b=JtVk/R9BrluyPT
	uL4YsrtsxRkxG5esfioGiyJ+mHoL3r8wsaXO2jXhxf8ur2at095xmnroYNLrNOn94TJ2Re6tzAPHv
	niug1o8e66A4mKl21WoAvK3k/eNXcSZNDgenXCASRqGCFqhLc7ejY7exttjFouryADJVOKZtlvshm
	3yRIGv+m5MipdGHxOfXhnOt0j/8YJki1dzkfjhNwPBm7AZUyCxF63fCvnaMHJUVPAYDsyvOT7PS1u
	0/CqnbpKX58NCKvvzjPeH5/F3IVJwYGs4S0Go5nqIWi9YJBIww/r1m+RTpHpXzlHRn5jKFQfrGeg0
	gkh5FXJZX52V4oceBMDA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCNaq-0002bl-UP; Mon, 23 Sep 2019 12:37:29 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCNae-0002bC-HL
 for linux-riscv@lists.infradead.org; Mon, 23 Sep 2019 12:37:17 +0000
Received: by mail-wm1-x342.google.com with SMTP id m18so9145606wmc.1
 for <linux-riscv@lists.infradead.org>; Mon, 23 Sep 2019 05:37:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=brainfault-org.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=nT+7rSzFzl9ohdCpEtepkt+of0YH3ZJsWiyLqzd3cYs=;
 b=ORms6xGaws01dtGaiH75TPByIntW6XwOMdAl72molJD1F8b0KU5pBJhP/rEQjYtJOi
 nWR1Sklr0O+2Bw/9iPdAiSoMl/bFWmvM1kD7qBkjIK6wp3ajbnxTVjFtrl/myPrx8CX0
 v1iEzHdPOx7ZnhJjpxrJbEjjejKiJ96AkYmrIMYIKt9pxQnRAkK9AEQK/n27fCliMt3v
 rPg0dOt6Vz86mv+KAH2Y9ny1yLNvVAE9f3DSY4d6ZBwX4HORSDvf2dSXniBTdmF4Y+Rf
 1JsEIueY+/4L2qK25zsedLLl04sgOnB4DX4pzm3xBBpXQ1mJ8Nq5NFthYv2+fZkNL6u0
 QoKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=nT+7rSzFzl9ohdCpEtepkt+of0YH3ZJsWiyLqzd3cYs=;
 b=fnmLLj8X3jvLUtktrINqCmqaqkPSEdu9cfBHg1LNFFTO9YpiN76vWInXpRbmDf2VaI
 vHyr012JwOBcmrSpRAJG8eAGb5lq13wBLs/1g3nYilkEBfmQmeqVuujFZtZhuWuj7l5y
 I3m7imrf3chmK029nbniQRuya0gFKMxQMVFVbqYX3bYA7P247GnYGhYk8SOw3tjoB2bz
 yjTlb6kZ1vAtSQF0H6/eKXb6sl/Lvvjn2alYO3HtnMXl8TnU/FZRAoERbToifI8eqEkr
 Rsl0zwM2txUSpN9dAmCEgaTpZC/c2+kET2svd7zPjk56kqLpgqwxK62uJGneJk7i01Ve
 Bhcg==
X-Gm-Message-State: APjAAAVnIybyKot1nfLPReQCfTyI+wfLNMRJ9IIclpTJNaNQvhyfUZm2
 rc89atoN2/+ViqrfwO/FaMVeGW9wsD9c0+YrSPQ2Xw==
X-Google-Smtp-Source: APXvYqytGAFF6UUTeImuIoUQSKUPZ6j1zL0VHm3CfQoT1frjsg0FIDt5b/rxGFfKRF3Gb42DXvXRPHkhIJ00mZ77V2M=
X-Received: by 2002:a05:600c:22da:: with SMTP id
 26mr13191518wmg.177.1569242234306; 
 Mon, 23 Sep 2019 05:37:14 -0700 (PDT)
MIME-Version: 1.0
References: <20190904161245.111924-1-anup.patel@wdc.com>
 <20190904161245.111924-8-anup.patel@wdc.com>
 <520eed26-9332-1519-44b1-fb08b6410116@amazon.com>
In-Reply-To: <520eed26-9332-1519-44b1-fb08b6410116@amazon.com>
From: Anup Patel <anup@brainfault.org>
Date: Mon, 23 Sep 2019 18:07:02 +0530
Message-ID: <CAAhSdy0S9jOGUz3ufgMx_8E91VNQZGL3D+q+Hhuj+3ZkwmWkTQ@mail.gmail.com>
Subject: Re: [PATCH v7 06/21] RISC-V: KVM: Implement VCPU create, init and
 destroy functions
To: Alexander Graf <graf@amazon.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190923_053716_625285_19904FD3 
X-CRM114-Status: UNSURE (   7.14  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
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

On Mon, Sep 23, 2019 at 12:14 PM Alexander Graf <graf@amazon.com> wrote:
>
>
>
> On 04.09.19 18:14, Anup Patel wrote:
> > This patch implements VCPU create, init and destroy functions
> > required by generic KVM module. We don't have much dynamic
> > resources in struct kvm_vcpu_arch so thest functions are quite
>
> Since you're respinning for v8 anyway, please s/thest/these/ :)

Sure, I will update.

>
> Alex
>
>
>
>
> Amazon Development Center Germany GmbH
> Krausenstr. 38
> 10117 Berlin
> Geschaeftsfuehrung: Christian Schlaeger, Ralf Herbrich
> Eingetragen am Amtsgericht Charlottenburg unter HRB 149173 B
> Sitz: Berlin
> Ust-ID: DE 289 237 879
>
>

Regards,
Anup

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
