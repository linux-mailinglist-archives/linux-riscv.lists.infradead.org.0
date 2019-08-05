Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 08AD6812CD
	for <lists+linux-riscv@lfdr.de>; Mon,  5 Aug 2019 09:12:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Kd601BROc7wBHUQzXV/L6OV87G7M8Rx6VmENviEzcJo=; b=SBg6kl8BrmGpo0
	GkfNZkNj93yo6J39K+KMn3FkNo12hHZxVFEfYYfAY2lScZJTa4DJG3mJfRc/AFhVHs/Ss1DZ+lGLh
	tAyYeA7A3RzGVytIkI4/2ncUd8hjGP6vfLFU5OyndK33w5/HLFCKS+4QEQAP9K0lNtpjkWR1JklRx
	LV0MJL3yXwPe8LMI6maLbq0pLBkA2kdwg/CzWRCFlxP1U34PmGvzdALDdCtJawE4X1rPQS2IOR9t3
	RUDfvu/F1AVP2ro0TUOdmgsVpwy203ZdyF4qPxVRwhgPRvVSEWrixJ8rIah8zxM8USeUO55K99ry1
	PqIjIPbJagciSjGRHpHQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huXAL-0002sU-56; Mon, 05 Aug 2019 07:12:21 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1huXAH-0002rv-OX
 for linux-riscv@lists.infradead.org; Mon, 05 Aug 2019 07:12:18 +0000
Received: by mail-wm1-x342.google.com with SMTP id a15so73613826wmj.5
 for <linux-riscv@lists.infradead.org>; Mon, 05 Aug 2019 00:12:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=brainfault-org.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=RbR9NwuvYbRC7roIhZ22yTnxvDklbtSaOkHnRd59pwA=;
 b=fkloISZ+Sy0hPMWNbFKzEh/r7BhtZqP4GA9lIr/AitoV+f7H+Fa7NB134TAcewDaga
 io6DQRB5IDIoD4C8l3IdKPdVydc3xBbfQTQKNK4pvGQOtEOV7NPS9kLb/ycbLIYQ4ixj
 S+BY0o8SGrF7PrawJsDGnZJA1XjoraSGN7GwBv63aKNlTAXgwRHD16mxFdujm2jDq5nE
 pnxdBIoxB7WYlD0IEyZQsOy0CB7mD1+BhBc4wxNsSVMAYDlxkDIhcx21gpviKA6DUGzT
 DGcGMFNArITF0bDZIC0/1AZ5lXMhi51gYZ8uNmpGsK/l2c/0V6EZBuSAK5qpuKlGM5Sl
 4C7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=RbR9NwuvYbRC7roIhZ22yTnxvDklbtSaOkHnRd59pwA=;
 b=o4lClfo1XsXxg5gwbbPnq+i0kVWBqB1xjVMMRxqtjKUiRbQ9Nn7gB24bjCg1ZD48+Y
 R+RYhwZJMlhkF+WKr53faNQhIe+gknc0N7b0nSCZFiVmroLhos4pPG7gu08WMKnvcQf4
 R8cvhGrHGkPgckZ4xVQrFspqCSlJrItWclcqe3s1nA6XfwCWBj50SSCLnmkLPBsl9Vb1
 fp9STYiU84R9SDCN9V0w2FCf0MWm5S+01vizKCQa2gNPeIWgp1ICaH4Im+S6e5/STfB9
 7JUd3Cbw6ertfpYCMnMPsblBSjmC1h6qJFJV0tYZCOxmov6yqa5KKhvlBvS0BIdEWIcD
 fYog==
X-Gm-Message-State: APjAAAV2DyUREY+/nQ4GD+xS89wgJ0EC7TYixrZw8UgU9gHQAMAy7ZiB
 +WOj/6EW8FeEmM6dpR8ezmtS6fJqaf0xNGmZY8JNKg==
X-Google-Smtp-Source: APXvYqxEZZ7R692/L4v5lwezCh25EnrYJqzhpkuE8O4sIMjCiDsF/mYrMWwoKnFFt8t13omA8PT+Bmmhx3XjiZllRlI=
X-Received: by 2002:a1c:cfc5:: with SMTP id f188mr15608477wmg.24.1564989135533; 
 Mon, 05 Aug 2019 00:12:15 -0700 (PDT)
MIME-Version: 1.0
References: <20190802074620.115029-1-anup.patel@wdc.com>
 <20190802074620.115029-11-anup.patel@wdc.com>
 <5b966171-4d11-237d-5a43-dc881efb7d0a@redhat.com>
In-Reply-To: <5b966171-4d11-237d-5a43-dc881efb7d0a@redhat.com>
From: Anup Patel <anup@brainfault.org>
Date: Mon, 5 Aug 2019 12:42:03 +0530
Message-ID: <CAAhSdy0BVqagYTTnaG2hwsxxM51ZZ2QpJbZtQ21v__8UaXCOWA@mail.gmail.com>
Subject: Re: [RFC PATCH v2 10/19] RISC-V: KVM: Handle WFI exits for VCPU
To: Paolo Bonzini <pbonzini@redhat.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190805_001217_800034_7852F722 
X-CRM114-Status: UNSURE (   7.24  )
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
> > +             if (!kvm_riscv_vcpu_has_interrupt(vcpu)) {
>
> This can be kvm_arch_vcpu_runnable instead, since kvm_vcpu_block will
> check it anyway before sleeping.

I think we can skip this check here because kvm_vcpu_block() is
checking it anyway. Agree ??

Regards,
Anup

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
