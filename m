Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B1D457A676
	for <lists+linux-riscv@lfdr.de>; Tue, 30 Jul 2019 13:05:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AoIE8tkstDdNoV8IfPWKVTw955OcexnwGadaQTxcoa0=; b=AzEUDLlOs7vmHm
	j9JBxKceaHOZ/ctVZbuSwNIMQHZe5q6V3YhWMw/PI9I4DGy+GCAJT8e84DxyW7dtcmuWFtdigsISd
	URTgE345yl3pYNw7NVQVgQbT596V2tr2RVIpjxqx1I6quQ+q9PRbFYvech8/w97t2LTi5Wk1N11hE
	zm0DjgtVZtnRu4a2rXbiiF5mUllTSAXJZNQv1vzavB5Q8jil551AiZA8JojXKYdFPmLpMSa8ofdHF
	Lo8QB+XFlDxE9b0N+dn+zBluMIF25D7HPUTIKjcGyDbkCVibfeUb6H8R2w+kSrjRsYlWk5Hmpq5ej
	DV5rK8t5zF42YCGVnIWA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsPwQ-0006d9-IW; Tue, 30 Jul 2019 11:05:14 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsPwM-0006YD-Pa
 for linux-riscv@lists.infradead.org; Tue, 30 Jul 2019 11:05:11 +0000
Received: by mail-wm1-x343.google.com with SMTP id p74so56692574wme.4
 for <linux-riscv@lists.infradead.org>; Tue, 30 Jul 2019 04:05:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=brainfault-org.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=dpNdRkCzqUyYffw/7lLTRM9HVMvkB3KarB7VEUzjUVQ=;
 b=HIgSlgxwKYg8e/J3SjxYaKZCVZh/e/MD2QdamQO42v9zxKGtnEu/HA0ntpZVF0zSv3
 5En9GIlM1eq9727UDqzefzKNiiJR4QyN0HxkFlk8u68kGAD0zT8f4Z7cDhNi5xT8niBr
 bCfIJUpo4Mr0i7SwnLjBwQHAguu1hnkWjiqcMgMzvCG+9fwk+XvN+eldY7vXr7ZrjKPK
 wivpb2Y0BFiu6WCcExmPqG113bMRW5MkuLn/arqPWmorJfY+wlqBvjTuzGSRIZvOhWBx
 6ZSN2uLXvKdxPD5MIHC9pC4ZEinP8IxAVwb7Kj2RpdTKkmZpnFTFDvKbjFb+hlihBE5t
 dicw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=dpNdRkCzqUyYffw/7lLTRM9HVMvkB3KarB7VEUzjUVQ=;
 b=BOf0RR5mtV7s2vU1hK7Pp1Cczb37viW5YzkSjYBdg/9+rR3bFzV0IRA5N7JamPpMxC
 9yY5L6YMD79JuEMvwhl+7YGGrbzKqBD6woYorCn1cGEk/sA4Ektnrfhg8f1NUiY2tGxe
 ygpEIbKwKK/17DtHKA0vid5i0vKCcB1hYoK3VftilJuvHbtStvAUXD9j/+wqksRTejlR
 Y8EKtd/AXYBaS4PctfYRNYvX4nC0YcWz6YEbfgGSJynHA7XM+dJ09sUMWnbR9Zv4Iauw
 t1XcXq3VydM5jA+Hc/0Q/fJnFjnd3iOnEQtBZOGGQLqVw9DSIdY9hXrvS9Jl82VRzJVE
 gB/Q==
X-Gm-Message-State: APjAAAUXrqqMaDsOL3lAkVTlz9avvPx4ftZqZ6oiFj0PZFFfKyBTeiLT
 iwoO24v3YFeyG2C8Vur1jPZTaurj2VrcGsD+aXQ=
X-Google-Smtp-Source: APXvYqzVGcu6yOiKZfaeofC+j2ZPARkP3m25uM7rRFZC05JiebgCN4lGL6Gxd7aUZzaBrterPRwnFMHxEEVBhXH47Xo=
X-Received: by 2002:a1c:be05:: with SMTP id o5mr106351335wmf.52.1564484709021; 
 Tue, 30 Jul 2019 04:05:09 -0700 (PDT)
MIME-Version: 1.0
References: <20190729115544.17895-1-anup.patel@wdc.com>
 <20190729115544.17895-4-anup.patel@wdc.com>
 <309b9fb3-9909-48d6-eabf-88356df4bb3b@redhat.com>
In-Reply-To: <309b9fb3-9909-48d6-eabf-88356df4bb3b@redhat.com>
From: Anup Patel <anup@brainfault.org>
Date: Tue, 30 Jul 2019 16:34:57 +0530
Message-ID: <CAAhSdy1x-sWfqtqaBhFzHjgsv5p68UUg0LTyOCEZ7sOVcO=okw@mail.gmail.com>
Subject: Re: [RFC PATCH 03/16] RISC-V: Add initial skeletal KVM support
To: Paolo Bonzini <pbonzini@redhat.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190730_040510_843743_26F3156A 
X-CRM114-Status: UNSURE (   6.69  )
X-CRM114-Notice: Please train this message.
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

On Tue, Jul 30, 2019 at 2:53 PM Paolo Bonzini <pbonzini@redhat.com> wrote:
>
> On 29/07/19 13:56, Anup Patel wrote:
> > +     case KVM_CAP_DEVICE_CTRL:
> > +     case KVM_CAP_USER_MEMORY:
> > +     case KVM_CAP_SYNC_MMU:
>
> Technically KVM_CAP_SYNC_MMU should only be added after you add MMU
> notifiers.

Sure, I will move this case to MMU notifier patch.

Regards,
Anup

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
