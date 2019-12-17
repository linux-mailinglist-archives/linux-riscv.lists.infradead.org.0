Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D759B123181
	for <lists+linux-riscv@lfdr.de>; Tue, 17 Dec 2019 17:16:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=CZrp8UQQ+bj1ts8a/GF/7XEl3PQrDG+nT1WZvWpq3rU=; b=a8xd1O6vRqy9v2
	bjFlDf50jqfDphI9tUNorbhvDTrLTiNP/oQbttIUjG2XA1t64fKgmmwcjZf806+sn0Jh50SWA7vgI
	XJbqqMTIYf9a0oY0NsrpblMCevgrXUnuuTrD6ga6/DEpWnhZnuwOXPLnszQtvuObhrBOEtYQjZv2b
	IyOiIWchFi/nCC/uKetJCb0kPJFMudffazP7E9FUz6h9ncP2hcYZCGQOrKv8lU4m0uftZpgSHvTr6
	L0OsV08vYEszaeXhDM1HfNIzS4BOaiWUA/ZIiFHYqNalTiY13qPA4Nq19Kq5RjZZtyQvYC978d0HO
	zDZzi3y3j8Dju0TjTO4Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihFVr-0008MB-IX; Tue, 17 Dec 2019 16:15:55 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihFVo-0008L6-Uo
 for linux-riscv@lists.infradead.org; Tue, 17 Dec 2019 16:15:54 +0000
Received: by mail-pl1-x643.google.com with SMTP id b22so3378926pls.12
 for <linux-riscv@lists.infradead.org>; Tue, 17 Dec 2019 08:15:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=CZrp8UQQ+bj1ts8a/GF/7XEl3PQrDG+nT1WZvWpq3rU=;
 b=ElECYMtBZrjFvxUHRBwyhYr5cB2bkw1bFyOwZFb0Co8YbMQh1sOaOIWqnnAufDE3iN
 zuUHWh27aaD86ekJA8WIqAVyJ+MhhEXpIYhymS8vUsjkuABzSXFR+wS47PnqxgpZ4i/1
 Lv6MpQzcUayUOX/m6RgVbqKZB26xKyv2OBmimMy3dzXWkw0o30zzQ97opWZ3h5ULU0ZE
 iPVwg/WHbTgScdQb8xnitqtLzV3RzMTQ2J2IMHPrBt7WNa9HD3ZYuOh0N79qR16jRSwZ
 Zxdh5E6l61Fk+dzWCsgdwaBHtAlFqVrx7Wb/VJBXvcDNgEBFjcbyjDWShvNPCqdv7ZK8
 enuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=CZrp8UQQ+bj1ts8a/GF/7XEl3PQrDG+nT1WZvWpq3rU=;
 b=OHFpRbTsHlWM+YkmAykeAtHI9qBiSx13gwMAQniiM01oVTnCOpryM5xULvoBdxy8m7
 pqBcFPWKWx0EBd5hDMBzorc+zz83cc+pX6UWleJ6acSNULMSDRY/em4rrK05p4Wt2HVM
 vWaQJcNPgrrls/ioK4Q+ixlqilHyX6TdHQ0x/s+pfnuwU2f4F02cyu6KXcSFrOZ4/GJt
 22MRuoZpx9xC5aGoDKYzofI53ukbInOOpUxJX51G7OsRCRzto/peQecHNqVN/6AYEQ68
 X/VHwOEV196daz4v8gYa4sC8giXgIQUNSZ4+I+dHiQCNhjDBHkg0uVVDZq3WHfzDumfr
 vr5g==
X-Gm-Message-State: APjAAAUuCmu9EHYWZMYH0WYJml7J3rlkfES9E1HwGadUurzbuImsUjgy
 qpbmDHHIzKq7g0nVtiZDqEEXItMi7co=
X-Google-Smtp-Source: APXvYqyIekrKyUdm7+MOpp/lryRy6OV5UID6PpLqjzjTibQ1QruJuc89eTrWbhjtW8+MHpFU6P8mzQ==
X-Received: by 2002:a17:902:6b09:: with SMTP id
 o9mr13938481plk.209.1576599349747; 
 Tue, 17 Dec 2019 08:15:49 -0800 (PST)
Received: from glados.lan ([2601:647:4c01:6541:fa16:54ff:fed1:1bd6])
 by smtp.gmail.com with ESMTPSA id k15sm27704122pfg.37.2019.12.17.08.15.48
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 17 Dec 2019 08:15:48 -0800 (PST)
From: Thomas Hebb <tommyhebb@gmail.com>
To: linux-kernel@vger.kernel.org,
	linux-kbuild@vger.kernel.org
Subject: [PATCH v2 0/3] kconfig: rework symbol help text
Date: Tue, 17 Dec 2019 08:15:42 -0800
Message-Id: <cover.1576599202.git.tommyhebb@gmail.com>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191217_081552_995078_AA2C9F90 
X-CRM114-Status: UNSURE (   9.46  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (tommyhebb[at]gmail.com)
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
Cc: Masahiro Yamada <masahiroy@kernel.org>, Thomas Hebb <tommyhebb@gmail.com>,
 Palmer Dabbelt <palmer@dabbelt.com>, linux-riscv@lists.infradead.org,
 Paul Walmsley <paul.walmsley@sifive.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

This series fixes several issues with help text generated by Kconfig,
mainly affecting symbols that are defined in multiple places. Although
results of these patches are somewhat visible for the symbols in Linux,
what prompted me to write the series was working on U-Boot, which also
uses Kconfig and makes very heavy use of multiple definitions (e.g. for
overriding defaults). I have provided Linux examples where I could find
them, but the example for the biggest patch (the first one) is taken
from U-Boot because it was more illustrative than anything I could find
in Linux.

Changes in v2:
- Added explicit U-Boot version in commit message + other rewordings
- Made the new "Depends on:" line print actual dependencies instead of
  visibility to avoid an intra-series regression, and noted that in the
  commit message.
- Get rid of redundant "with prompt" and "without prompt" notes in
  definition text, but continue to ensure that definitions with prompts
  are printed before ones without.
- Fixed checkpatch issues
- Omit already-merged patch "kconfig: don't crash on NULL expressions in
  expr_eq()"

Thomas Hebb (3):
  kconfig: list all definitions of a symbol in help text
  kconfig: distinguish between dependencies and visibility in help text
  kconfig: fix nesting of symbol help text

 scripts/kconfig/expr.c |  3 +-
 scripts/kconfig/expr.h |  1 +
 scripts/kconfig/menu.c | 82 +++++++++++++++++++++++++-----------------
 3 files changed, 52 insertions(+), 34 deletions(-)

-- 
2.24.1


