Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 01F7379880
	for <lists+linux-riscv@lfdr.de>; Mon, 29 Jul 2019 22:08:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DBYcU4+2p9FNJpyWvK+3AbqkhnSZ/0O80Hu1dSjYSxY=; b=FtAL35PN5p0Z+r
	likkcoNBFP9vghOVfNRlnkfjZVMliuVeB1qAP2A+06r5TGYt0qvCJB9q7HHbG/ayFW9hrQABBTrkh
	mQPbg19o/xxNqc7FIZeNC2P8DBkgZxXdu/U08FGUazkJCez+9kI806c0+/N3q+lSqxKlgZIT5PF0e
	llYKXLJ+xOS/eoDElrctuj9dIo0rpmG+Hy6+8iplwMkmhwxoAmhOFK5guhVBp5Do1QTj3T8BK018b
	PaszTL6CAJfph2Ha0Wd5b9KSLg4pqOnb0RC7HRHBNkPZnsvUoYRoOZeZ1kLKN9MWHl7jWp2eg2pqc
	7jcKAxDzTR2gPpEUMhBQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsBwj-0003AX-2I; Mon, 29 Jul 2019 20:08:37 +0000
Received: from mail-wm1-f67.google.com ([209.85.128.67])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsBwe-0003A1-W6
 for linux-riscv@lists.infradead.org; Mon, 29 Jul 2019 20:08:34 +0000
Received: by mail-wm1-f67.google.com with SMTP id x15so54991300wmj.3
 for <linux-riscv@lists.infradead.org>; Mon, 29 Jul 2019 13:08:32 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:openpgp:message-id
 :date:user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=6rsC8apArHKEVoNHEE6WG1aGK7OUBEY0mfmbG+EETjA=;
 b=AiyFeuCUf3fSC4mLhZkSq5xfR0BCICAeDYOeM682HGzET3jfr8UZoFv/ahGk7di2S/
 0Tj6tfkSqmO8vxSBSCiKRuydnEtfBWs8QRFhDjyLWJKT+vFF5ui9bRRCc1mqbNG6VuUF
 eMF0DtnDgGJsBP32+1Qb+O/n6zyHKsPDlXg5J07H3f8+tTbVi2yp+v2ENOwl/yvhxnBP
 OJFQ5jypldcs8/tTypbl5rcBSJI9Ilqy3z5ImUKc08EnXucPMiHIlwJcJ3Ws5AFp8mHa
 daA3WukFHLzr8BkVN4SfdaQrEXVwHUiqt3/ctUyWzRQmlRPxhmbHROfzPI4xRW+TGvy8
 k78A==
X-Gm-Message-State: APjAAAWmceHhKqRznmuVlazCPYKLo7hU9MTbVVjzE/XGm7BDQP5rfWWb
 8ytLpI84rlt3/2QccGHVzh/TfQ==
X-Google-Smtp-Source: APXvYqxyEEo5XtUOjp1CdVRP84iqaQNMR2dGcZMgh/1fmCKwlmEs/P5oV9wEcoLLXuWQbjicsjgaWQ==
X-Received: by 2002:a1c:d10c:: with SMTP id
 i12mr101100699wmg.152.1564430911427; 
 Mon, 29 Jul 2019 13:08:31 -0700 (PDT)
Received: from ?IPv6:2001:b07:6468:f312:29d3:6123:6d5f:2c04?
 ([2001:b07:6468:f312:29d3:6123:6d5f:2c04])
 by smtp.gmail.com with ESMTPSA id j33sm131236463wre.42.2019.07.29.13.08.30
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Mon, 29 Jul 2019 13:08:30 -0700 (PDT)
Subject: Re: [RFC PATCH 15/16] RISC-V: KVM: Add SBI v0.1 support
To: Atish Patra <Atish.Patra@wdc.com>,
 "paul.walmsley@sifive.com" <paul.walmsley@sifive.com>,
 "rkrcmar@redhat.com" <rkrcmar@redhat.com>,
 "palmer@sifive.com" <palmer@sifive.com>, Anup Patel <Anup.Patel@wdc.com>
References: <20190729115544.17895-1-anup.patel@wdc.com>
 <20190729115544.17895-16-anup.patel@wdc.com>
 <b461c82f-960a-306e-b76b-f2c329cabf21@redhat.com>
 <0e19ff14a51e210af91c4b0f2e649b8f5e140ce1.camel@wdc.com>
From: Paolo Bonzini <pbonzini@redhat.com>
Openpgp: preference=signencrypt
Message-ID: <b6c884cc-e156-d125-b3a2-c8a843de34c2@redhat.com>
Date: Mon, 29 Jul 2019 22:08:32 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <0e19ff14a51e210af91c4b0f2e649b8f5e140ce1.camel@wdc.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190729_130833_032730_5FF5B042 
X-CRM114-Status: GOOD (  11.81  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.128.67 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.128.67 listed in list.dnswl.org]
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
Cc: Damien Le Moal <Damien.LeMoal@wdc.com>,
 "kvm@vger.kernel.org" <kvm@vger.kernel.org>,
 "anup@brainfault.org" <anup@brainfault.org>,
 "daniel.lezcano@linaro.org" <daniel.lezcano@linaro.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "hch@infradead.org" <hch@infradead.org>,
 Alistair Francis <Alistair.Francis@wdc.com>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>,
 "tglx@linutronix.de" <tglx@linutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On 29/07/19 21:51, Atish Patra wrote:
> On Mon, 2019-07-29 at 21:40 +0200, Paolo Bonzini wrote:
>> On 29/07/19 13:57, Anup Patel wrote:
>>> +	csr_write(CSR_HSTATUS, vcpu->arch.guest_context.hstatus |
>>> HSTATUS_SPRV);
>>> +	csr_write(CSR_SSTATUS, vcpu->arch.guest_context.sstatus);
>>> +	val = *addr;
>>
>> What happens if this load faults?
>>
> 
> It should redirect the trap back to VS mode. Currently, it is not
> implemented. It is on the TO-DO list for future iteration of the
> series.

Ok, please add TODO comments for the more important tasks like this one
(and/or post a somewhat complete list in reply to 00/16).

Thanks!

Paolo


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
