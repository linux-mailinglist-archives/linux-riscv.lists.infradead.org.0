Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BD9AA10811F
	for <lists+linux-riscv@lfdr.de>; Sun, 24 Nov 2019 00:50:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DCrx4qEDJPwwolHAvov0JbVJVJxiGOIVo2Xx1A7oYlE=; b=IlTjT6IdDrO8Zm
	2N07e1P6V9/OdsSLDg89MApgOsr+zLlqwY6/fAouWY9KhMDv3vBAjcxr50YewqJ3RRwy4TwCQR82S
	2DnD/wCJ2/Om9283INv/c2q66cfMPx1VHybT5JHho3PXFJebuLpypvIziGPmj9udoKcApH/XU0CnJ
	cmhx0EzyOlBVqjmvTVxaC0pHXyDsuUaS5NOcN/lx7mzp6U33apN1+VjGeNKUWF3xm+5aXdOU2N79k
	FAr47EExyBeo5FQDqOCfXL+0LGlOkJ/jY0r5RWzwAbukktBeZ+DybOV7nbEiUsETadJq29tPLClPk
	z5AMiQdA4lHVU2wd91xg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iYfAG-0005yq-7o; Sat, 23 Nov 2019 23:50:08 +0000
Received: from mail-il1-x144.google.com ([2607:f8b0:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iYfAB-0005KT-CI
 for linux-riscv@lists.infradead.org; Sat, 23 Nov 2019 23:50:05 +0000
Received: by mail-il1-x144.google.com with SMTP id u17so10825245ilq.5
 for <linux-riscv@lists.infradead.org>; Sat, 23 Nov 2019 15:50:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:from:to:cc:subject:in-reply-to:message-id:references
 :user-agent:mime-version;
 bh=s4GCLK+fIVn+snaTOmwkPoaXDJP7z3FcdVJMD3d4BQk=;
 b=ASgrvDPj4A/sFmDffZ+2PUQ5GRVEw02fOaSJyhpnDMyd/H5wMQMT7uoyC6CSBOV0DN
 XshcS1H7NEePIkGvTrLcYM+wJjDXbAY0UALDwOCzKe9eJJU2jp9LBkFJhwqKmQOc06om
 /3RULDjh5ysrs72RSWCed9tWmL1qV0D0ATRvna9IgeYdj/JxvGbuoJ3mgWWyy4nKgXdT
 WhRqjru2yEpjEVtQ5VAZiiiN+bjb9NczEH4SKT4u3F8HbVLB29jNhQSDi06IE3ISaQCc
 Or9q/yVZqf9WmSQ9q71QDzHPdCJ1AlOw1Mra3SKkK84m0+qD88loZLVykWYE/aGiE5dG
 Z/CQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
 :references:user-agent:mime-version;
 bh=s4GCLK+fIVn+snaTOmwkPoaXDJP7z3FcdVJMD3d4BQk=;
 b=og6lywNuK/rXvgNuuIRTJW4Fp1eN4MNKplhKj9KqE8XRZ9rUuZRafc6R9PMmGKqiEN
 v4KL3etW/+g7y7A3BPUBAb0Ou8CFBoIJ6qxOBtcMHnm0D14+qPk5ZX0je1UVIh2Kmtzz
 Xp0acypJ6unhWjs//tigu1afJxfqaoVR0SAMyVSHiS+7HPjBA8vubAJLDq584kKwaLBf
 hR3OiEN0F3rNq+Twvxx+1pUUFbA5aGjE/M5jFS5CgAT7MFdGDtpHm/giUeLimIOR11UH
 tNxxJtU/lKAwNEcscycc7Cj1biowvrIue6lKyYn+3fPpbNS9nlPn1LoVN8J07hdW3KxO
 1IRg==
X-Gm-Message-State: APjAAAVOju9DmuFZG7Lo6yREGMJ545LlZ45bdO5GISgKiFYze49V+tBY
 AchcBd3lJVJeJ3WP7MDSUoQ32g==
X-Google-Smtp-Source: APXvYqwfIV3uzdikoiQkcpfkAzGQuZULk1koZ3M8WX2S/VzCwOcD7E1RvKXMwMxHjNC5GYXTXUVh1Q==
X-Received: by 2002:a92:680e:: with SMTP id d14mr26576786ilc.224.1574553000174; 
 Sat, 23 Nov 2019 15:50:00 -0800 (PST)
Received: from localhost ([64.62.168.194])
 by smtp.gmail.com with ESMTPSA id g12sm596204ion.82.2019.11.23.15.49.59
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 23 Nov 2019 15:49:59 -0800 (PST)
Date: Sat, 23 Nov 2019 15:49:56 -0800 (PST)
From: Paul Walmsley <paul.walmsley@sifive.com>
X-X-Sender: paulw@viisi.sifive.com
To: Dan Williams <dan.j.williams@intel.com>
Subject: Re: [PATCH] Documentation: riscv: add patch acceptance guidelines
In-Reply-To: <CAPcyv4hmagCVLCTYmmv0U8-YD5BEoQPV=wtm5hbp3MxqwZRQUA@mail.gmail.com>
Message-ID: <alpine.DEB.2.21.9999.1911231546450.14532@viisi.sifive.com>
References: <alpine.DEB.2.21.9999.1911221842200.14532@viisi.sifive.com>
 <20191123092552.1438bc95@lwn.net>
 <alpine.DEB.2.21.9999.1911231523390.14532@viisi.sifive.com>
 <CAPcyv4hmagCVLCTYmmv0U8-YD5BEoQPV=wtm5hbp3MxqwZRQUA@mail.gmail.com>
User-Agent: Alpine 2.21.9999 (DEB 301 2018-08-15)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191123_155003_433847_E7F5A291 
X-CRM114-Status: GOOD (  14.86  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:144 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: krste@berkeley.edu, aou@eecs.berkeley.edu, waterman@eecs.berkeley.edu,
 Jonathan Corbet <corbet@lwn.net>,
 Linux Doc Mailing List <linux-doc@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, palmer@dabbelt.com,
 linux-riscv@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Sat, 23 Nov 2019, Dan Williams wrote:

> On Sat, Nov 23, 2019 at 3:27 PM Paul Walmsley <paul.walmsley@sifive.com> wrote:
>
> > It looks like the main thing that would be needed would be to add the P:
> > entry with the path to our patch-acceptance.rst file into the MAINTAINERS
> > file, after Dan's patches are merged.
> >
> > Of course, we could also add more information about sparse cleanliness,
> > checkpatch warnings, etc., but we mostly try to follow the common kernel
> > guidelines there.
> 
> Those could likely be automated to highlight warnings that a given
> subsystem treats as errors, but wherever possible my expectation is
> that the policy should be specified globally.
> 
> > Is that summary accurate, or did I miss some additional steps?
> 
> I'll go fixup and get the into patch submitted today then we can go from 
> there.

I guess I'm still looking for guidance along the lines of my earlier 
question: what (if anything) would we need to change about the current 
patch to have it work with the maintainer profile documentation (beyond 
the "P:" entry in MAINTAINERS) ?


- Paul

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
