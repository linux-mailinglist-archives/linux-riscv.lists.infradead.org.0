Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AD4E17C9C4
	for <lists+linux-riscv@lfdr.de>; Sat,  7 Mar 2020 01:34:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:
	References:Message-Id:Date:Subject:Mime-Version:From:
	Content-Transfer-Encoding:Content-Type:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Llth3MhUyFBOi7p0WfyKRqezwCMBh50m9NEH4AtRH1U=; b=KSaI3l6YD8CTZSOMX2NPs+fVad
	NKGGfqFHPg10YYe8jXMA9Am46yfmNR0Puqwn7ASFbJV0Mhu/IRvWiop6TK5Q/aEluXHiqMFlpva2e
	n1wJoSHTb/RULdd4mx44rqYwAMzZwONE19fSWuSU5tP18WufpV0w4TV31L2up1Dk2nfB3TjJ2dnfu
	qvFLG16+mAixab+52wQpZ6E0QLem4V62bvSUY0UouXO0R1PlxvIUM4gGLjfvieyevtkO65hogn0s+
	ybM8YaXqjFddEsWRhkWJKAtEOtvMmL5xpZdAFlkIjwA8qCCikUfBUV688Hpsq4J7CZV3/wHWPWaB9
	MvTsTXlA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jANQB-0004VF-7s; Sat, 07 Mar 2020 00:34:27 +0000
Received: from mail-qt1-x842.google.com ([2607:f8b0:4864:20::842])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jANQ7-0004UE-PX
 for linux-riscv@lists.infradead.org; Sat, 07 Mar 2020 00:34:25 +0000
Received: by mail-qt1-x842.google.com with SMTP id x21so3080333qto.13
 for <linux-riscv@lists.infradead.org>; Fri, 06 Mar 2020 16:34:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=lca.pw; s=google;
 h=content-transfer-encoding:from:mime-version:subject:date:message-id
 :references:cc:in-reply-to:to;
 bh=Llth3MhUyFBOi7p0WfyKRqezwCMBh50m9NEH4AtRH1U=;
 b=puvFN+Oa4Vsque2ZZFahxBROstqlUCh6OUM3IAJz/PpFxOEwXVBDL1w614Lf5OgLn5
 ZzOKj9HWOalPOfhv3WAYO45FNOPCCJIbnU41PCb5bB2Jpfed/n8m6G0z5zQoTE4+Y2y9
 3QJpAM3ou6c7EdgrRsfCmCg49mhT4wc3UBudKo0M3IjKzr4rlUXBE2NlETbQYMK6HNXK
 FaW2q4McGhTj2NCjdx0Iunur4hGozNvUDxm9RmqprWgyakpEZ4US8GkH1ltbTWFsHiOw
 CwD/p2KKStXpzjgcBMWXRzzvBYt1qmOtcsAsjRrYeh1r/v9yIBxJhh+Vq48gTXYafbjW
 E5Vw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:content-transfer-encoding:from:mime-version
 :subject:date:message-id:references:cc:in-reply-to:to;
 bh=Llth3MhUyFBOi7p0WfyKRqezwCMBh50m9NEH4AtRH1U=;
 b=fMCwMuK6G+w8AIWeQa2NHwlyJeNIGGj+gXl7Cr9I4L7o1rLt8p46AJoh1hmZAiyBWh
 XTtvxsnmyaRXeJry5SB6x/hW4AbPEob6efYeN7G9X3h5MinYPiLYobsapoERDdnMxAbZ
 yZPTvAbrY1wowJGE5SAinnyKyKu/MAs3ViF1P1ooBIwpQCBdmCvVwEecsKNnhczk0Mdk
 KNcRpVJvEp/gzG9Mvy3ZrJREX6d6Z41EniaiMfSo5tn4+/zevNLGVEkKp9LUwLFNZorM
 Dz6GyBfgKmWBUZY5Ifvzhe2SSeo/VzQyZ+3zLjgRmRl/aTKlCAcVKBoWSawMq6f8fgvC
 QihQ==
