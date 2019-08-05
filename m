Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C0443812D7
	for <lists+linux-riscv@lfdr.de>; Mon,  5 Aug 2019 09:14:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IqjVqToIQrtNBjxdgLSqeFEMjMT2c8eTcFibJsj0Vqk=; b=unfuV3wSvT6PDl
	OGEQBZzBEfOMJn9ykj5oZ2j4RuJOeFHxRzpvNEcr7Ua41Py626ikZkzs3X+HDnDZQVciAEWK2OJPo
	yhQ0qpYt1lEH37Lzzo9cgYsTgXpf9Ux+sEtrTps4Ty0DuIynkXgCOhJVc6LORHV+zllf3hJL7ES/v
	Dahj16E8V8Zst8TBf/tN1D2DVI5oblerDiowqkQkdngFlpNTqJ1rSNQjNAFQ5wTw4jB5hjvOIuceG
	SA8HqdLXdt68G15Mi/V1pRdJXtYL6OoQvh/3GwZE5exoP5LzPDi96/dsaLYRAvfKM/4gRb/KvcDe1
	N9a/hBpgrT8mwJYZI3Bg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huXCl-00032x-O6; Mon, 05 Aug 2019 07:14:51 +0000
Received: from mail-wr1-f68.google.com ([209.85.221.68])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1huXCh-00032O-JY
 for linux-riscv@lists.infradead.org; Mon, 05 Aug 2019 07:14:48 +0000
Received: by mail-wr1-f68.google.com with SMTP id 31so83270892wrm.1
 for <linux-riscv@lists.infradead.org>; Mon, 05 Aug 2019 00:14:47 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:openpgp:message-id
 :date:user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=xXNzFDoqWDF3bFjncF2L5fOVNU1OQ5j5piUBIWBmL0I=;
 b=K61l1ovYin42kt/ROUkN5yMfu4V2DJ/2Cj1UKkRBpWeSI0P4xcb06yGS5PPc5nCvKO
 xKvdFQ6lWIJXfjthyrePatehBXecWt8iJLKtdvg4IXYlWXxAU55943Kk0xvPEw15f3SR
 jarTGoD1EDPkrrNTcY5z3CmyD6vgqPbfWUz0apDCoHqHefughOvgEEZIkk92EPEnvILx
 eFEk4gQDN8Io9+uEw3URvSiWeBTJye9Si1P9VyTK6qT358/zWVgITlyCBwYU03eo6PXn
 YnxmYMNF2z+7CxxeGI/ZQ6iYI7NgPWsiNDYMMZqMYqcmJZNkWVWm9sNvZl3Vc0/lPNq0
 +msA==
X-Gm-Message-State: APjAAAWkOmE2o2bMLETEUcCOtLqWxg4F0yn5vR9oPm0Y9gWVIEL7mTRb
 i/xNZEcilasZUHGu505sIDwWh95u9mA=
X-Google-Smtp-Source: APXvYqx5xT03XMyZCDbDAzBfRBcUMD25ISn8anlFxox0BiwSgKaltwaTiYWfWbosNFrA3zbrZE2mOg==
X-Received: by 2002:adf:eb49:: with SMTP id u9mr42305386wrn.215.1564989285989; 
 Mon, 05 Aug 2019 00:14:45 -0700 (PDT)
Received: from ?IPv6:2001:b07:6468:f312:4013:e920:9388:c3ff?
 ([2001:b07:6468:f312:4013:e920:9388:c3ff])
 by smtp.gmail.com with ESMTPSA id g11sm79705061wrq.92.2019.08.05.00.14.44
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Mon, 05 Aug 2019 00:14:45 -0700 (PDT)
Subject: Re: [RFC PATCH v2 10/19] RISC-V: KVM: Handle WFI exits for VCPU
To: Anup Patel <anup@brainfault.org>
References: <20190802074620.115029-1-anup.patel@wdc.com>
 <20190802074620.115029-11-anup.patel@wdc.com>
 <5b966171-4d11-237d-5a43-dc881efb7d0a@redhat.com>
 <CAAhSdy0BVqagYTTnaG2hwsxxM51ZZ2QpJbZtQ21v__8UaXCOWA@mail.gmail.com>
From: Paolo Bonzini <pbonzini@redhat.com>
Openpgp: preference=signencrypt
Message-ID: <458f6b85-cdb2-5e6b-6730-4875f0e4cdba@redhat.com>
Date: Mon, 5 Aug 2019 09:14:44 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <CAAhSdy0BVqagYTTnaG2hwsxxM51ZZ2QpJbZtQ21v__8UaXCOWA@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190805_001447_647223_D28F9858 
X-CRM114-Status: GOOD (  11.27  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.221.68 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.221.68 listed in wl.mailspike.net]
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

On 05/08/19 09:12, Anup Patel wrote:
> On Fri, Aug 2, 2019 at 2:33 PM Paolo Bonzini <pbonzini@redhat.com> wrote:
>>
>> On 02/08/19 09:47, Anup Patel wrote:
>>> +             if (!kvm_riscv_vcpu_has_interrupt(vcpu)) {
>>
>> This can be kvm_arch_vcpu_runnable instead, since kvm_vcpu_block will
>> check it anyway before sleeping.
> 
> I think we can skip this check here because kvm_vcpu_block() is
> checking it anyway. Agree ??

Yes, but it's quite a bit faster to do this outside the call.  There's a
bunch of setup before kvm_vcpu_block reaches that point, and it includes
mfences too once you add srcu_read_unlock/lock here.

Paolo

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
