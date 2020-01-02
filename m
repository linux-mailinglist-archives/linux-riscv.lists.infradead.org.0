Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B6B312E24B
	for <lists+linux-riscv@lfdr.de>; Thu,  2 Jan 2020 05:15:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=CVJyLIJlyzyIsfGFqktPVcu6xkYJBJCCJvQZrRch0yg=; b=qYbvH7m6xmw/JC
	t/gixlXNinewsu5s/7ujIkt2KplMcJotHieWr79Hf+n52HrthVunX4t7qtjtEcNT90A9nQXWyYUyW
	pezLtU2hdg+eN9qo34/EX67jPGiohkYLXDKk9tKaYSY85ZzndKxEq5y6QyatB73yu0sfWGNIMdMq5
	Cc6lHPJQdZVMmO2nxs2y9MZPdQUt0mRwogQbYpZ7J2CKYJxpY+5NohqDRdebWeLzdsYIkEJpUbcN5
	u6kwRLrp8ymI6I8vwEQWWF522ixlc09Cn8NJmkI5/Q0GkZWtKacGV/hE987KRomRiYrEDtgdgWNPB
	TboCvEQr4LU2aNP60TVA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1imrtD-0002u9-JJ; Thu, 02 Jan 2020 04:15:15 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1imrso-0002c3-UG
 for linux-riscv@lists.infradead.org; Thu, 02 Jan 2020 04:14:54 +0000
Received: by mail-pf1-x443.google.com with SMTP id q10so21464533pfs.6
 for <linux-riscv@lists.infradead.org>; Wed, 01 Jan 2020 20:14:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=CVJyLIJlyzyIsfGFqktPVcu6xkYJBJCCJvQZrRch0yg=;
 b=XMQhnmkwvdV2wjNx6x8J51g/Xa7k3567jdmjC3ntNFMi83hUqZF2qqMCeJ4TZxZ2bB
 VmjWzDF8ZNHsZA+ZxGHfD2wyKZgLs+eu5j/qWrw/TrMZa1emW/8vUuGrMQnbxRQrPJiV
 3f+Xcni3Gi/2OARKG9Z7le0mjVAkCvmydW2CPrTFQSUp7RVm+gycXB/gJB5Gp8D7OlSH
 oSmJP1pXJsqqv+cG/cNMNw3mDvw/ReVo0HMqp5AI3BnhVGn9v4IzI28mczmxoavbgj1N
 lWHFD41tijcTPmPiY2pKkMcjAc+hQGVHfIofktWSiYlHLqlYHDPl9dOd/NiOPc2n9L21
 uC9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=CVJyLIJlyzyIsfGFqktPVcu6xkYJBJCCJvQZrRch0yg=;
 b=f+x1Dnj+Hjtz0WL2CbsSVUCLzxRKHDVJmZhLyuEs6r79efIAUQHmwa8vK38kNQpAJV
 jDqo7WN5ncKutcCfzcDn8RPff37hVSUDD+2vivBJxwja+iuJCiGm4RdkzqvwbsW2SMG3
 +OBEXl01WfduAV1vvocL+b3yybg0U0boIjR1fL1vq6JCbVERYnGNVT5+ThwqXF/rbXVw
 XwPHBT37q7o1iHETz3Bcoxif/naNLsdZX/wlSzBDP5NPHHkT7GA5aJjXEg+2KZPVSX0s
 h7dmbei0qfLSFUDbrhCgWahfLTAXApWulWhGXWuPux3PZdp29OBH/cRHrOhfj/wEwTQV
 1M7g==
X-Gm-Message-State: APjAAAX9iZt3MvGedYpmACMCmFq9bv/NLhYfgEluOLe/xPRRqPiZftaP
 F4yObSYTjIi7TZ5oEm7mBVJPyzwNuUc=
X-Google-Smtp-Source: APXvYqyHtz4yoWif8cwTQc0pKIJlw7G0c8aH5It4yZeh8zfBsW0BBhcu76XrY3B9xYJe0ile17tFHQ==
X-Received: by 2002:aa7:968d:: with SMTP id f13mr84085549pfk.67.1577938489514; 
 Wed, 01 Jan 2020 20:14:49 -0800 (PST)
Received: from hsinchu02.internal.sifive.com
 (220-132-236-182.HINET-IP.hinet.net. [220.132.236.182])
 by smtp.gmail.com with ESMTPSA id i127sm63870336pfc.55.2020.01.01.20.14.47
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 01 Jan 2020 20:14:49 -0800 (PST)
From: Zong Li <zong.li@sifive.com>
To: corbet@lwn.net, paul.walmsley@sifive.com, palmer@dabbelt.com,
 aou@eecs.berkeley.edu, anup@brainfault.org, linux-doc@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org
Subject: [PATCH v2 0/2] Enable gcov for RISC-V
Date: Thu,  2 Jan 2020 12:14:43 +0800
Message-Id: <20200102041445.98195-1-zong.li@sifive.com>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200101_201451_191759_257A8577 
X-CRM114-Status: UNSURE (   6.12  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Zong Li <zong.li@sifive.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

These patches enable GCOV code coverage measurement on RISC-V and update
the status of RISC-V arch in documentation.

Lightly tested on QEMU and Hifive Unleashed board, seems to work as
expected.

Changes in v2:
 - Split into two patches for kconfig and documentation respectively.

Zong Li (2):
  riscv: gcov: enable gcov for RISC-V
  Documentation/features: support gcov on RISC-V

 Documentation/features/debug/gcov-profile-all/arch-support.txt | 2 +-
 arch/riscv/Kconfig                                             | 1 +
 2 files changed, 2 insertions(+), 1 deletion(-)

-- 
2.24.1