X-Gm-Message-State: ANhLgQ3x8qQkJZvuShW3xkbmjwGKPdJtBb0sn0lxMJiJEzQMnOa6pz5K
 mdeSHLpSkDccoGOaqAPKL6qP8gZct8X1bA==
X-Google-Smtp-Source: ADFU+vtIXuLKAhOxSRwmQknHK6gBQTO4ffulLvuvjqolLxIBY8IQ/C9gOq1OdEnF0L6YkCCsmh/eQw==
X-Received: by 2002:ac8:7b94:: with SMTP id p20mr5546904qtu.122.1583541260735; 
 Fri, 06 Mar 2020 16:34:20 -0800 (PST)
Received: from [192.168.1.183] (pool-71-184-117-43.bstnma.fios.verizon.net.
 [71.184.117.43])
 by smtp.gmail.com with ESMTPSA id 202sm18088610qkg.132.2020.03.06.16.34.19
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 06 Mar 2020 16:34:19 -0800 (PST)
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable
From: Qian Cai <cai@lca.pw>
Mime-Version: 1.0 (1.0)
Subject: Re: [PATCH V15] mm/debug: Add tests validating architecture page
 table helpers
Date: Fri, 6 Mar 2020 19:34:18 -0500
Message-Id: <CEEAD95E-D468-4C58-A65B-7E8AED91168A@lca.pw>
References: <61250cdc-f80b-2e50-5168-2ec67ec6f1e6@arm.com>
In-Reply-To: <61250cdc-f80b-2e50-5168-2ec67ec6f1e6@arm.com>
To: Anshuman Khandual <Anshuman.Khandual@arm.com>
X-Mailer: iPhone Mail (17D50)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200306_163423_971983_8303AB78 
X-CRM114-Status: GOOD (  10.33  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:842 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Heiko Carstens <heiko.carstens@de.ibm.com>, linux-mm@kvack.org,
 Paul Mackerras <paulus@samba.org>, "H. Peter Anvin" <hpa@zytor.com>,
 linux-riscv@lists.infradead.org, Will Deacon <will@kernel.org>,
 linux-arch@vger.kernel.org, linux-s390@vger.kernel.org,
 Michael Ellerman <mpe@ellerman.id.au>, x86@kernel.org,
 Mike Rapoport <rppt@linux.ibm.com>,
 Christian Borntraeger <borntraeger@de.ibm.com>, Ingo Molnar <mingo@redhat.com>,
 Catalin Marinas <catalin.marinas@arm.com>, linux-snps-arc@lists.infradead.org,
 Vasily Gorbik <gor@linux.ibm.com>, Borislav Petkov <bp@alien8.de>,
 Paul Walmsley <paul.walmsley@sifive.com>,
 "Kirill A . Shutemov" <kirill@shutemov.name>,
 Thomas Gleixner <tglx@linutronix.de>, linux-arm-kernel@lists.infradead.org,
 Christophe Leroy <christophe.leroy@c-s.fr>, Vineet Gupta <vgupta@synopsys.com>,
 linux-kernel@vger.kernel.org, Palmer Dabbelt <palmer@dabbelt.com>,
 Andrew Morton <akpm@linux-foundation.org>, linuxppc-dev@lists.ozlabs.org
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org



> On Mar 6, 2020, at 7:03 PM, Anshuman Khandual <Anshuman.Khandual@arm.com> w=
rote:
>=20
> Hmm, set_pte_at() function is not preferred here for these tests. The idea=

> is to avoid or atleast minimize TLB/cache flushes triggered from these sor=
t
> of 'static' tests. set_pte_at() is platform provided and could/might trigg=
er
> these flushes or some other platform specific synchronization stuff. Just

Why is that important for this debugging option?

> wondering is there specific reason with respect to the soft lock up proble=
m
> making it necessary to use set_pte_at() rather than a simple WRITE_ONCE() ?=


Looks at the s390 version of set_pte_at(), it has this comment,
vmaddr);

/*
 * Certain architectures need to do special things when PTEs
 * within a page table are directly modified.  Thus, the following
 * hook is made available.
 */

I can only guess that powerpc  could be the same here.=

