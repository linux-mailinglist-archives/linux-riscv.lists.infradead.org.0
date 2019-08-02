Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EC657EFB4
	for <lists+linux-riscv@lfdr.de>; Fri,  2 Aug 2019 10:59:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ar4hUL3uRJzYi8Gg423IbVpf01ns2gCsGgIlThI500M=; b=DMdwm7lr0FeXy5
	zi1/h33FXGekBJ8LleO0xQ5kcvPhe9vWpYx7CWkuDHbM96Q8mwp6iicH5CD2+JAZF8HJVJfW4rO2r
	/0Xmnz8RxjRokrqVH3riw/5TaFuSxr8D7QKU9UJ4b8eVHt84CBbwyul+dmoQipasYxR4AUjEw6QTg
	1b2o/PKLQlkeDGmIJ6YZ6rxHR8PWX7ZATXvCGe+xzwz0Qe0zAW8rQsD2jJpqhsMq+9WGdBmQQUi54
	UaVfy7bARNBDWD1glxYDIsFU77AqJP/oHgsJIJwjz6Dzo42uccJPANAXQexiwUd8PJO4MA4Ocyno6
	33LhcU/YhnLj03/kNNxQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htTPa-0005Nd-61; Fri, 02 Aug 2019 08:59:42 +0000
Received: from mail-wm1-f65.google.com ([209.85.128.65])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1htTPW-0005NH-Q0
 for linux-riscv@lists.infradead.org; Fri, 02 Aug 2019 08:59:40 +0000
Received: by mail-wm1-f65.google.com with SMTP id g67so61480957wme.1
 for <linux-riscv@lists.infradead.org>; Fri, 02 Aug 2019 01:59:38 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:openpgp:message-id
 :date:user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=JgbbmoU8mRwQDt1oX8O7FGI/YFBQIrkxghclZVXxh9E=;
 b=Zm7Qimg1kjoZqbyDsWl5Cvube4ZAP7JVPk4UBj6RTkt3f/MR7888IYPtC1sRCMeevU
 clo+aegvzusECG+uc7n9qCBreQy9sUl2RxQhwmo/ZU84OvQ0D8MRMKXVlzGAnKmQpbOy
 uYqE70NfNbZW0Oxa9NhT6Y4y54Ti6jpERVs9aIMmwN8Tlhd2KfPJcURpsZsyfZEvYayK
 6Y3JZFTVXkE7ZgaS8iZAokF9GnB1sf9LvkNyTENiSSdUVpcGfymhDPa1tABOKwtAs9Vl
 JxOvtvA3Ee12N4x0KQnp4SdiaBGraii55jhOk7FPOrL79uFL7SucwLQUPf/oFfk8tDIO
 oLrg==
X-Gm-Message-State: APjAAAVVHmomJRcyJTfd6A8bTQ7271eAfmj/05SSyUePfI8Or6mgqnqX
 1Vtw0m/EQHoL8bpEdiFez9a//Q==
X-Google-Smtp-Source: APXvYqxJwRjyVgdn+EYXPUb8lVj+sHz60T4z7O9Y/MtbR/5gy1f516YgcK5v2luTrVMoSW/i85kDyA==
X-Received: by 2002:a1c:4184:: with SMTP id o126mr3410562wma.68.1564736377101; 
 Fri, 02 Aug 2019 01:59:37 -0700 (PDT)
Received: from ?IPv6:2001:b07:6468:f312:4013:e920:9388:c3ff?
 ([2001:b07:6468:f312:4013:e920:9388:c3ff])
 by smtp.gmail.com with ESMTPSA id f1sm50649557wml.28.2019.08.02.01.59.36
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Fri, 02 Aug 2019 01:59:36 -0700 (PDT)
Subject: Re: [RFC PATCH v2 08/19] RISC-V: KVM: Implement VCPU world-switch
To: Anup Patel <anup@brainfault.org>
References: <20190802074620.115029-1-anup.patel@wdc.com>
 <20190802074620.115029-9-anup.patel@wdc.com>
 <72d8efbf-ec62-ab1e-68bf-e0c5f0bc256e@redhat.com>
 <CAAhSdy2_ZsnT7gSKb624r9wzuJSx+1TnKxgW6srtqvXV1Ri9Aw@mail.gmail.com>
From: Paolo Bonzini <pbonzini@redhat.com>
Openpgp: preference=signencrypt
Message-ID: <f9dee99d-f536-e351-f637-b5098d53be22@redhat.com>
Date: Fri, 2 Aug 2019 10:59:36 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <CAAhSdy2_ZsnT7gSKb624r9wzuJSx+1TnKxgW6srtqvXV1Ri9Aw@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190802_015938_843175_C924B0C4 
X-CRM114-Status: GOOD (  12.81  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.128.65 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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

On 02/08/19 10:43, Anup Patel wrote:
>> A possible optimization: if these cannot change while Linux runs (I am
>> thinking especially of STVEC and HSTATUS, but perhaps SSCRATCH can be
>> saved on kvm_arch_vcpu_load too) you can avoid the csrr and store.
> Actual exception vector of Host Linux is different so we switch STVEC
> every time.
> 
> HSTATUS.SPV is set whenever we come back from Guest world so
> while we are in in-kernel run loop with interrupts enabled we can get
> external interrupt and HSTATUS.SPV bit can affect SRET of interrupt
> handler. To handle this we switch HSTATUS every time.
> 
> The world switch code uses SSCRATCH to save vcpu->arch pointer
> which is later used on return path. Now, I did not want to restrict Host
> Linux from using SSCRATCH for some other purpose hence we
> switch SSCRATCH every time.

Right, I'm not saying not to save these registers.  I'm saying not to
read the host value on every world switch, instead load it in
hardware_enable (if it's the same for all physical CPUs) or
kvm_arch_vcpu_load (if it's different for every physical CPU).

IIUC Linux does not use SSCRATCH while in the kernel (it must be zero
while handling an exception, but handle_exception takes care of that).
I think it's okay if you make this assumption, but if you don't want to
make it, you can still save it in kvm_arch_vcpu_load rather than here
since you "own" the thread while in KVM_RUN.

Paolo

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
