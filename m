Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B6B598F35C
	for <lists+linux-riscv@lfdr.de>; Thu, 15 Aug 2019 20:28:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6LRSJ3rBUCF0gKUCpsP97/FjhiQfo1DmfHCB77U71GE=; b=WcKJoMjcMVsCki
	oJux+32hyySi8HhNBWrYWdjW+EP7vUyvoICqLEp75Ka86ra5HSweT7nwbCANaRGqX9NXQvrgre5+X
	FjmmO7NlVMHxknqlu1x6vhTMQbSBkgxrzjvxURtoDV4k+rakeljLJolYsoQ+7ncYughNxGTVj+pJU
	G3ze46gwiG7Wg3EmFhcDV5xwSO9oxKNQqfQ931MVixY5R0xrxghlqkgD8eFu4Rn+QVjmJsr181h7l
	gL9SevjgYydU3cbAhK2unj+Dqo3OtbdrJPpFQwDm+NUuqq4Tja2EZG7GI7pNw+WVi8FfHm9VvCL3I
	mal0axSjX+I7VY6mVmqg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyKTu-0000Jn-A5; Thu, 15 Aug 2019 18:28:14 +0000
Received: from mail-io1-xd44.google.com ([2607:f8b0:4864:20::d44])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hyKTZ-00008s-VW
 for linux-riscv@lists.infradead.org; Thu, 15 Aug 2019 18:27:56 +0000
Received: by mail-io1-xd44.google.com with SMTP id s21so1063839ioa.1
 for <linux-riscv@lists.infradead.org>; Thu, 15 Aug 2019 11:27:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:from:to:cc:subject:in-reply-to:message-id:references
 :user-agent:mime-version;
 bh=pLl7QP5PeHPo2FeqUfN5ecFJOdQWP0U1sgEUiznfkZs=;
 b=gDgg6nSxUpTqdteEW7SG/oTC/d1sBTTJ7Prfs7UC6Rk5BI+9giX9jmAgH8cxC55zHa
 IR1X5+b0ojl8l2GfYzGJipowHCg/KZYXrwRjpdTvF9Ry2B9DqSlTl5h4RggFjM1Hk2oL
 YMT6laALSYU/LQiaWxLn16a+bji+ebsReYmN3dHruSh9eCfuUVMqzl6cJ/abt+W/uS3t
 Kj/KTYbyU9om86iuvte+CivTii01iPzX7APHoasy5duuucyR9Iv73wdTAaFNzhJ5iCRH
 Z5yVY+MMj+tj0HSHy/Rj56gZcc4ztz5qDzlQLNWV0hi6B3lJUAHTp+v5eJ5rbAXwKZfC
 UG5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
 :references:user-agent:mime-version;
 bh=pLl7QP5PeHPo2FeqUfN5ecFJOdQWP0U1sgEUiznfkZs=;
 b=VnNmlfUhmysFwqUgglfjnodWSfzHnO1BfCkVs+I7HM+DiKESXgjOZB0zYXPjW1bu9P
 iqAllHAhG96aarW9QKd0uffOZZxHB4uYsNsYAsj7UTCskTNu31efVAaUMV7/rasoPc47
 qI4u2lHCCMtUZIUuqoYMIITTjpDM/dbf39WDnyw9lr2vKynSdK/SLxJt1PuhW4fSnAjV
 t6oOJcvRUcLMeapMq7sbx5uzvyNuifIDQGm+g3Fpe2SMm7rxZLhXTtCmZJjjAo9qwUOF
 BtQiieYBn6qgseZeW1w6vmqwNyhMllpOuHn4rs/T8LZMTmj3BwdGZJJehIfkS08/6IUE
 /VnQ==
X-Gm-Message-State: APjAAAXg7OqOfFJ0u4JwM01/o4JlEjNkclpxl2lAg6+ssohChI77pnY9
 2+NfwDAg05sfBqj+tYpjyWt6sw==
