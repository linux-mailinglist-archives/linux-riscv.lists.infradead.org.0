Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B3FFEEBB4B
	for <lists+linux-riscv@lfdr.de>; Fri,  1 Nov 2019 00:55:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Wncx69WZSmu110dEOFX7cUwuslz7GGF2YEzxc6FbcUY=; b=FOXdWI3wNC8MEd
	aGkSmr2WQcFuHO1AobGTrq89q0DoE3bwhrpYGSUe5Uez/wx2++KKpDTES+nIV+f/LKHZZQBUACL7x
	pXQYpzlFWRBOFp2i2RXoWqKQt0jDv5FU8+cQOTsiYT1icZPgVbQ4dNNauS7mM9uZCsQR68gKJheSy
	p3Lr7kN1VZsrYUw7PwfZZ1+fEev6EoAr+tkFrb+hTVDkdjLgsUOxDKJzbykdM55QiwVgasNQFjK3Q
	oJ50aH1RBw3Af2DhzcyHk1fBjE5MTjF3t55n9FGBaAUO+qCEtuJCwbGwLGhToZqfhdMuaxUB0jBga
	kQX5rHYpkjg7Xle8T1kQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQKHc-0000rC-JN; Thu, 31 Oct 2019 23:55:16 +0000
Received: from mail-il1-x142.google.com ([2607:f8b0:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQKHZ-0000qC-8s
 for linux-riscv@lists.infradead.org; Thu, 31 Oct 2019 23:55:14 +0000
Received: by mail-il1-x142.google.com with SMTP id p8so7182312ilp.2
 for <linux-riscv@lists.infradead.org>; Thu, 31 Oct 2019 16:55:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:from:to:cc:subject:in-reply-to:message-id:references
 :user-agent:mime-version;
 bh=N5iHmlILXRbEi8EN+IUZsNyE4Ymf/VB8PmWy2Y78vP4=;
 b=l3C/2pCpaeuyWCknJRQnTKh6SlFTtCYRDRLdQ4KxJW12S9T67ROtFv1XDnteZ4c6pe
 RZMawNLPTzAJdVH58ytBFB8FjbdKER6jaVf5hBD+ZXfWPrsCt1kaeHn/kqbSdzn5G+se
 TdxXO9hz4JV8xcaq6VxA1HMHYCylImZ31fpFBx0xs1ELH7sKeePIMh9PWet8fYYcCLfr
 aNgGL3OwXekCBs5EMg/PVpVO3kZ9TLhOYd7Jm/hhnclYSHU1wCDDZhCzqM0WSDWYZg7e
 Ukv3noUisj0/t0pGlqjaNpbHhfvixS4ZMc9xkaIBaAhfDFKGbMMjAHyTcQaT4wvUMZDC
 Uvug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
 :references:user-agent:mime-version;
 bh=N5iHmlILXRbEi8EN+IUZsNyE4Ymf/VB8PmWy2Y78vP4=;
 b=eI+6peOIssUD7uXWUZrOpKW5kqN0lbZn7IZE6/TfZshUv0vd0HYRrwo32DRRucwqGw
 vyA0+t3Rtf8IMDi+dpsAOh0wrdD9/GFVR6k0nvpr4dhW0i7VpjfZcnr5cgiP5c8m0luD
 EcKuhBO1I0n1MBHv97KYhHut/nrNbdZCSw2Z1lmDZiHjU3uJ5lLmAj13imEh6b/3XMMZ
 avzVNwgz4y1PzTMus8/bgVdBTYWHq+GdzFhHxg9DYCsmtS7MNpIyKysQozbWgGGekWg2
 uh5nazj5QcChaGQTLzHNKClEWmS29Wtgv5/1e0mKH1W3yxotdiFkVvycJofXYuVZ/68P
 4P1g==
X-Gm-Message-State: APjAAAWpnaMXJMsIF1Zvh//qwCLD4CEZoW/3oefMlEJ0fZV8wYA4vtmO
 cn4Zfkopkv3TYl13JfsnT6x6aA==
X-Google-Smtp-Source: APXvYqxU4quf2N5vI+TJ+4eYesycO5XewOnq4v3en4F2cHPBfEh+mUIkSI/bOsMbiXzuQTLUnrWjQQ==
X-Received: by 2002:a92:5c5d:: with SMTP id q90mr9702452ilb.22.1572566111105; 
 Thu, 31 Oct 2019 16:55:11 -0700 (PDT)
Received: from localhost ([64.62.168.194])
 by smtp.gmail.com with ESMTPSA id g13sm494749ion.23.2019.10.31.16.55.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 31 Oct 2019 16:55:10 -0700 (PDT)
Date: Thu, 31 Oct 2019 16:55:08 -0700 (PDT)
From: Paul Walmsley <paul.walmsley@sifive.com>
X-X-Sender: paulw@viisi.sifive.com
To: Christoph Hellwig <hch@lst.de>
Subject: Re: [PATCH 03/12] riscv: poison SBI calls for M-mode
In-Reply-To: <20191028121043.22934-4-hch@lst.de>
Message-ID: <alpine.DEB.2.21.9999.1910311654570.25874@viisi.sifive.com>
References: <20191028121043.22934-1-hch@lst.de>
 <20191028121043.22934-4-hch@lst.de>
User-Agent: Alpine 2.21.9999 (DEB 301 2018-08-15)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191031_165513_379048_918DE637 
X-CRM114-Status: UNSURE (   6.96  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:142 listed in]
 [list.dnswl.org]
 0.1 URIBL_SBL_A Contains URL's A record listed in the Spamhaus SBL
 blocklist [URIs: brainfault.org]
 0.6 URIBL_SBL Contains an URL's NS IP listed in the Spamhaus SBL
 blocklist [URIs: brainfault.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Anup Patel <anup@brainfault.org>, Damien Le Moal <damien.lemoal@wdc.com>,
 Palmer Dabbelt <palmer@sifive.com>, linux-riscv@lists.infradead.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Mon, 28 Oct 2019, Christoph Hellwig wrote:

> There is no SBI when we run in M-mode, so fail the compile for any code
> trying to use SBI calls.
> 
> Signed-off-by: Christoph Hellwig <hch@lst.de>
> Reviewed-by: Anup Patel <anup@brainfault.org>

Thanks, queued for v5.5-rc.


- Paul

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
