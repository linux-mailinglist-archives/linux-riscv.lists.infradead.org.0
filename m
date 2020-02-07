Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FF25155518
	for <lists+linux-riscv@lfdr.de>; Fri,  7 Feb 2020 10:53:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=zMYeHp7izR4Rb+xnGWV9UyZpsqdqC4NZ7xAtUKg6nOo=; b=TblkzY9WYHf7tu
	NjIl6HjB0H2oBcmvjOsvBmwHwHL4SRYq2P1f9sRdE3J+9ce2hJrIHKPm2ubhnWg4iXv1ktCK5uSZY
	tMuw+pVYsQXzX7DCjIqqljavpzDv4nhVMIviSjukRRU4LQDOgu1E7q7KXjb2Rn2+quYMukcK05o0A
	4TQmTox3Nrkf2r5QeMpHEC1KXvbH+FDKBisw9CrE5tYzmkapTKO+b8R+wrdMCYCIoMIRZVUtBP0+H
	5nzmmeyNbpifM7iTcyERN/KTF80w0OaXD8YqEmuu1DdRDBM/Ggr4X23TLtuDa74YSplm16+GaaxD0
	UdZ3xb/6KiMPiE0yEQfA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j00Jj-0002tO-GQ; Fri, 07 Feb 2020 09:52:55 +0000
Received: from mail-pf1-x433.google.com ([2607:f8b0:4864:20::433])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j00Jf-0002sU-J0
 for linux-riscv@lists.infradead.org; Fri, 07 Feb 2020 09:52:53 +0000
Received: by mail-pf1-x433.google.com with SMTP id j9so1001861pfa.8
 for <linux-riscv@lists.infradead.org>; Fri, 07 Feb 2020 01:52:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=zMYeHp7izR4Rb+xnGWV9UyZpsqdqC4NZ7xAtUKg6nOo=;
 b=dZsSCFPZ6VJiIDvAbOx4Ve2EgnwGRXr46b6Y1/xwbiLJvTF5vygoQCqnkbsBrcvGov
 Bcwx38z3A+tY5HBT2Q9jU7pbvCmkXxe7FXJsOTwgQP872c46YUBTPbDRfTmZMSJRwSLO
 oloeKyRxz4FyfqxIdncKLha8rEWZ/7efv5WBzL3cpwh1Q0CQl/VuuHXmvKrmx2x/eLEr
 ULHlbbpsliyF78QTJk1aDfMB1fPejrsuN0rf0dt5KINdsJ4h6VltGbm9cxEy1SDnWtUo
 Pf54CclxtPYULjx5Vdh4T90InxpgK5Xa5KGfQL3MZeGni5+0VG/+7QUF/SfzDWJPSeuQ
 1kfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=zMYeHp7izR4Rb+xnGWV9UyZpsqdqC4NZ7xAtUKg6nOo=;
 b=HiWkGpdkONrEjXsbq4dFkmm3MO7fABLjEUq2qvHoDTpwood6UC4Mq0mA/MUYlJ5P/k
 dSFrX1irsGRwMV1UPlgcYwhx/hNT4+xYStVxVWo4szlJSU+8bCGYaZ4jdCf/f9CXO1Fn
 51jBb54x//OYV6uhTb6FygL1veicepG5KHdWTm+bcfXNDHHpPPc1VX6NM8ajKEaky2yo
 s1GWtcbLtkD6g5J8lmex8RHtAFPs3n2LjKIAe4lc2glhuqm6KPlcR5LEZQ59K5sqrB0p
 JpThJVGas1Mr1PJmmfwl5+ScwzbaPslOogfW02y2BSLyTNloQ0/+bG60xNFk4wYITZHi
 OZcQ==
X-Gm-Message-State: APjAAAVf1DthaXRmC4RAkTSfbOXYjocqUHcH/baV4xUeeTv1MzSyUpak
 04C2E1gLt9ej2knt8+8RgWZWJDa+OJs=
X-Google-Smtp-Source: APXvYqwc+9MWfFdCvGYIjKIg008oiz/1mXx5sSVztqfuEmUvdF/+sXiLCabKvglhpVvpCaC28PNY8A==
X-Received: by 2002:aa7:820d:: with SMTP id k13mr9337393pfi.10.1581069170055; 
 Fri, 07 Feb 2020 01:52:50 -0800 (PST)
Received: from hsinchu02.internal.sifive.com
 (220-132-236-182.HINET-IP.hinet.net. [220.132.236.182])
 by smtp.gmail.com with ESMTPSA id s23sm2060934pjq.17.2020.02.07.01.52.48
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 07 Feb 2020 01:52:49 -0800 (PST)
From: Zong Li <zong.li@sifive.com>
To: paul.walmsley@sifive.com, palmer@dabbelt.com, aou@eecs.berkeley.edu,
 linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH 0/2] Fix the page table size of KASAN use.
Date: Fri,  7 Feb 2020 17:52:43 +0800
Message-Id: <20200207095245.21955-1-zong.li@sifive.com>
X-Mailer: git-send-email 2.25.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200207_015252_377637_9FA48DCD 
X-CRM114-Status: UNSURE (   5.19  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:433 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Zong Li <zong.li@sifive.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Each page table should be created by allocating a complete page size
for it. Otherwise, the content of the page table would be corrupted
somewhere through memory allocation which allocates the memory at the
middle of the page table for other use. For example, if it only
allocates 200 pmd entries memory size for pmd page table, then the
original 201 entry will be used to other purpose, and cause the
unexpected fault when accessing the page table.

Zong Li (2):
  riscv: allocate a complete page size for each page table
  riscv: adjust the indent

 arch/riscv/mm/kasan_init.c | 53 ++++++++++++++++++++++----------------
 1 file changed, 31 insertions(+), 22 deletions(-)

-- 
2.25.0


