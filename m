Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FBD07A672
	for <lists+linux-riscv@lfdr.de>; Tue, 30 Jul 2019 13:04:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=n6N3p34zqbCWR9ZpgbRA0Hx0ko7lXQIhSnPeMzuMXwQ=; b=I3OLYJD9jRKjYZ
	2LbCvgMENpzA8kBqFYtqF66NCpJ+Wk1SIUalc++8GpxFOj9gFsaThlryzWZzolD/k/Lr/9vejPyYH
	FcwUEpBt3gA60OZ5CHlA0pD8WbnLL4FnEfDYk/+BSCQHhZ0AR6O7j8fAC9OP4VHgbPsCRjNhc/FeJ
	c8DvU0ZW0Ru+HdxQcisZ4qDus16cRZGVLITtlRlv43q+Lvk240HhOQZqIT9EK7IufTPKxPYAV6icd
	+7LSJgDBMvosAQpslBag9jFcNnSL7Bl6nBbnbFnp/Q9tzkR36i5u9VlMWDWV6/LhEB9hTyeCHMX94
	JBnlu7LbzAf0odK+dp/A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsPvQ-0005AI-Um; Tue, 30 Jul 2019 11:04:13 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsPvN-000589-0L
 for linux-riscv@lists.infradead.org; Tue, 30 Jul 2019 11:04:10 +0000
Received: by mail-wm1-x342.google.com with SMTP id a15so56723738wmj.5
 for <linux-riscv@lists.infradead.org>; Tue, 30 Jul 2019 04:04:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=brainfault-org.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=kAaSPn1SAnhMdouNiZFncd+kh2nGtT7o+fO0/xriDJM=;
 b=rtURJ5tjTGQezYchXptus1tZePK5IushptflcrP+I4zOEDOzawXa8lEWlpLTyABP05
 WcvP42levCh9WFweBkXwjLV1O5gjaYCtAwo+LxmXtdams5440uB9Au+0IOqlvgvCQDox
 0QOqGc7cZaSYRFIthov7WGk9xFRrfQ0yCDdK0rjX6zdeViKjkIRWrKXe9a22hTtEjF5w
 KGjWactDJtFahKEJAaqTgK/W8UYIa3JZ9O0X+MmpSKu+T2/MtMpStwlLkpTtXNhqkvZn
 rOUJC9iwH8FJ0XRoZsS1uEXPEwUTIwGTrq2+SSYaj9QV4vsq0oNdAjo25MqtWEk3+RUF
 80Jg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=kAaSPn1SAnhMdouNiZFncd+kh2nGtT7o+fO0/xriDJM=;
 b=EFqTqZbQOb5aoYTy6MXyOiZIdnpCUfIicUL0DYHhSP/vUXdXVDET75LgvXghxkwnCN
 LAFvKTPaFDHY6WqFtZOp74k4KVAlOeD0v2lYnsr4OzkfuF4AfkZXfM+8qlVd+T/KEp9X
 Df4fasndwjJXXNflNHVMy6VpitfLUvTqk9yJWCNFe8NmTAerdZjhDbVV6tPBklZroOf2
 qbkafu8gdtq8F+VQAvSYMV7AZbwiKIAUKYCFeQ4iffC1ey5URR9Abjk31i3lpF6NRunN
 HNuCXbEauzMS+ukwAmVrsKMupzovr9yxnUieQuy7TT8q4TsG+GE2LJsjhxWsP7AH1cTQ
 651A==
X-Gm-Message-State: APjAAAUPfNQ+aM7thJeVs3e1ly/lfw+vfLCQX50Vx0OIvGZ1p3VXTAw3
 E7M+zLpd5OhZCu2HOkWn3S3HajGZ8Jrud5UixQk=
X-Google-Smtp-Source: APXvYqyCdoUNtlHs7orkEBhS8EG9A8IbKL4dk2VepkFVzYAN9ZWH2nTWL3pZtJ3WiTvF6eb5BbRHk5ldhvDUkb7rXyU=
X-Received: by 2002:a05:600c:254b:: with SMTP id
 e11mr97733084wma.171.1564484646738; 
 Tue, 30 Jul 2019 04:04:06 -0700 (PDT)
MIME-Version: 1.0
References: <20190729115544.17895-1-anup.patel@wdc.com>
 <20190729115544.17895-4-anup.patel@wdc.com>
 <d1157450-258b-91c1-72cb-867c96f929d8@redhat.com>
In-Reply-To: <d1157450-258b-91c1-72cb-867c96f929d8@redhat.com>
From: Anup Patel <anup@brainfault.org>
Date: Tue, 30 Jul 2019 16:33:55 +0530
Message-ID: <CAAhSdy3n5DBKZ-_Vq39wYvbQ5iLYvdB2gXctkh+NuhynWzQJzQ@mail.gmail.com>
Subject: Re: [RFC PATCH 03/16] RISC-V: Add initial skeletal KVM support
To: Paolo Bonzini <pbonzini@redhat.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190730_040409_376103_F4403192 
X-CRM114-Status: UNSURE (   8.85  )
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
 Paul Walmsley <paul.walmsley@sifive.com>, Thomas Gleixner <tglx@linutronix.de>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Tue, Jul 30, 2019 at 2:55 PM Paolo Bonzini <pbonzini@redhat.com> wrote:
>
> On 29/07/19 13:56, Anup Patel wrote:
> > +void kvm_riscv_halt_guest(struct kvm *kvm)
> > +{
> > +     int i;
> > +     struct kvm_vcpu *vcpu;
> > +
> > +     kvm_for_each_vcpu(i, vcpu, kvm)
> > +             vcpu->arch.pause = true;
> > +     kvm_make_all_cpus_request(kvm, KVM_REQ_SLEEP);
> > +}
> > +
> > +void kvm_riscv_resume_guest(struct kvm *kvm)
> > +{
> > +     int i;
> > +     struct kvm_vcpu *vcpu;
> > +
> > +     kvm_for_each_vcpu(i, vcpu, kvm) {
> > +             vcpu->arch.pause = false;
> > +             swake_up_one(kvm_arch_vcpu_wq(vcpu));
> > +     }
>
> Are these unused?  (Perhaps I'm just blind :))

Not used as of now.

The intention was to have APIs for freezing/unfreezing Guest
which can be used to do some work which is atomic from
Guest perspective.

I will remove it and add it back when required.

Regards,
Anup

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
