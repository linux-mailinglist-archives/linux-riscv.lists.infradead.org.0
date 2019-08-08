Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EF0685D87
	for <lists+linux-riscv@lfdr.de>; Thu,  8 Aug 2019 10:55:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sBHpr6rHjB1fg1LR0OcgobPQ2X3JEGdjFx7D/kSW/0k=; b=K4rVilSSsfGpLV
	9ZaB2e5Ntv9ukO0I2qe9z7oyB3BDXAyrsgyIvGx1oUQJDHoEx3Eau4ppZnduWHwWYcBXp4zaPbaCW
	OF8jlLiWd30zCB60StWVBUn9Njs8rdK4dG/qC07LK6ic/5luMieDXFRhWqjTNdK/7jXLbsxT/vVS+
	+++kmliYnyQk6RuhHOn8akYV5iUmLXN2Ki20RLzFP3PempnL9Wh6mpzA7z1QyaG5X1/v1YhVNGl9W
	nNosItKjDm/buJJ0HaQH/QM5esFdQK+Zt6nUn+wnhPAEYwOt4Ftk6FC1PxPsHlbwkwXbXn8EY8twg
	PeFTFk1vlOauO8cT2+UQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hveD3-00056u-3J; Thu, 08 Aug 2019 08:55:45 +0000
Received: from mail-wm1-f68.google.com ([209.85.128.68])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hveC6-00037A-8L
 for linux-riscv@lists.infradead.org; Thu, 08 Aug 2019 08:54:48 +0000
Received: by mail-wm1-f68.google.com with SMTP id f72so1558121wmf.5
 for <linux-riscv@lists.infradead.org>; Thu, 08 Aug 2019 01:54:45 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:openpgp:message-id
 :date:user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=JAn+ykN3unM/kToCkFC1Tvb8JYP1HBbyyihRZZ3yBqQ=;
 b=f7iy1wfeqxODQwOYcEOWzZZYYWUfN7Ak6ZzWNoXsQraxEM1UR40KqdwO/PL45M1ejK
 6pB7WP0zKwfQwyxtKKyBEwsfCn87t9q/djHF5daVmAbC+t4fPFzXrouvLnpDPqxFnvkU
 N/pzUqugzDlgfs1UkiB7qH0iTUdf4KWL9ZrlD5RClUS333NcRlG/xuleI1aBjPUNOqgF
 WfpLA1DK8E4Y1SWIUv+2BaS2AbjV093uQljQim5UjODN60ychWtb3oHuk3vfLY1QGQYV
 Pp1n5ajhAZmURT6CRIomwPdooXWauaAcgblsEh0gfNc9kmg/ou9UDkQrA8BikO9i7XIS
 pOtg==
X-Gm-Message-State: APjAAAW6q2UhgHRlfS/mE0tNvnrue0g34oORXoe33x1ZdUUp8IVUkGCC
 vA5zTnfEVTePjLfTxoDH/TbN3A==
X-Google-Smtp-Source: APXvYqy+/8dJb7VrhwMfhRjrQU4n2YvttWFHTmu72C0vK873zAhbFw4cxB+jQKcpkaP1SGPLf1vp5w==
X-Received: by 2002:a1c:2314:: with SMTP id j20mr3050248wmj.152.1565254484135; 
 Thu, 08 Aug 2019 01:54:44 -0700 (PDT)
Received: from ?IPv6:2001:b07:6468:f312:b42d:b492:69df:ed61?
 ([2001:b07:6468:f312:b42d:b492:69df:ed61])
 by smtp.gmail.com with ESMTPSA id j9sm105900449wrn.81.2019.08.08.01.54.42
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Thu, 08 Aug 2019 01:54:43 -0700 (PDT)
Subject: Re: [PATCH v4 00/20] KVM RISC-V Support
To: Paul Walmsley <paul.walmsley@sifive.com>
References: <20190807122726.81544-1-anup.patel@wdc.com>
 <4a991aa3-154a-40b2-a37d-9ee4a4c7a2ca@redhat.com>
 <alpine.DEB.2.21.9999.1908071606560.13971@viisi.sifive.com>
From: Paolo Bonzini <pbonzini@redhat.com>
Openpgp: preference=signencrypt
Message-ID: <df0638d9-e2f4-30f5-5400-9078bf9d1f99@redhat.com>
Date: Thu, 8 Aug 2019 10:54:43 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <alpine.DEB.2.21.9999.1908071606560.13971@viisi.sifive.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190808_015446_341255_E0ACEB2C 
X-CRM114-Status: GOOD (  12.93  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.128.68 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.128.68 listed in wl.mailspike.net]
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
 Anup Patel <anup@brainfault.org>, Anup Patel <Anup.Patel@wdc.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Christoph Hellwig <hch@infradead.org>, Atish Patra <Atish.Patra@wdc.com>,
 Alistair Francis <Alistair.Francis@wdc.com>,
 Thomas Gleixner <tglx@linutronix.de>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On 08/08/19 01:15, Paul Walmsley wrote:
> On Wed, 7 Aug 2019, Paolo Bonzini wrote:
> 
>> On 07/08/19 14:27, Anup Patel wrote:
>>> This series adds initial KVM RISC-V support. Currently, we are able to boot
>>> RISC-V 64bit Linux Guests with multiple VCPUs.
>>
>> Looks good to me!  Still need an Acked-by from arch/riscv folks if I
>> have to merge it, otherwise they can take care of the initial merge.
> 
> Since almost all of the patches touch arch/riscv files, we'll plan to 
> merge them through the RISC-V tree.  Care to ack patch one, and send tags 
> for any other patches as you think might be appropriate?

Patch 1, 3-20:

Acked-by: Paolo Bonzini <pbonzini@redhat.com>
Reviewed-by: Paolo Bonzini <pbonzini@redhat.com>

In your 5.4 pull requests, it's best if you add a note that all RISC-V
KVM patches were acked and reviewed by me.  I'll also include a shoutout
about RISC-V KVM in my own pull request.

However, for Linux releases after 5.4 I would rather get pull requests
for arch/riscv/kvm from Anup and Atish without involving the RISC-V
tree.  Of course, they or I will ask for your ack, or for a topic
branch, on the occasion that something touches files outside their
maintainership area.  This is how things are already being handled for
ARM, POWER and s390 and it allows me to handle conflicts in common KVM
files before they reach Linus; these are more common than conflicts in
arch files.  If you have further questions on git and maintenance
workflows, just ask!

Paolo

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
