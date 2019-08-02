Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B433B7EFCC
	for <lists+linux-riscv@lfdr.de>; Fri,  2 Aug 2019 11:03:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WsJ83DTCLr9QRSQECyii6teaxMc67GBP2RTgxmCL5WY=; b=VY/bsjyEbpSlmJ
	/2KDa8HVB95WGIctSBy6CkPFwnBa1NaqQB9IcJ560lbodUeA9hO6aOmFeh8EDMs7e9TyJ9tRvUm6w
	+8s1CIdAD615oFVWMqfECuefO7GI4dn7yaHezIwgkf6UVK6aFeupHGRNQ6ypRWnSj0p/cPSrmZUHF
	XrDJmSHGEfdxRMMCM3ybLPOgWWAdvl9nmqrnFeN4Ndn4icL+qsed9UT7Odu154UCume7Lnmcj7hFg
	7c54g7S457OjamELGEY+DBWc9CCtzZAFEs8lQlUGAC7PN3D6U88k0A44bUnC2CmeNx6Nlfqe7Moll
	ZzLuQo6KwFz3UzhfpD1g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htTTI-00071w-B9; Fri, 02 Aug 2019 09:03:32 +0000
Received: from mail-wm1-f65.google.com ([209.85.128.65])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1htTTD-000714-ED
 for linux-riscv@lists.infradead.org; Fri, 02 Aug 2019 09:03:28 +0000
Received: by mail-wm1-f65.google.com with SMTP id s3so67155381wms.2
 for <linux-riscv@lists.infradead.org>; Fri, 02 Aug 2019 02:03:27 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:openpgp:message-id
 :date:user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=MJhjj3mBwgft1ytEPPkTSsGclIEbwHaqa5f1BjqWwHE=;
 b=pw25MAAc0O2nRS+wRFPM8m5OmT6xGERglUCdpsDPT7EayiFzqyAe1gGqC90kjwWlQQ
 HUCdFm6YgwaPv6TDcR13HDomE9m2bpC+hwLNH6FjdrwJ7dHEmVUPUcw93W686uHOe4Yi
 JYiKaDSiJcVcg4r48vJhYEsrU/lsjX+rcWadB3+vYS1gvwXHUCYTyneGj/KxonYt85Um
 zSaiZnpQC7d+O5YeXsL+Uoni52g3VpZTMPtBqPAvZgPnRvqQJSMxbXfOxv/7TmahyqDs
 nCpEiBrkpvtl9kVZwmco0QwcEBR0TX5qVMLASXJvkuvQvqlkBOJnPwwzUvViMetLQY3t
 K4Gg==
X-Gm-Message-State: APjAAAVU+t+mhwpFuaAKFRimH601nVBD4GTxK5/uBhPZUmJFOmihHW0Z
 FILZIoaqk8KjTMgP8GYtCg0yBA==
X-Google-Smtp-Source: APXvYqwsIb5IBIb6EjqofR+ghzM+7hHKpee/wh5qbODjTO4IntyFDdqwrWHi5Cj5QkR8IwdGqC0VFw==
X-Received: by 2002:a1c:f418:: with SMTP id z24mr3454407wma.80.1564736606068; 
 Fri, 02 Aug 2019 02:03:26 -0700 (PDT)
Received: from ?IPv6:2001:b07:6468:f312:4013:e920:9388:c3ff?
 ([2001:b07:6468:f312:4013:e920:9388:c3ff])
 by smtp.gmail.com with ESMTPSA id z5sm53295288wmf.48.2019.08.02.02.03.25
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Fri, 02 Aug 2019 02:03:25 -0700 (PDT)
Subject: Re: [RFC PATCH v2 10/19] RISC-V: KVM: Handle WFI exits for VCPU
To: Anup Patel <Anup.Patel@wdc.com>, Palmer Dabbelt <palmer@sifive.com>,
 Paul Walmsley <paul.walmsley@sifive.com>, Radim K <rkrcmar@redhat.com>
References: <20190802074620.115029-1-anup.patel@wdc.com>
 <20190802074620.115029-11-anup.patel@wdc.com>
From: Paolo Bonzini <pbonzini@redhat.com>
Openpgp: preference=signencrypt
Message-ID: <5b966171-4d11-237d-5a43-dc881efb7d0a@redhat.com>
Date: Fri, 2 Aug 2019 11:03:25 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190802074620.115029-11-anup.patel@wdc.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190802_020327_496253_59839206 
X-CRM114-Status: UNSURE (   8.92  )
X-CRM114-Notice: Please train this message.
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
Cc: Damien Le Moal <Damien.LeMoal@wdc.com>,
 "kvm@vger.kernel.org" <kvm@vger.kernel.org>, Anup Patel <anup@brainfault.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Christoph Hellwig <hch@infradead.org>, Atish Patra <Atish.Patra@wdc.com>,
 Alistair Francis <Alistair.Francis@wdc.com>,
 Thomas Gleixner <tglx@linutronix.de>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On 02/08/19 09:47, Anup Patel wrote:
> +		if (!kvm_riscv_vcpu_has_interrupt(vcpu)) {

This can be kvm_arch_vcpu_runnable instead, since kvm_vcpu_block will
check it anyway before sleeping.

Paolo

> +			kvm_vcpu_block(vcpu);
> +			kvm_clear_request(KVM_REQ_UNHALT, vcpu);
> +		}


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
