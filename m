Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B3EA47670
	for <lists+linux-riscv@lfdr.de>; Sun, 16 Jun 2019 20:39:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=roD1AxZg/nh5/FeHBpDkroYpmQL5t4tV+bD296sA5h4=; b=k2+FtKn6XlpigE
	pBsRfaAootF/1kasFZfkJbNiZEBi16G47zolAXe6IouKpnt/+/+GmHkQblYiy7SPvCZxCBg6Jym3g
	M76HRdiS63vHLXD18rzdlDqyGhc+ZTTO+o5bezl18kBT45ourDms3Ju6+hwD/ZtQ7f6CX3rXMJdyk
	6pLKUaAIJNdzEJ6VGtbBCHEvInmm0xLCF+cyjLDh6Vezsxq/vtUOJfMAIz3ggOim48mTDAyGI6WVF
	pFQ5MQSbe+uHENVFx9xdFs0qAHua9igQvS7KqB8YLUPdVHFbF2bauYTJtBmDhZH43R298vGvdcWXf
	OYp5n9jXCvaGvay1WN5A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hca43-000183-GK; Sun, 16 Jun 2019 18:39:39 +0000
Received: from mail-ed1-x543.google.com ([2a00:1450:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hca3z-00017B-Nq
 for linux-riscv@lists.infradead.org; Sun, 16 Jun 2019 18:39:37 +0000
Received: by mail-ed1-x543.google.com with SMTP id a14so12456923edv.12
 for <linux-riscv@lists.infradead.org>; Sun, 16 Jun 2019 11:39:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:from:to:cc:subject:in-reply-to:message-id:references
 :user-agent:mime-version;
 bh=iPCYYZamo+zNy3F8fQgG7iaN+Rwo/mHiH/s3wrqNgI8=;
 b=fq9nM1XuKMlB21upTMUDBstuYzwIHIb7wZT9cVA/qQqOW3vBbyalAMsd4KVrlyyyxM
 DQ5OqY/39SBJZp/M3k9Co7ZamKybBq20LSuIF4USuUg5h+8NQnhq4UJC3/Dy3BtP8tBt
 pxqmSqolOWmMpmuBjvleVtBWbYmKih8LtbXM3SovouaY91fjzldcklbh9f6cIk+gLo7b
 zpTedXdFLaN9DlfdV1oiZUHIWsGkIsdZwoK1sNcA9hWcNr+366umU8yWNDZ2pT1+pVyQ
 IBWmqkpRIj9Lnm6mNzVgq1dp1kTNDdgzEvJVaf3IL4mqWoyoOn2RZbVd7W6sZJCC+Q1Y
 LMAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
 :references:user-agent:mime-version;
 bh=iPCYYZamo+zNy3F8fQgG7iaN+Rwo/mHiH/s3wrqNgI8=;
 b=kLTcFFqb+koky6CSk9vzPikicdFc2hviUEHj1Py49E7IrXCFWSM0gRnU62PI5TgDkK
 u8PAdjuvTmWtZ3mVE13L0ByrP0BbtSZ9Kmqj15pcpIAXBUtBiVNlDGsh28I5Yza9eSb5
 TZ56qIrFO1ZgDaeK1En/wQmDNQi9eKjnFb14ERj1bJz9j/KA9KKL7JtC6znwuWhvUF16
 IpE8hrQ4l8C3c+SphOmXjcHoW/iNf4cii1gh/Eh6d9xztTT7gLafhM5/efQCEHLAhVT7
 UoVCDzjfyR4zGmJpb7I8ulUpk0ssutn6Kw9Wj5EQl1jyj/jkY8q9oWrUjvRTKsBdAccU
 EAkg==
X-Gm-Message-State: APjAAAWkl4yJCFBL/wGo5ak9RqhsZ1h2LLGcWfvvX1oaODKoU1R7Zxqk
 +8Pi34P6S3DHKHRtzQ0AoYq5JXLl6z8=
X-Google-Smtp-Source: APXvYqyxcrbgVSEB5rvrJtucmaNr5u4mzJkJi1l5V+VOwPXE2vrBOt8XRB40Dv0LVhh+vvQUAxrS8A==
X-Received: by 2002:a17:906:4995:: with SMTP id
 p21mr92348314eju.140.1560710373982; 
 Sun, 16 Jun 2019 11:39:33 -0700 (PDT)
Received: from localhost ([81.92.102.43])
 by smtp.gmail.com with ESMTPSA id bs5sm1756042ejb.10.2019.06.16.11.39.33
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Sun, 16 Jun 2019 11:39:33 -0700 (PDT)
Date: Sun, 16 Jun 2019 11:39:32 -0700 (PDT)
From: Paul Walmsley <paul.walmsley@sifive.com>
X-X-Sender: paulw@viisi.sifive.com
To: Rob Herring <robh+dt@kernel.org>
Subject: Re: [PATCH v3 2/5] dt-bindings: riscv: sifive: add YAML documentation
 for the SiFive FU540
In-Reply-To: <CAL_Jsq+Lx+SBZ7_+0tCYJs+oA2zR9c+q2XdmFbEtpWxoLXVibg@mail.gmail.com>
Message-ID: <alpine.DEB.2.21.9999.1906161137350.26914@viisi.sifive.com>
References: <20190602080500.31700-1-paul.walmsley@sifive.com>
 <20190602080500.31700-3-paul.walmsley@sifive.com>
 <CAL_Jsq+Lx+SBZ7_+0tCYJs+oA2zR9c+q2XdmFbEtpWxoLXVibg@mail.gmail.com>
User-Agent: Alpine 2.21.9999 (DEB 301 2018-08-15)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190616_113935_782766_C16BE98B 
X-CRM114-Status: GOOD (  11.62  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Paul Walmsley <paul@pwsan.com>, Albert Ou <aou@eecs.berkeley.edu>,
 Palmer Dabbelt <palmer@sifive.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 linux-riscv@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Mon, 10 Jun 2019, Rob Herring wrote:

> On Sun, Jun 2, 2019 at 2:05 AM Paul Walmsley <paul.walmsley@sifive.com> wrote:
> >
> > Add YAML DT binding documentation for the SiFive FU540 SoC. 

...

> > ---
> >  .../devicetree/bindings/riscv/sifive.yaml     | 25 +++++++++++++++++++
> >  MAINTAINERS                                   |  9 +++++++
> >  2 files changed, 34 insertions(+)
> >  create mode 100644 Documentation/devicetree/bindings/riscv/sifive.yaml
> 
> Reviewed-by: Rob Herring <robh@kernel.org>

Thanks.

> > diff --git a/Documentation/devicetree/bindings/riscv/sifive.yaml b/Documentation/devicetree/bindings/riscv/sifive.yaml
> > new file mode 100644
> > index 000000000000..ce7ca191789e
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/riscv/sifive.yaml
> > @@ -0,0 +1,25 @@
> > +# SPDX-License-Identifier: GPL-2.0
> 
> Note that the preference for new bindings (or old ones you have
> ownership of) is to dual license GPL-2.0 and BSD-2-Clause.

Changed to "(GPL-2.0 OR MIT)" - hope that's OK.


- Paul

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