X-Google-Smtp-Source: APXvYqzPLi/iH0JnrD6z3SS3UYTxQWW18XX6jY9727bczfBBOa9hvehBjVPnIqv8sV9jveo7/WUgpQ==
X-Received: by 2002:a05:6602:2413:: with SMTP id
 s19mr7027115ioa.161.1565893672828; 
 Thu, 15 Aug 2019 11:27:52 -0700 (PDT)
Received: from localhost (c-73-95-159-87.hsd1.co.comcast.net. [73.95.159.87])
 by smtp.gmail.com with ESMTPSA id
 w17sm4430608ior.23.2019.08.15.11.27.52
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 15 Aug 2019 11:27:52 -0700 (PDT)
Date: Thu, 15 Aug 2019 11:27:51 -0700 (PDT)
From: Paul Walmsley <paul.walmsley@sifive.com>
X-X-Sender: paulw@viisi.sifive.com
To: Nick Hu <nickhu@andestech.com>
Subject: Re: [PATCH 1/2] riscv: Add memmove string operation.
In-Reply-To: <20190815031225.GA5666@andestech.com>
Message-ID: <alpine.DEB.2.21.9999.1908151124450.18249@viisi.sifive.com>
References: <mhng-ba92c635-7087-4783-baa5-2a111e0e2710@palmer-si-x1e>
 <alpine.DEB.2.21.9999.1908131921180.19217@viisi.sifive.com>
 <20190814032732.GA8989@andestech.com>
 <alpine.DEB.2.21.9999.1908141002500.18249@viisi.sifive.com>
 <20190815031225.GA5666@andestech.com>
User-Agent: Alpine 2.21.9999 (DEB 301 2018-08-15)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190815_112754_041732_635F737A 
X-CRM114-Status: GOOD (  13.46  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d44 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: =?ISO-2022-JP?Q?=1B$BN%=3F&=1B=28JZong_Zong-Xian_Li=28=1B$BM{=3D!7{?=
 =?ISO-2022-JP?Q?=1B=28J=29?= <zong@andestech.com>,
 "aou@eecs.berkeley.edu" <aou@eecs.berkeley.edu>,
 =?ISO-2022-JP?Q?Alan_Quey-Liang_Kao=28=1B$B9b3!NI=1B=28J=29?=
 <alankao@andestech.com>, Atish Patra <Atish.Patra@wdc.com>,
 Greg KH <gregkh@linuxfoundation.org>, Palmer Dabbelt <palmer@sifive.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "kasan-dev@googlegroups.com" <kasan-dev@googlegroups.com>,
 Christoph Hellwig <hch@infradead.org>,
 "alexios.zavras@intel.com" <alexios.zavras@intel.com>,
 Anup Patel <Anup.Patel@wdc.com>, "glider@google.com" <glider@google.com>,
 "green.hu@gmail.com" <green.hu@gmail.com>,
 "aryabinin@virtuozzo.com" <aryabinin@virtuozzo.com>,
 "tglx@linutronix.de" <tglx@linutronix.de>,
 "deanbo422@gmail.com" <deanbo422@gmail.com>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>,
 "dvyukov@google.com" <dvyukov@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Thu, 15 Aug 2019, Nick Hu wrote:

> On Wed, Aug 14, 2019 at 10:03:39AM -0700, Paul Walmsley wrote:
>
> > Thanks for the explanation.  What do you think about Palmer's idea to 
> > define a generic C set of KASAN string operations, derived from the newlib 
> > code?
> 
> That sounds good to me. But it should be another topic. We need to investigate
> it further about replacing something generic and fundamental in lib/string.c
> with newlib C functions.  Some blind spots may exist.  So I suggest, let's
> consider KASAN for now.

OK.  Here is the problem for us as maintainers.  You, Palmer, and I all 
agree that a C-language version would be better.  We'd rather not merge a 
pure assembly-language version unless it had significant advantages, and 
right now we're not anticipating that.  So that suggests that a C-language 
memmove() is the right way to go.

But if we merge a C-language memmove() into arch/riscv, other kernel 
developers would probably ask us why we're doing that, since there's 
nothing RISC-V-specific about it.  So do you think you might reconsider 
sending patches to add a generic C-language memmove()?


- Paul

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
