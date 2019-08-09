Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4912A87B16
	for <lists+linux-riscv@lfdr.de>; Fri,  9 Aug 2019 15:25:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=BM0/Y1cLQrSyfth+ITBzyX/Sb2L81j2WqwPc/8PsfP8=; b=J885k8CGaeQgd9
	DzEkvGhDqf/FaDgY/Kmqr2azxXA38zB7z54uxBZHkA+i9V+bI9a+lOO93QtXfWdU2VaLvL4wuDgAp
	sRDrXiTVk2ljkoENCh7ZmjvGfuBg/IQs/SC3rz641oGcVSeSCINn2dQ6hLbzTvJYxY/VVJSVu2BxO
	ZUNGq+hjHrwrJQfxGymrG8b8tXtRFEDFbSKSjmK+bqL7ePamCvLiZHY9X4D7RwrlN/OS2j3dNqRK9
	whHJX/i/oiOknAjevjB1XA5ssKyTMZMH16X8qbbaX0CZyRoGjDfxM+uQ4hIf/3B6Ly9QKvzI+JWNq
	LQy17yxJrz7jul0yX+rg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hw4tA-0002lG-Ry; Fri, 09 Aug 2019 13:25:00 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hw4t7-0002kP-MM
 for linux-riscv@lists.infradead.org; Fri, 09 Aug 2019 13:24:58 +0000
Received: by mail-wm1-x344.google.com with SMTP id p74so5716959wme.4
 for <linux-riscv@lists.infradead.org>; Fri, 09 Aug 2019 06:24:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition
 :user-agent; bh=ILDppnCmjlOfgJgJ2qNB5ceciycNxLir06qMezCpixc=;
 b=eZT+w59UUZFyL2cCRDMRHbuHDIC4RKWJEJrzCdA8oNEb6thqLiNew7cw7jfP0Phi7J
 f+FMHqlAI16KHYSE0ibaSbNqX+dizyMIqiEEEwVV3QIwtMbLv02nJ5CQvVYuUxBXR/VF
 0l8m7qMLUqGDNtWlKpHhxIRJJCdztftGKS301K7JgJ9CsKj+RKbbSLvjJbF6EvypPIlT
 HsPE+Gv/ODbYaM22lNsT33zTECWqnV3KUF3jwZLDkWtami3ij+fUi6/LQnR9Ht9Jh4VY
 781LpF4t7NA2AHAViDrw8v0kl+ezWbfaOn0hkp/rN6EGmJL4j/dHpKgmfceU6/hl+c7n
 e7ug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=ILDppnCmjlOfgJgJ2qNB5ceciycNxLir06qMezCpixc=;
 b=X5pFAf7M/ivhrNz5sT8q35joBafzWSWL1yF0ws0oQKFSK2jVJgbdqy4djdSZ7Dnk2G
 Jmtg7P0SQfYw4MzNL9Td/TsvDuDx3xBs3rtLrDNysG3DU7J6vJ9NxF9pPrQ3wK8q9QWf
 6V5UO/mg/ITDHVvFYOYn4suh8wLK47jdlgPUv/K7FSePPDCH5f2OcEyL1iIgt80hQsav
 49/dsV48zkqEdzR4Thn0mRzWvEwx4X2DLY9eRypbFe8UZfHhBCuwB09+c7WSlnKzLbZd
 iTMb3vnlIN17aN53uW6N4OBSA4iH5i4Igy9bxPHaL9PFoRg+UaVGO+9M9BrKbMyzIM6Z
 AGgg==
X-Gm-Message-State: APjAAAVnfn6kty4booFkMPYEPodmF9mXGYXyx0j375dCxS0fy6UwbGgq
 gaK55mRmc9QaqDEbgPdYr+4=
X-Google-Smtp-Source: APXvYqyoIq7cQyCyqyaTH2fo4y1zxmmZ+SxcwfcCyTtt3q94bYPWzefG8vVhK4GVKNwWCIJEWnX5Vw==
X-Received: by 2002:a1c:ab06:: with SMTP id u6mr10757190wme.125.1565357095875; 
 Fri, 09 Aug 2019 06:24:55 -0700 (PDT)
Received: from localhost ([197.211.57.145])
 by smtp.gmail.com with ESMTPSA id a2sm4863912wmj.9.2019.08.09.06.24.50
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Fri, 09 Aug 2019 06:24:55 -0700 (PDT)
Date: Fri, 9 Aug 2019 14:23:49 +0100
From: Sheriff Esseson <sheriffesseson@gmail.com>
To: skhan@linuxfoundation.org
Subject: [PATCH v2] Documentation: virt: Fix broken reference to virt tree's
 index
Message-ID: <20190809132349.GA15460@localhost>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190809_062457_734628_F0EBB48C 
X-CRM114-Status: GOOD (  10.11  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sheriffesseson[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Song Liu <songliubraving@fb.com>, Albert Ou <aou@eecs.berkeley.edu>,
 "open list:BPF \(Safe dynamic programs and tools\)" <bpf@vger.kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>, Jonathan Corbet <corbet@lwn.net>,
 "open list:BPF \(Safe dynamic programs and tools\)" <netdev@vger.kernel.org>,
 Palmer Dabbelt <palmer@sifive.com>,
 "open list:DOCUMENTATION" <linux-doc@vger.kernel.org>,
 Alexei Starovoitov <ast@kernel.org>, open list <linux-kernel@vger.kernel.org>,
 Paul Walmsley <paul.walmsley@sifive.com>, Yonghong Song <yhs@fb.com>,
 "open list:RISC-V ARCHITECTURE" <linux-riscv@lists.infradead.org>,
 linux-kernel-mentees@lists.linuxfoundation.org,
 Martin KaFai Lau <kafai@fb.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Fix broken reference to virt/index.rst.

Fixes: 2f5947dfcaec ("Documentation: move Documentation/virtual to
Documentation/virt")

Signed-off-by: Sheriff Esseson <sheriffesseson@gmail.com>
---

Changes in v2:
	- Fix patch description. 

 Documentation/index.rst | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/index.rst b/Documentation/index.rst
index 2df5a3da563c..5205430305d5 100644
--- a/Documentation/index.rst
+++ b/Documentation/index.rst
@@ -115,7 +115,7 @@ needed).
    target/index
    timers/index
    watchdog/index
-   virtual/index
+   virt/index
    input/index
    hwmon/index
    gpu/index
-- 
2.17.1


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
