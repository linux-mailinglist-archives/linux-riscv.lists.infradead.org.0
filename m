Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E22CD999E
	for <lists+linux-riscv@lfdr.de>; Wed, 16 Oct 2019 20:56:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NdbXbcmWTLK1BH9Sgsl+C/xCtE7BVFjGPlj/0dRm21Y=; b=LCnPge5fj0ASFz
	jCrKNovD6W4eREdMB8FAOfSNmdcw4ceaNL7NLehs/8bJ/PC5At8ewshYNiS6JCVwyqt40xzL3L0uD
	2FFEYjnEuhSm/13axBUKqb574om+tWAkd5dCEwT8GHEg5vw7FZ1csDPWmaEGMcF/EvQAF4Iw04QTo
	6vge08UtGqpyFgsuJyxx0QM2qSAB6FC99oZasf4gJso7fZg9LHB+qErEKufMhC6BhxYsvt0Vnqaej
	CT65Uas/DZ94/Cv7/8ABiyNozYuxM0ADi45xLkx1Z7b/sNNyTfpnOugCfZR79lvYw0b4IgvcWi7Nn
	N8BfxbLZT8tG7xrV/USw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKoSs-0002H9-3f; Wed, 16 Oct 2019 18:56:06 +0000
Received: from mail-il1-x142.google.com ([2607:f8b0:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKoSo-0002Gk-Qw
 for linux-riscv@lists.infradead.org; Wed, 16 Oct 2019 18:56:04 +0000
Received: by mail-il1-x142.google.com with SMTP id a5so3713447ilh.6
 for <linux-riscv@lists.infradead.org>; Wed, 16 Oct 2019 11:56:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:from:to:cc:subject:in-reply-to:message-id:references
 :user-agent:mime-version;
 bh=7cYmNaB8tBxfUijaZmgw1UoRMfW7sRoT2PpTMBTSGG4=;
 b=iCBvTmwPvFq99xlmRYnzvO9LFlnlaDLDI6x61FSXKlUubNI8SGf7MNfdrqYDisA1Jh
 +f972bS2QaykL37AVaiLLmz/4v+bWZbmw0eMtvTtEnWGznTjFB/PmrBCUCKFMV0cOLsv
 BXflaCbE1BFOqasYW+75rHtkdksRvEBhDnj613c529vN944ZhRwbSLJaX+g2ksVgk4Hx
 VG8cfy3pwrtVSapwBDTBBdO0Xk0rdjeLNFDLTaxFuZ2+gU4ffhDxoGOsvKXJ2uXuFW7d
 mgFbIx0hx28WsiU3sMfj1Yi/pu49mutjhqfPSFBoIjYWnvukNKP3r8rPSxdir1cdappm
 hXWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
 :references:user-agent:mime-version;
 bh=7cYmNaB8tBxfUijaZmgw1UoRMfW7sRoT2PpTMBTSGG4=;
 b=WYtw+392VXChL9meRBfnBrMZiN/zDUHSdCuxkBwBzH2CaaHvfUWyVSRiGl3Sc+THNZ
 0KTAF6YSy5Zobkx0kWLYenDvn712vdsi41L4n9FASBruHp3Ft7HQDyjVUOa8BvHL61OG
 HU33N4ap2eOrAYvPeNkkAwBu+whlQPF1wja87I4NCVQLb3k/baunX0gquaK1wuz65Iba
 0CCDY433GGl2552wf1qa2UgUP9RvdIpW4hhANHLkz7DT+5M+z48/tC+O4aHkap1u6vrS
 9cdkPkpy94ndhxm2s3eskYy4ldAGxpYP/bkcdThOvnMq6pB82KbcAqo7D4O4iJKmh7Rn
 zf3A==
X-Gm-Message-State: APjAAAVR+U6DxhC0xUv1rARHGxQFUyhjCINyD2Viqj7OPMPdSzAoGXi7
 x97VnZa3zvR8hlMCTwTJ4POkeQ==
X-Google-Smtp-Source: APXvYqwpNFTIjcyiN9TBiaxt/UXtMu8Su4WBgSBpE9RIhPti4Ma1PZK2MvUr1uPD46MBwIC/5ndGJQ==
X-Received: by 2002:a92:dd88:: with SMTP id g8mr13351640iln.221.1571252160568; 
 Wed, 16 Oct 2019 11:56:00 -0700 (PDT)
Received: from localhost ([64.62.168.194])
 by smtp.gmail.com with ESMTPSA id 6sm15292422ion.66.2019.10.16.11.55.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 16 Oct 2019 11:55:58 -0700 (PDT)
Date: Wed, 16 Oct 2019 11:55:56 -0700 (PDT)
From: Paul Walmsley <paul.walmsley@sifive.com>
X-X-Sender: paulw@viisi.sifive.com
To: Alan Kao <alankao@andestech.com>
Subject: Re: Does sfence.vma implicitly cover what fence.i does?
In-Reply-To: <20191009085313.GA14021@andestech.com>
Message-ID: <alpine.DEB.2.21.9999.1910161153050.12675@viisi.sifive.com>
References: <20191009085313.GA14021@andestech.com>
User-Agent: Alpine 2.21.9999 (DEB 301 2018-08-15)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191016_115602_881319_D7C3BAC6 
X-CRM114-Status: UNSURE (   8.99  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:142 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-riscv@lists.infradead.org, palmer@sifive.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Hi Alan,

On Wed, 9 Oct 2019, Alan Kao wrote:

> In arch/riscv/include/asm/tlbflush.h, the comment says
> 
> > Flush entire local TLB.  'sfence.vma' implicitly fences with the instruction
> > cache as well, so a 'fence.i' is not necessary.
> 
> and in the privileged spec, it is stated that
> 
> > Executing an SFENCE.VMA instruction guarantees that any previous stores
> > already visible to the current RISC-V hart are ordered before all subsequent
> > implicit references from that hart to the memory-management data structures.
> 
> So my question is straightforward.  Is I-cache a kind of memory-management data
> structure?  am I missing something here?
> 
> Thanks for any clarification.

We just had a discussion about this with Andrew.  He clarified that 
SFENCE.VMA does not imply a FENCE.I, and we concluded that the comment in 
tlbflush.h is more confusing than helpful.  So we'll remove it:

https://lore.kernel.org/linux-riscv/alpine.DEB.2.21.9999.1910141254360.12988@viisi.sifive.com/T/#u

Thanks for bringing this up,


- Paul

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
