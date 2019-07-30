Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 640397A7FE
	for <lists+linux-riscv@lfdr.de>; Tue, 30 Jul 2019 14:16:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7C9WtOpcxhitFqLaxDcd0/HUeJ5jszbLVAxTelbStkM=; b=NJ0q7XerHEfDMb
	wDObhUBQZy99phvls42O+HZa25iyQt8VeBPToFN6a9a21HDI3Lo26TFqyAx3U2EHctED7eCNUeETt
	j9YKnP+QJl2yJdi12iztoefx6kPLZ0PvztMzurk1CzlHQQRlswmTusIOIS21S7ZHoXwtnSqDBl3fT
	1+t18j3wLN5jrqxXE0IZ4zrdJNvoQIX/V8qjXosnruVsSlP18G35ZXaYI1Lp/1n0owho/t6ylZnC4
	FiQys+86Mgzlx70tl8ZcfeguG870jhx8K5kEHIwEVEKBfSulLxSzMIhWTKc7XZtXCQMT4EadB7Frm
	KP3wtykArdy2nAbwTssw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsR3S-0006pu-7G; Tue, 30 Jul 2019 12:16:34 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsR3N-0006pK-Ou
 for linux-riscv@lists.infradead.org; Tue, 30 Jul 2019 12:16:31 +0000
Received: by mail-wm1-x343.google.com with SMTP id a15so56938343wmj.5
 for <linux-riscv@lists.infradead.org>; Tue, 30 Jul 2019 05:16:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=brainfault-org.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=iCWEmw5uxTuTJM5Fn9CAHniCyIMMG4EL6XrLjBjgqU8=;
 b=RcEyHgsukWeHJWoW0g1tULEyN+REkaDBS0hPbWb+PVgj21FsAiJFooBKPafQGCQT4k
 Oe7x3r0UWoYUkKuGQXtHOsZC7ZrYeQsDJQPhCtdqZvkYgnxuNy6VcVzzXe8ww7se6Gc0
 M9g+GzB9ptSlWbp4AsgoGzauTqZB2tLn6pneb3x2VfvezxPKSRD5ctSTCYZI6F7nNg5Q
 kTom1CS4D1/Ew4fjK0ZO9TSBUj9psnOiA1fMRYFpHn0E32yFj3GO0qLecTJ0lRrfMzWF
 jcbyhSInAQWXs8cU/NADw+cye/IMLF+AO67Op9zOMIRAFOVr8/ty82by4n/ajOEjRfIN
 h8Og==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=iCWEmw5uxTuTJM5Fn9CAHniCyIMMG4EL6XrLjBjgqU8=;
 b=R7j/a6NsmLHrA1lJ8gJFfFscYEjRoeIOF5p54LiYqsPt4dQF3VIm6UztHHuaZmwo7c
 hdl77jdFidBNa24G9DDqFEbcy0vVSOVVRvypxieC5toDlBpxR1NMxQVlIMc+2ke7CyDn
 ofhTdw3kp3CCRu7iiMOb5GKugNS7ONNIiaFNZSsu+hEqrnfUGCx42QmuE2uvJP9x2i1z
 jYQS9Ow+wRoLRN3Oh7QRxw8VROjLCVXP8fiBzR1p9n7XNcGIS0gUFzyayCknEHCmmV+5
 VXiVUcFow+oxtyi18mdiDQpT57efF+u1BrzPu4xS818OyANhbBW/aVM5M4qo1bH+/2Op
 1plw==
X-Gm-Message-State: APjAAAU0gwbi3TnXsIkwORMCMf1mNM8IY3b3hZ7CIiHz/VzwVwKrRfCB
 iKNecR1zvCz9TqcaePkoKZWkKw6825YHU98mv+0=
X-Google-Smtp-Source: APXvYqwoLi8AAqz+99Z48jcpAPghzt+IGo83CFyDdCeXa8lkuZwKmiu9/wvRi+usFvnPUs5v/7GdZ2sspfW5V98qygc=
X-Received: by 2002:a1c:cfc5:: with SMTP id f188mr96400937wmg.24.1564488988047; 
 Tue, 30 Jul 2019 05:16:28 -0700 (PDT)
MIME-Version: 1.0
References: <20190729115544.17895-1-anup.patel@wdc.com>
 <20190729115544.17895-7-anup.patel@wdc.com>
 <3caa5b31-f5ed-98cd-2bdf-88d8cb837919@redhat.com>
 <536673cd-3b84-4e56-6042-de73a536653f@redhat.com>
 <CAAhSdy2jo6N4c9-_-hj=81mXjHjP8mvZy_8jOdRZELCyU9Y8Aw@mail.gmail.com>
 <9f84c328-c5ad-b3cc-df0f-05f113476341@redhat.com>
In-Reply-To: <9f84c328-c5ad-b3cc-df0f-05f113476341@redhat.com>
From: Anup Patel <anup@brainfault.org>
Date: Tue, 30 Jul 2019 17:46:16 +0530
Message-ID: <CAAhSdy0O=q3Sfd=xDw5CwiYoGVRy1DtrXsykZsdRUf9OJAsa3Q@mail.gmail.com>
Subject: Re: [RFC PATCH 06/16] RISC-V: KVM: Implement
 KVM_GET_ONE_REG/KVM_SET_ONE_REG ioctls
To: Paolo Bonzini <pbonzini@redhat.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190730_051630_381541_4ADD1135 
X-CRM114-Status: UNSURE (   9.99  )
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

On Tue, Jul 30, 2019 at 5:40 PM Paolo Bonzini <pbonzini@redhat.com> wrote:
>
> On 30/07/19 14:08, Anup Patel wrote:
> >> Still, I would prefer all the VS CSRs to be accessible via the get/set
> >> reg ioctls.
> > We had implemented VS CSRs access to user-space but then we
> > removed it to keep this series simple and easy to review. We thought
> > of adding it later when we deal with Guest/VM migration.
> >
> > Do you want it to be added as part of this series ?
>
> Yes, please.  It's not enough code to deserve a separate patch, and it
> is useful for debugging.

Sure, I will add it in v2 series.

We have skipped Guest FP ONE_REG interface with same rationale.
We should add that as well. Agree ?

Regards,
Anup

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
